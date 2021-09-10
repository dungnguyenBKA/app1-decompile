package org.apache.http.impl.conn.tsccm;

import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.impl.conn.AbstractPoolEntry;
import org.apache.http.impl.conn.AbstractPooledConnAdapter;

public class BasicPooledConnAdapter extends AbstractPooledConnAdapter {
    protected BasicPooledConnAdapter(ThreadSafeClientConnManager threadSafeClientConnManager, AbstractPoolEntry abstractPoolEntry) {
        super(threadSafeClientConnManager, abstractPoolEntry);
        markReusable();
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.conn.AbstractPooledConnAdapter, org.apache.http.impl.conn.AbstractClientConnAdapter
    public void detach() {
        super.detach();
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.conn.AbstractClientConnAdapter
    public ClientConnectionManager getManager() {
        return super.getManager();
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.conn.AbstractPooledConnAdapter
    public AbstractPoolEntry getPoolEntry() {
        return super.getPoolEntry();
    }
}
