package org.apache.http.conn;

import java.io.InputStream;
import java.io.OutputStream;
import org.apache.http.HttpEntity;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.entity.HttpEntityWrapper;
import org.apache.http.util.EntityUtils;

@NotThreadSafe
public class BasicManagedEntity extends HttpEntityWrapper implements ConnectionReleaseTrigger, EofSensorWatcher {
    protected final boolean attemptReuse;
    protected ManagedClientConnection managedConn;

    public BasicManagedEntity(HttpEntity httpEntity, ManagedClientConnection managedClientConnection, boolean z) {
        super(httpEntity);
        if (managedClientConnection != null) {
            this.managedConn = managedClientConnection;
            this.attemptReuse = z;
            return;
        }
        throw new IllegalArgumentException("Connection may not be null.");
    }

    private void ensureConsumed() {
        if (this.managedConn != null) {
            try {
                if (this.attemptReuse) {
                    EntityUtils.consume(this.wrappedEntity);
                    this.managedConn.markReusable();
                }
            } finally {
                releaseManagedConnection();
            }
        }
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void abortConnection() {
        ManagedClientConnection managedClientConnection = this.managedConn;
        if (managedClientConnection != null) {
            try {
                managedClientConnection.abortConnection();
            } finally {
                this.managedConn = null;
            }
        }
    }

    @Override // org.apache.http.HttpEntity, org.apache.http.entity.HttpEntityWrapper
    @Deprecated
    public void consumeContent() {
        ensureConsumed();
    }

    /* JADX INFO: finally extract failed */
    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean eofDetected(InputStream inputStream) {
        try {
            if (this.attemptReuse && this.managedConn != null) {
                inputStream.close();
                this.managedConn.markReusable();
            }
            releaseManagedConnection();
            return false;
        } catch (Throwable th) {
            releaseManagedConnection();
            throw th;
        }
    }

    @Override // org.apache.http.HttpEntity, org.apache.http.entity.HttpEntityWrapper
    public InputStream getContent() {
        return new EofSensorInputStream(this.wrappedEntity.getContent(), this);
    }

    @Override // org.apache.http.HttpEntity, org.apache.http.entity.HttpEntityWrapper
    public boolean isRepeatable() {
        return false;
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public void releaseConnection() {
        ensureConsumed();
    }

    /* access modifiers changed from: protected */
    public void releaseManagedConnection() {
        ManagedClientConnection managedClientConnection = this.managedConn;
        if (managedClientConnection != null) {
            try {
                managedClientConnection.releaseConnection();
            } finally {
                this.managedConn = null;
            }
        }
    }

    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean streamAbort(InputStream inputStream) {
        ManagedClientConnection managedClientConnection = this.managedConn;
        if (managedClientConnection == null) {
            return false;
        }
        managedClientConnection.abortConnection();
        return false;
    }

    /* JADX INFO: finally extract failed */
    @Override // org.apache.http.conn.EofSensorWatcher
    public boolean streamClosed(InputStream inputStream) {
        try {
            if (this.attemptReuse && this.managedConn != null) {
                inputStream.close();
                this.managedConn.markReusable();
            }
            releaseManagedConnection();
            return false;
        } catch (Throwable th) {
            releaseManagedConnection();
            throw th;
        }
    }

    @Override // org.apache.http.HttpEntity, org.apache.http.entity.HttpEntityWrapper
    public void writeTo(OutputStream outputStream) {
        super.writeTo(outputStream);
        ensureConsumed();
    }
}
