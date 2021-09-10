package org.apache.http.impl.conn.tsccm;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.impl.conn.DefaultClientConnectionOperator;
import org.apache.http.impl.conn.SchemeRegistryFactory;
import org.apache.http.params.HttpParams;

@ThreadSafe
public class ThreadSafeClientConnManager implements ClientConnectionManager {
    protected final ClientConnectionOperator connOperator;
    protected final ConnPerRouteBean connPerRoute;
    @Deprecated
    protected final AbstractConnPool connectionPool;
    private final Log log;
    protected final ConnPoolByRoute pool;
    protected final SchemeRegistry schemeRegistry;

    public ThreadSafeClientConnManager(SchemeRegistry schemeRegistry2) {
        this(schemeRegistry2, -1, TimeUnit.MILLISECONDS);
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeExpiredConnections() {
        this.log.debug("Closing expired connections");
        this.pool.closeExpiredConnections();
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void closeIdleConnections(long j, TimeUnit timeUnit) {
        if (this.log.isDebugEnabled()) {
            Log log2 = this.log;
            log2.debug("Closing connections idle longer than " + j + " " + timeUnit);
        }
        this.pool.closeIdleConnections(j, timeUnit);
    }

    /* access modifiers changed from: protected */
    public ClientConnectionOperator createConnectionOperator(SchemeRegistry schemeRegistry2) {
        return new DefaultClientConnectionOperator(schemeRegistry2);
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public AbstractConnPool createConnectionPool(HttpParams httpParams) {
        return new ConnPoolByRoute(this.connOperator, httpParams);
    }

    /* access modifiers changed from: protected */
    public void finalize() {
        try {
            shutdown();
        } finally {
            super.finalize();
        }
    }

    public int getConnectionsInPool(HttpRoute httpRoute) {
        return this.pool.getConnectionsInPool(httpRoute);
    }

    public int getDefaultMaxPerRoute() {
        return this.connPerRoute.getDefaultMaxPerRoute();
    }

    public int getMaxForRoute(HttpRoute httpRoute) {
        return this.connPerRoute.getMaxForRoute(httpRoute);
    }

    public int getMaxTotal() {
        return this.pool.getMaxTotalConnections();
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public SchemeRegistry getSchemeRegistry() {
        return this.schemeRegistry;
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void releaseConnection(ManagedClientConnection managedClientConnection, long j, TimeUnit timeUnit) {
        boolean isMarkedReusable;
        ConnPoolByRoute connPoolByRoute;
        if (managedClientConnection instanceof BasicPooledConnAdapter) {
            BasicPooledConnAdapter basicPooledConnAdapter = (BasicPooledConnAdapter) managedClientConnection;
            if (basicPooledConnAdapter.getPoolEntry() == null || basicPooledConnAdapter.getManager() == this) {
                synchronized (basicPooledConnAdapter) {
                    BasicPoolEntry basicPoolEntry = (BasicPoolEntry) basicPooledConnAdapter.getPoolEntry();
                    if (basicPoolEntry != null) {
                        try {
                            if (basicPooledConnAdapter.isOpen() && !basicPooledConnAdapter.isMarkedReusable()) {
                                basicPooledConnAdapter.shutdown();
                            }
                            isMarkedReusable = basicPooledConnAdapter.isMarkedReusable();
                            if (this.log.isDebugEnabled()) {
                                if (isMarkedReusable) {
                                    this.log.debug("Released connection is reusable.");
                                } else {
                                    this.log.debug("Released connection is not reusable.");
                                }
                            }
                            basicPooledConnAdapter.detach();
                            connPoolByRoute = this.pool;
                        } catch (IOException e) {
                            if (this.log.isDebugEnabled()) {
                                this.log.debug("Exception shutting down released connection.", e);
                            }
                            isMarkedReusable = basicPooledConnAdapter.isMarkedReusable();
                            if (this.log.isDebugEnabled()) {
                                if (isMarkedReusable) {
                                    this.log.debug("Released connection is reusable.");
                                } else {
                                    this.log.debug("Released connection is not reusable.");
                                }
                            }
                            basicPooledConnAdapter.detach();
                            connPoolByRoute = this.pool;
                        } catch (Throwable th) {
                            boolean isMarkedReusable2 = basicPooledConnAdapter.isMarkedReusable();
                            if (this.log.isDebugEnabled()) {
                                if (isMarkedReusable2) {
                                    this.log.debug("Released connection is reusable.");
                                } else {
                                    this.log.debug("Released connection is not reusable.");
                                }
                            }
                            basicPooledConnAdapter.detach();
                            this.pool.freeEntry(basicPoolEntry, isMarkedReusable2, j, timeUnit);
                            throw th;
                        }
                        connPoolByRoute.freeEntry(basicPoolEntry, isMarkedReusable, j, timeUnit);
                        return;
                    }
                    return;
                }
            }
            throw new IllegalArgumentException("Connection not obtained from this manager.");
        }
        throw new IllegalArgumentException("Connection class mismatch, connection not obtained from this manager.");
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public ClientConnectionRequest requestConnection(final HttpRoute httpRoute, Object obj) {
        final PoolEntryRequest requestPoolEntry = this.pool.requestPoolEntry(httpRoute, obj);
        return new ClientConnectionRequest() {
            /* class org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager.AnonymousClass1 */

            @Override // org.apache.http.conn.ClientConnectionRequest
            public void abortRequest() {
                requestPoolEntry.abortRequest();
            }

            @Override // org.apache.http.conn.ClientConnectionRequest
            public ManagedClientConnection getConnection(long j, TimeUnit timeUnit) {
                if (httpRoute != null) {
                    if (ThreadSafeClientConnManager.this.log.isDebugEnabled()) {
                        Log log = ThreadSafeClientConnManager.this.log;
                        StringBuilder q = ic.q("Get connection: ");
                        q.append(httpRoute);
                        q.append(", timeout = ");
                        q.append(j);
                        log.debug(q.toString());
                    }
                    return new BasicPooledConnAdapter(ThreadSafeClientConnManager.this, requestPoolEntry.getPoolEntry(j, timeUnit));
                }
                throw new IllegalArgumentException("Route may not be null.");
            }
        };
    }

    public void setDefaultMaxPerRoute(int i) {
        this.connPerRoute.setDefaultMaxPerRoute(i);
    }

    public void setMaxForRoute(HttpRoute httpRoute, int i) {
        this.connPerRoute.setMaxForRoute(httpRoute, i);
    }

    public void setMaxTotal(int i) {
        this.pool.setMaxTotalConnections(i);
    }

    @Override // org.apache.http.conn.ClientConnectionManager
    public void shutdown() {
        this.log.debug("Shutting down");
        this.pool.shutdown();
    }

    public ThreadSafeClientConnManager() {
        this(SchemeRegistryFactory.createDefault());
    }

    /* access modifiers changed from: protected */
    public ConnPoolByRoute createConnectionPool(long j, TimeUnit timeUnit) {
        return new ConnPoolByRoute(this.connOperator, this.connPerRoute, 20, j, timeUnit);
    }

    public int getConnectionsInPool() {
        return this.pool.getConnectionsInPool();
    }

    public ThreadSafeClientConnManager(SchemeRegistry schemeRegistry2, long j, TimeUnit timeUnit) {
        if (schemeRegistry2 != null) {
            this.log = LogFactory.getLog(getClass());
            this.schemeRegistry = schemeRegistry2;
            this.connPerRoute = new ConnPerRouteBean();
            this.connOperator = createConnectionOperator(schemeRegistry2);
            ConnPoolByRoute createConnectionPool = createConnectionPool(j, timeUnit);
            this.pool = createConnectionPool;
            this.connectionPool = createConnectionPool;
            return;
        }
        throw new IllegalArgumentException("Scheme registry may not be null");
    }

    @Deprecated
    public ThreadSafeClientConnManager(HttpParams httpParams, SchemeRegistry schemeRegistry2) {
        if (schemeRegistry2 != null) {
            this.log = LogFactory.getLog(getClass());
            this.schemeRegistry = schemeRegistry2;
            this.connPerRoute = new ConnPerRouteBean();
            this.connOperator = createConnectionOperator(schemeRegistry2);
            ConnPoolByRoute connPoolByRoute = (ConnPoolByRoute) createConnectionPool(httpParams);
            this.pool = connPoolByRoute;
            this.connectionPool = connPoolByRoute;
            return;
        }
        throw new IllegalArgumentException("Scheme registry may not be null");
    }
}
