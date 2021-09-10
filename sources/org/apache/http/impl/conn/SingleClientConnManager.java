package org.apache.http.impl.conn;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.GuardedBy;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.RouteTracker;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.params.HttpParams;

@ThreadSafe
public class SingleClientConnManager implements ClientConnectionManager {
    public static final String MISUSE_MESSAGE = "Invalid use of SingleClientConnManager: connection still allocated.\nMake sure to release the connection before allocating another one.";
    protected final boolean alwaysShutDown;
    protected final ClientConnectionOperator connOperator;
    @GuardedBy("this")
    protected long connectionExpiresTime;
    protected volatile boolean isShutDown;
    @GuardedBy("this")
    protected long lastReleaseTime;
    private final Log log;
    @GuardedBy("this")
    protected ConnAdapter managedConn;
    protected final SchemeRegistry schemeRegistry;
    @GuardedBy("this")
    protected PoolEntry uniquePoolEntry;

    /* access modifiers changed from: protected */
    public class ConnAdapter extends AbstractPooledConnAdapter {
        protected ConnAdapter(PoolEntry poolEntry, HttpRoute httpRoute) {
            super(SingleClientConnManager.this, poolEntry);
            markReusable();
            poolEntry.route = httpRoute;
        }
    }

    /* access modifiers changed from: protected */
    public class PoolEntry extends AbstractPoolEntry {
        protected PoolEntry() {
            super(SingleClientConnManager.this.connOperator, null);
        }

        /* access modifiers changed from: protected */
        public void close() {
            shutdownEntry();
            if (this.connection.isOpen()) {
                this.connection.close();
            }
        }

        /* access modifiers changed from: protected */
        public void shutdown() {
            shutdownEntry();
            if (this.connection.isOpen()) {
                this.connection.shutdown();
            }
        }
    }

    @Deprecated
    public SingleClientConnManager(HttpParams httpParams, SchemeRegistry schemeRegistry2) {
        this(schemeRegistry2);
    }

