package org.apache.http.impl.conn;

import org.apache.http.HttpHost;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

public abstract class AbstractPooledConnAdapter extends AbstractClientConnAdapter {
    protected volatile AbstractPoolEntry poolEntry;

    protected AbstractPooledConnAdapter(ClientConnectionManager clientConnectionManager, AbstractPoolEntry abstractPoolEntry) {
        super(clientConnectionManager, abstractPoolEntry.connection);
        this.poolEntry = abstractPoolEntry;
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public final void assertAttached() {
        if (this.poolEntry == null) {
            throw new ConnectionShutdownException();
        }
    }

    /* access modifiers changed from: protected */
    public void assertValid(AbstractPoolEntry abstractPoolEntry) {
        if (isReleased() || abstractPoolEntry == null) {
            throw new ConnectionShutdownException();
        }
    }

    @Override // org.apache.http.HttpConnection
    public void close() {
        AbstractPoolEntry poolEntry2 = getPoolEntry();
        if (poolEntry2 != null) {
            poolEntry2.shutdownEntry();
        }
        OperatedClientConnection wrappedConnection = getWrappedConnection();
        if (wrappedConnection != null) {
            wrappedConnection.close();
        }
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.conn.AbstractClientConnAdapter
    public synchronized void detach() {
        this.poolEntry = null;
        super.detach();
    }

    /* access modifiers changed from: protected */
    public AbstractPoolEntry getPoolEntry() {
        return this.poolEntry;
    }

    @Override // org.apache.http.conn.ManagedClientConnection, org.apache.http.conn.HttpRoutedConnection
    public HttpRoute getRoute() {
        AbstractPoolEntry poolEntry2 = getPoolEntry();
        assertValid(poolEntry2);
        if (poolEntry2.tracker == null) {
            return null;
        }
        return poolEntry2.tracker.toRoute();
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public Object getState() {
        AbstractPoolEntry poolEntry2 = getPoolEntry();
        assertValid(poolEntry2);
        return poolEntry2.getState();
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void layerProtocol(HttpContext httpContext, HttpParams httpParams) {
        AbstractPoolEntry poolEntry2 = getPoolEntry();
        assertValid(poolEntry2);
        poolEntry2.layerProtocol(httpContext, httpParams);
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void open(HttpRoute httpRoute, HttpContext httpContext, HttpParams httpParams) {
        AbstractPoolEntry poolEntry2 = getPoolEntry();
        assertValid(poolEntry2);
        poolEntry2.open(httpRoute, httpContext, httpParams);
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void setState(Object obj) {
        AbstractPoolEntry poolEntry2 = getPoolEntry();
        assertValid(poolEntry2);
        poolEntry2.setState(obj);
    }

    @Override // org.apache.http.HttpConnection
    public void shutdown() {
        AbstractPoolEntry poolEntry2 = getPoolEntry();
        if (poolEntry2 != null) {
            poolEntry2.shutdownEntry();
        }
        OperatedClientConnection wrappedConnection = getWrappedConnection();
        if (wrappedConnection != null) {
            wrappedConnection.shutdown();
        }
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void tunnelProxy(HttpHost httpHost, boolean z, HttpParams httpParams) {
        AbstractPoolEntry poolEntry2 = getPoolEntry();
        assertValid(poolEntry2);
        poolEntry2.tunnelProxy(httpHost, z, httpParams);
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void tunnelTarget(boolean z, HttpParams httpParams) {
        AbstractPoolEntry poolEntry2 = getPoolEntry();
        assertValid(poolEntry2);
        poolEntry2.tunnelTarget(z, httpParams);
    }
}
