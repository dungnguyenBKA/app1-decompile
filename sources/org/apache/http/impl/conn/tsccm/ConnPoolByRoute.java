package org.apache.http.impl.conn.tsccm;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ConnectionPoolTimeoutException;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRoute;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.HttpParams;

@ThreadSafe
public class ConnPoolByRoute extends AbstractConnPool {
    protected final ConnPerRoute connPerRoute;
    private final long connTTL;
    private final TimeUnit connTTLTimeUnit;
    protected final Queue<BasicPoolEntry> freeConnections;
    protected final Set<BasicPoolEntry> leasedConnections;
    private final Log log;
    protected volatile int maxTotalConnections;
    protected volatile int numConnections;
    protected final ClientConnectionOperator operator;
    private final Lock poolLock;
    protected final Map<HttpRoute, RouteSpecificPool> routeToPool;
    protected volatile boolean shutdown;
    protected final Queue<WaitingThread> waitingThreads;

    public ConnPoolByRoute(ClientConnectionOperator clientConnectionOperator, ConnPerRoute connPerRoute2, int i) {
        this(clientConnectionOperator, connPerRoute2, i, -1, TimeUnit.MILLISECONDS);
    }

    private void closeConnection(BasicPoolEntry basicPoolEntry) {
        OperatedClientConnection connection = basicPoolEntry.getConnection();
        if (connection != null) {
            try {
                connection.close();
            } catch (IOException e) {
                this.log.debug("I/O error closing connection", e);
            }
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void closeExpiredConnections() {
        this.log.debug("Closing expired connections");
        long currentTimeMillis = System.currentTimeMillis();
        this.poolLock.lock();
        try {
            Iterator<BasicPoolEntry> it = this.freeConnections.iterator();
            while (it.hasNext()) {
                BasicPoolEntry next = it.next();
                if (next.isExpired(currentTimeMillis)) {
                    if (this.log.isDebugEnabled()) {
                        Log log2 = this.log;
                        log2.debug("Closing connection expired @ " + new Date(next.getExpiry()));
                    }
                    it.remove();
                    deleteEntry(next);
                }
            }
        } finally {
            this.poolLock.unlock();
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        if (timeUnit != null) {
            if (j < 0) {
                j = 0;
            }
            if (this.log.isDebugEnabled()) {
                this.log.debug("Closing connections idle longer than " + j + " " + timeUnit);
            }
            long currentTimeMillis = System.currentTimeMillis() - timeUnit.toMillis(j);
            this.poolLock.lock();
            try {
                Iterator<BasicPoolEntry> it = this.freeConnections.iterator();
                while (it.hasNext()) {
                    BasicPoolEntry next = it.next();
                    if (next.getUpdated() <= currentTimeMillis) {
                        if (this.log.isDebugEnabled()) {
                            this.log.debug("Closing connection last used @ " + new Date(next.getUpdated()));
                        }
                        it.remove();
                        deleteEntry(next);
                    }
                }
            } finally {
                this.poolLock.unlock();
            }
        } else {
            throw new IllegalArgumentException("Time unit must not be null.");
        }
    }

    /* access modifiers changed from: protected */
    public BasicPoolEntry createEntry(RouteSpecificPool routeSpecificPool, ClientConnectionOperator clientConnectionOperator) {
        if (this.log.isDebugEnabled()) {
            Log log2 = this.log;
            StringBuilder q = ic.q("Creating new connection [");
            q.append(routeSpecificPool.getRoute());
            q.append("]");
            log2.debug(q.toString());
        }
        BasicPoolEntry basicPoolEntry = new BasicPoolEntry(clientConnectionOperator, routeSpecificPool.getRoute(), this.connTTL, this.connTTLTimeUnit);
        this.poolLock.lock();
        try {
            routeSpecificPool.createdEntry(basicPoolEntry);
            this.numConnections++;
            this.leasedConnections.add(basicPoolEntry);
            return basicPoolEntry;
        } finally {
            this.poolLock.unlock();
        }
    }

    /* access modifiers changed from: protected */
    public Queue<BasicPoolEntry> createFreeConnQueue() {
        return new LinkedList();
    }

    /* access modifiers changed from: protected */
    public Map<HttpRoute, RouteSpecificPool> createRouteToPoolMap() {
        return new HashMap();
    }

    /* access modifiers changed from: protected */
    public Queue<WaitingThread> createWaitingThreadQueue() {
        return new LinkedList();
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void deleteClosedConnections() {
        this.poolLock.lock();
        try {
            Iterator<BasicPoolEntry> it = this.freeConnections.iterator();
            while (it.hasNext()) {
                BasicPoolEntry next = it.next();
                if (!next.getConnection().isOpen()) {
                    it.remove();
                    deleteEntry(next);
                }
            }
        } finally {
            this.poolLock.unlock();
        }
    }

    /* access modifiers changed from: protected */
    public void deleteEntry(BasicPoolEntry basicPoolEntry) {
        HttpRoute plannedRoute = basicPoolEntry.getPlannedRoute();
        if (this.log.isDebugEnabled()) {
            this.log.debug("Deleting connection [" + plannedRoute + "][" + basicPoolEntry.getState() + "]");
        }
        this.poolLock.lock();
        try {
            closeConnection(basicPoolEntry);
            RouteSpecificPool routePool = getRoutePool(plannedRoute, true);
            routePool.deleteEntry(basicPoolEntry);
            this.numConnections--;
            if (routePool.isUnused()) {
                this.routeToPool.remove(plannedRoute);
            }
        } finally {
            this.poolLock.unlock();
        }
    }

    /* access modifiers changed from: protected */
    public void deleteLeastUsedEntry() {
        this.poolLock.lock();
        try {
            BasicPoolEntry remove = this.freeConnections.remove();
            if (remove != null) {
                deleteEntry(remove);
            } else if (this.log.isDebugEnabled()) {
                this.log.debug("No free connection to delete");
            }
        } finally {
            this.poolLock.unlock();
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void freeEntry(BasicPoolEntry basicPoolEntry, boolean z, long j, TimeUnit timeUnit) {
        String str;
        HttpRoute plannedRoute = basicPoolEntry.getPlannedRoute();
        if (this.log.isDebugEnabled()) {
            this.log.debug("Releasing connection [" + plannedRoute + "][" + basicPoolEntry.getState() + "]");
        }
        this.poolLock.lock();
        try {
            if (this.shutdown) {
                closeConnection(basicPoolEntry);
                return;
            }
            this.leasedConnections.remove(basicPoolEntry);
            RouteSpecificPool routePool = getRoutePool(plannedRoute, true);
            if (z) {
                if (this.log.isDebugEnabled()) {
                    if (j > 0) {
                        str = "for " + j + " " + timeUnit;
                    } else {
                        str = "indefinitely";
                    }
                    this.log.debug("Pooling connection [" + plannedRoute + "][" + basicPoolEntry.getState() + "]; keep alive " + str);
                }
                routePool.freeEntry(basicPoolEntry);
                basicPoolEntry.updateExpiry(j, timeUnit);
                this.freeConnections.add(basicPoolEntry);
            } else {
                routePool.dropEntry();
                this.numConnections--;
            }
            notifyWaitingThread(routePool);
            this.poolLock.unlock();
        } finally {
            this.poolLock.unlock();
        }
    }

    public int getConnectionsInPool(HttpRoute httpRoute) {
        this.poolLock.lock();
        int i = 0;
        try {
            RouteSpecificPool routePool = getRoutePool(httpRoute, false);
            if (routePool != null) {
                i = routePool.getEntryCount();
            }
            return i;
        } finally {
            this.poolLock.unlock();
        }
    }

    /* access modifiers changed from: protected */
    public BasicPoolEntry getEntryBlocking(HttpRoute httpRoute, Object obj, long j, TimeUnit timeUnit, WaitingThreadAborter waitingThreadAborter) {
        BasicPoolEntry basicPoolEntry = null;
        Date date = j > 0 ? new Date(timeUnit.toMillis(j) + System.currentTimeMillis()) : null;
        this.poolLock.lock();
        try {
            RouteSpecificPool routePool = getRoutePool(httpRoute, true);
            WaitingThread waitingThread = null;
            while (basicPoolEntry == null) {
                if (!this.shutdown) {
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("[" + httpRoute + "] total kept alive: " + this.freeConnections.size() + ", total issued: " + this.leasedConnections.size() + ", total allocated: " + this.numConnections + " out of " + this.maxTotalConnections);
                    }
                    basicPoolEntry = getFreeEntry(routePool, obj);
                    if (basicPoolEntry != null) {
                        break;
                    }
                    boolean z = routePool.getCapacity() > 0;
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("Available capacity: " + routePool.getCapacity() + " out of " + routePool.getMaxEntries() + " [" + httpRoute + "][" + obj + "]");
                    }
                    if (z && this.numConnections < this.maxTotalConnections) {
                        basicPoolEntry = createEntry(routePool, this.operator);
                    } else if (!z || this.freeConnections.isEmpty()) {
                        if (this.log.isDebugEnabled()) {
                            this.log.debug("Need to wait for connection [" + httpRoute + "][" + obj + "]");
                        }
                        if (waitingThread == null) {
                            waitingThread = newWaitingThread(this.poolLock.newCondition(), routePool);
                            waitingThreadAborter.setWaitingThread(waitingThread);
                        }
                        try {
                            routePool.queueThread(waitingThread);
                            this.waitingThreads.add(waitingThread);
                            if (!waitingThread.await(date) && date != null && date.getTime() <= System.currentTimeMillis()) {
                                throw new ConnectionPoolTimeoutException("Timeout waiting for connection");
                            }
                        } finally {
                            routePool.removeThread(waitingThread);
                            this.waitingThreads.remove(waitingThread);
                        }
                    } else {
                        deleteLeastUsedEntry();
                        routePool = getRoutePool(httpRoute, true);
                        basicPoolEntry = createEntry(routePool, this.operator);
                    }
                } else {
                    throw new IllegalStateException("Connection pool shut down");
                }
            }
            return basicPoolEntry;
        } finally {
            this.poolLock.unlock();
        }
    }

    /* access modifiers changed from: protected */
    public BasicPoolEntry getFreeEntry(RouteSpecificPool routeSpecificPool, Object obj) {
        this.poolLock.lock();
        boolean z = false;
        BasicPoolEntry basicPoolEntry = null;
        while (!z) {
            try {
                basicPoolEntry = routeSpecificPool.allocEntry(obj);
                if (basicPoolEntry != null) {
                    if (this.log.isDebugEnabled()) {
                        this.log.debug("Getting free connection [" + routeSpecificPool.getRoute() + "][" + obj + "]");
                    }
                    this.freeConnections.remove(basicPoolEntry);
                    if (basicPoolEntry.isExpired(System.currentTimeMillis())) {
                        if (this.log.isDebugEnabled()) {
                            this.log.debug("Closing expired free connection [" + routeSpecificPool.getRoute() + "][" + obj + "]");
                        }
                        closeConnection(basicPoolEntry);
                        routeSpecificPool.dropEntry();
                        this.numConnections--;
                    } else {
                        this.leasedConnections.add(basicPoolEntry);
                    }
                } else if (this.log.isDebugEnabled()) {
                    this.log.debug("No free connections [" + routeSpecificPool.getRoute() + "][" + obj + "]");
                }
                z = true;
            } catch (Throwable th) {
                this.poolLock.unlock();
                throw th;
            }
        }
        this.poolLock.unlock();
        return basicPoolEntry;
    }

    /* access modifiers changed from: protected */
    public Lock getLock() {
        return this.poolLock;
    }

    public int getMaxTotalConnections() {
        return this.maxTotalConnections;
    }

    /* access modifiers changed from: protected */
    public RouteSpecificPool getRoutePool(HttpRoute httpRoute, boolean z) {
        this.poolLock.lock();
        try {
            RouteSpecificPool routeSpecificPool = this.routeToPool.get(httpRoute);
            if (routeSpecificPool == null && z) {
                routeSpecificPool = newRouteSpecificPool(httpRoute);
                this.routeToPool.put(httpRoute, routeSpecificPool);
            }
            return routeSpecificPool;
        } finally {
            this.poolLock.unlock();
        }
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void handleLostEntry(HttpRoute httpRoute) {
        this.poolLock.lock();
        try {
            RouteSpecificPool routePool = getRoutePool(httpRoute, true);
            routePool.dropEntry();
            if (routePool.isUnused()) {
                this.routeToPool.remove(httpRoute);
            }
            this.numConnections--;
            notifyWaitingThread(routePool);
        } finally {
            this.poolLock.unlock();
        }
    }

    /* access modifiers changed from: protected */
    public RouteSpecificPool newRouteSpecificPool(HttpRoute httpRoute) {
        return new RouteSpecificPool(httpRoute, this.connPerRoute);
    }

    /* access modifiers changed from: protected */
    public WaitingThread newWaitingThread(Condition condition, RouteSpecificPool routeSpecificPool) {
        return new WaitingThread(condition, routeSpecificPool);
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x006b A[Catch:{ all -> 0x0074 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void notifyWaitingThread(org.apache.http.impl.conn.tsccm.RouteSpecificPool r4) {
        /*
        // Method dump skipped, instructions count: 123
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.conn.tsccm.ConnPoolByRoute.notifyWaitingThread(org.apache.http.impl.conn.tsccm.RouteSpecificPool):void");
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public PoolEntryRequest requestPoolEntry(final HttpRoute httpRoute, final Object obj) {
        final WaitingThreadAborter waitingThreadAborter = new WaitingThreadAborter();
        return new PoolEntryRequest() {
            /* class org.apache.http.impl.conn.tsccm.ConnPoolByRoute.AnonymousClass1 */

            @Override // org.apache.http.impl.conn.tsccm.PoolEntryRequest
            public void abortRequest() {
                ConnPoolByRoute.this.poolLock.lock();
                try {
                    waitingThreadAborter.abort();
                } finally {
                    ConnPoolByRoute.this.poolLock.unlock();
                }
            }

            @Override // org.apache.http.impl.conn.tsccm.PoolEntryRequest
            public BasicPoolEntry getPoolEntry(long j, TimeUnit timeUnit) {
                return ConnPoolByRoute.this.getEntryBlocking(httpRoute, obj, j, timeUnit, waitingThreadAborter);
            }
        };
    }

    public void setMaxTotalConnections(int i) {
        this.poolLock.lock();
        try {
            this.maxTotalConnections = i;
        } finally {
            this.poolLock.unlock();
        }
    }

    @Override // org.apache.http.impl.conn.tsccm.AbstractConnPool
    public void shutdown() {
        this.poolLock.lock();
        try {
            if (!this.shutdown) {
                this.shutdown = true;
                Iterator<BasicPoolEntry> it = this.leasedConnections.iterator();
                while (it.hasNext()) {
                    it.remove();
                    closeConnection(it.next());
                }
                Iterator<BasicPoolEntry> it2 = this.freeConnections.iterator();
                while (it2.hasNext()) {
                    BasicPoolEntry next = it2.next();
                    it2.remove();
                    if (this.log.isDebugEnabled()) {
                        Log log2 = this.log;
                        log2.debug("Closing connection [" + next.getPlannedRoute() + "][" + next.getState() + "]");
                    }
                    closeConnection(next);
                }
                Iterator<WaitingThread> it3 = this.waitingThreads.iterator();
                while (it3.hasNext()) {
                    it3.remove();
                    it3.next().wakeup();
                }
                this.routeToPool.clear();
                this.poolLock.unlock();
            }
        } finally {
            this.poolLock.unlock();
        }
    }

    public ConnPoolByRoute(ClientConnectionOperator clientConnectionOperator, ConnPerRoute connPerRoute2, int i, long j, TimeUnit timeUnit) {
        this.log = LogFactory.getLog(getClass());
        if (clientConnectionOperator == null) {
            throw new IllegalArgumentException("Connection operator may not be null");
        } else if (connPerRoute2 != null) {
            this.poolLock = super.poolLock;
            this.leasedConnections = super.leasedConnections;
            this.operator = clientConnectionOperator;
            this.connPerRoute = connPerRoute2;
            this.maxTotalConnections = i;
            this.freeConnections = createFreeConnQueue();
            this.waitingThreads = createWaitingThreadQueue();
            this.routeToPool = createRouteToPoolMap();
            this.connTTL = j;
            this.connTTLTimeUnit = timeUnit;
        } else {
            throw new IllegalArgumentException("Connections per route may not be null");
        }
    }

    public int getConnectionsInPool() {
        this.poolLock.lock();
        try {
            return this.numConnections;
        } finally {
            this.poolLock.unlock();
        }
    }

    @Deprecated
    public ConnPoolByRoute(ClientConnectionOperator clientConnectionOperator, HttpParams httpParams) {
        this(clientConnectionOperator, ConnManagerParams.getMaxConnectionsPerRoute(httpParams), ConnManagerParams.getMaxTotalConnections(httpParams));
    }
}