    /* access modifiers changed from: protected */
    public final void assertStillUp() {
        if (this.isShutDown) {
            throw new IllegalStateException("Manager is shut down.");
        }
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public synchronized void closeExpiredConnections() {
        if (System.currentTimeMillis() >= this.connectionExpiresTime) {
            closeIdleConnections(0, TimeUnit.MILLISECONDS);
        }
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public synchronized void closeIdleConnections(long j, TimeUnit timeUnit) {
        assertStillUp();
        if (timeUnit == null) {
            throw new IllegalArgumentException("Time unit must not be null.");
        } else if (this.managedConn == null && this.uniquePoolEntry.connection.isOpen()) {
            if (this.lastReleaseTime <= System.currentTimeMillis() - timeUnit.toMillis(j)) {
                try {
                    this.uniquePoolEntry.close();
                } catch (IOException e) {
                    this.log.debug("Problem closing idle connection.", e);
                }
            }
        }
    }

    /* access modifiers changed from: protected */
    public ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeRegistry2) {
        return new DefaultClientConnectionOperator(schemeRegistry2);
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    public synchronized ManagedClientConnection getConnection(HttpRoute httpRoute, Object obj) {
        boolean z;
        ConnAdapter connAdapter;
        if (httpRoute != null) {
            assertStillUp();
            if (this.log.isDebugEnabled()) {
                Log log2 = this.log;
                log2.debug("Get connection for route " + httpRoute);
            }
            if (this.managedConn == null) {
                closeExpiredConnections();
                boolean z2 = true;
                boolean z3 = false;
                if (this.uniquePoolEntry.connection.isOpen()) {
                    RouteTracker routeTracker = this.uniquePoolEntry.tracker;
                    z3 = routeTracker == null || !routeTracker.toRoute().equals(httpRoute);
                    z = false;
                } else {
                    z = true;
                }
                if (z3) {
                    try {
                        this.uniquePoolEntry.shutdown();
                    } catch (IOException e) {
                        this.log.debug("Problem shutting down connection.", e);
                    }
                } else {
                    z2 = z;
                }
                if (z2) {
                    this.uniquePoolEntry = new PoolEntry();
                }
                connAdapter = new ConnAdapter(this.uniquePoolEntry, httpRoute);
                this.managedConn = connAdapter;
            } else {
                throw new IllegalStateException(MISUSE_MESSAGE);
            }
        } else {
            throw new IllegalArgumentException("Route may not be null.");
        }
        return connAdapter;
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public SchemeRegistry getSchemeRegistry() {
        return this.schemeRegistry;
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public synchronized void releaseConnection(ManagedClientConnection managedClientConnection, long j, TimeUnit timeUnit) {
        long millis;
        long j2;
        assertStillUp();
        if (managedClientConnection instanceof ConnAdapter) {
            if (this.log.isDebugEnabled()) {
                Log log2 = this.log;
                log2.debug("Releasing connection " + managedClientConnection);
            }
            ConnAdapter connAdapter = (ConnAdapter) managedClientConnection;
            if (connAdapter.poolEntry != null) {
                ClientConnectionManager manager = connAdapter.getManager();
                if (manager == null || manager == this) {
                    try {
                        if (connAdapter.isOpen() && (this.alwaysShutDown || !connAdapter.isMarkedReusable())) {
                            if (this.log.isDebugEnabled()) {
                                this.log.debug("Released connection open but not reusable.");
                            }
                            connAdapter.shutdown();
                        }
                        connAdapter.detach();
                        this.managedConn = null;
                        this.lastReleaseTime = System.currentTimeMillis();
                        if (j > 0) {
                            millis = timeUnit.toMillis(j);
                            j2 = this.lastReleaseTime;
                            this.connectionExpiresTime = millis + j2;
                            return;
                        }
                    } catch (IOException e) {
                        if (this.log.isDebugEnabled()) {
                            this.log.debug("Exception shutting down released connection.", e);
                        }
                        connAdapter.detach();
                        this.managedConn = null;
                        this.lastReleaseTime = System.currentTimeMillis();
                        if (j > 0) {
                            millis = timeUnit.toMillis(j);
                            j2 = this.lastReleaseTime;
                        }
                    } catch (Throwable th) {
                        connAdapter.detach();
                        this.managedConn = null;
                        this.lastReleaseTime = System.currentTimeMillis();
                        if (j > 0) {
                            this.connectionExpiresTime = timeUnit.toMillis(j) + this.lastReleaseTime;
                        } else {
                            this.connectionExpiresTime = Long.MAX_VALUE;
                        }
                        throw th;
                    }
                    this.connectionExpiresTime = Long.MAX_VALUE;
                    return;
                }
                throw new IllegalArgumentException("Connection not obtained from this manager.");
            }
            return;
        }
        throw new IllegalArgumentException("Connection class mismatch, connection not obtained from this manager.");
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public final ClientConnectionRequest requestConnection(final HttpRoute httpRoute, final Object obj) {
        return new ClientConnectionRequest() {
            /* class org.apache.http.impl.conn.SingleClientConnManager.AnonymousClass1 */

            @Override // org.apache.http.conn.ClientConnectionRequest
            public void abortRequest() {
            }

            @Override // org.apache.http.conn.ClientConnectionRequest
            public ManagedClientConnection getConnection(long j, TimeUnit timeUnit) {
                return SingleClientConnManager.this.getConnection(httpRoute, obj);
            }
        };
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public synchronized void revokeConnection() {
        ConnAdapter connAdapter = this.managedConn;
        if (connAdapter != null) {
            connAdapter.detach();
            try {
                this.uniquePoolEntry.shutdown();
            } catch (IOException e) {
                this.log.debug("Problem while shutting down connection.", e);
            }
        }
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public synchronized void shutdown() {
        this.isShutDown = true;
        ConnAdapter connAdapter = this.managedConn;
        if (connAdapter != null) {
            connAdapter.detach();
        }
        try {
            PoolEntry poolEntry = this.uniquePoolEntry;
            if (poolEntry != null) {
                poolEntry.shutdown();
            }
        } catch (IOException e) {
            this.log.debug("Problem while shutting down manager.", e);
        } catch (Throwable th) {
            this.uniquePoolEntry = null;
            throw th;
        }
        this.uniquePoolEntry = null;
    }

    public SingleClientConnManager(SchemeRegistry schemeRegistry2) {
        this.log = LogFactory.getLog(getClass());
        if (schemeRegistry2 != null) {
            this.schemeRegistry = schemeRegistry2;
            this.connOperator = createConnectionOperator(schemeRegistry2);
            this.uniquePoolEntry = new PoolEntry();
            this.managedConn = null;
            this.lastReleaseTime = -1;
            this.alwaysShutDown = false;
            this.isShutDown = false;
            return;
        }
        throw new IllegalArgumentException("Scheme registry must not be null.");
    }

    public SingleClientConnManager() {
        this(SchemeRegistryFactory.createDefault());
    }
}
