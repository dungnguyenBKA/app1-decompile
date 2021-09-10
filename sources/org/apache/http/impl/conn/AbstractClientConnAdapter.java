package org.apache.http.impl.conn;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.net.Socket;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import org.apache.http.HttpConnectionMetrics;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.protocol.HttpContext;

public abstract class AbstractClientConnAdapter implements ManagedClientConnection, HttpContext {
    private volatile ClientConnectionManager connManager;
    private volatile long duration = Long.MAX_VALUE;
    private volatile boolean markedReusable = false;
    private volatile boolean released = false;
    private volatile OperatedClientConnection wrappedConnection;

    protected AbstractClientConnAdapter(ClientConnectionManager clientConnectionManager, OperatedClientConnection operatedClientConnection) {
        this.connManager = clientConnectionManager;
        this.wrappedConnection = operatedClientConnection;
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public synchronized void abortConnection() {
        if (!this.released) {
            this.released = true;
            unmarkReusable();
            try {
                shutdown();
            } catch (IOException unused) {
            }
            if (this.connManager != null) {
                this.connManager.releaseConnection(this, this.duration, TimeUnit.MILLISECONDS);
            }
        }
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public final void assertNotAborted() {
        if (isReleased()) {
            throw new InterruptedIOException("Connection has been shut down");
        }
    }

    /* access modifiers changed from: protected */
    public final void assertValid(OperatedClientConnection operatedClientConnection) {
        if (isReleased() || operatedClientConnection == null) {
            throw new ConnectionShutdownException();
        }
    }

    /* access modifiers changed from: protected */
    public synchronized void detach() {
        this.wrappedConnection = null;
        this.connManager = null;
        this.duration = Long.MAX_VALUE;
    }

    @Override // org.apache.http.HttpClientConnection
    public void flush() {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        wrappedConnection2.flush();
    }

    @Override // org.apache.http.protocol.HttpContext
    public synchronized Object getAttribute(String str) {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        if (!(wrappedConnection2 instanceof HttpContext)) {
            return null;
        }
        return ((HttpContext) wrappedConnection2).getAttribute(str);
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getLocalAddress() {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        return wrappedConnection2.getLocalAddress();
    }

    @Override // org.apache.http.HttpInetConnection
    public int getLocalPort() {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        return wrappedConnection2.getLocalPort();
    }

    /* access modifiers changed from: protected */
    public ClientConnectionManager getManager() {
        return this.connManager;
    }

    @Override // org.apache.http.HttpConnection
    public HttpConnectionMetrics getMetrics() {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        return wrappedConnection2.getMetrics();
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getRemoteAddress() {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        return wrappedConnection2.getRemoteAddress();
    }

    @Override // org.apache.http.HttpInetConnection
    public int getRemotePort() {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        return wrappedConnection2.getRemotePort();
    }

    @Override // org.apache.http.conn.ManagedClientConnection, org.apache.http.conn.HttpRoutedConnection
    public SSLSession getSSLSession() {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        if (!isOpen()) {
            return null;
        }
        Socket socket = wrappedConnection2.getSocket();
        if (socket instanceof SSLSocket) {
            return ((SSLSocket) socket).getSession();
        }
        return null;
    }

    @Override // org.apache.http.HttpConnection
    public int getSocketTimeout() {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        return wrappedConnection2.getSocketTimeout();
    }

    /* access modifiers changed from: protected */
    public OperatedClientConnection getWrappedConnection() {
        return this.wrappedConnection;
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public boolean isMarkedReusable() {
        return this.markedReusable;
    }

    @Override // org.apache.http.HttpConnection
    public boolean isOpen() {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        if (wrappedConnection2 == null) {
            return false;
        }
        return wrappedConnection2.isOpen();
    }

    /* access modifiers changed from: protected */
    public boolean isReleased() {
        return this.released;
    }

    @Override // org.apache.http.HttpClientConnection
    public boolean isResponseAvailable(int i) {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        return wrappedConnection2.isResponseAvailable(i);
    }

    @Override // org.apache.http.conn.ManagedClientConnection, org.apache.http.conn.HttpRoutedConnection
    public boolean isSecure() {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        return wrappedConnection2.isSecure();
    }

    @Override // org.apache.http.HttpConnection
    public boolean isStale() {
        OperatedClientConnection wrappedConnection2;
        if (!isReleased() && (wrappedConnection2 = getWrappedConnection()) != null) {
            return wrappedConnection2.isStale();
        }
        return true;
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void markReusable() {
        this.markedReusable = true;
    }

    @Override // org.apache.http.HttpClientConnection
    public void receiveResponseEntity(HttpResponse httpResponse) {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        unmarkReusable();
        wrappedConnection2.receiveResponseEntity(httpResponse);
    }

    @Override // org.apache.http.HttpClientConnection
    public HttpResponse receiveResponseHeader() {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        unmarkReusable();
        return wrappedConnection2.receiveResponseHeader();
    }

    @Override // org.apache.http.conn.ConnectionReleaseTrigger
    public synchronized void releaseConnection() {
        if (!this.released) {
            this.released = true;
            if (this.connManager != null) {
                this.connManager.releaseConnection(this, this.duration, TimeUnit.MILLISECONDS);
            }
        }
    }

    @Override // org.apache.http.protocol.HttpContext
    public synchronized Object removeAttribute(String str) {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        if (!(wrappedConnection2 instanceof HttpContext)) {
            return null;
        }
        return ((HttpContext) wrappedConnection2).removeAttribute(str);
    }

    @Override // org.apache.http.HttpClientConnection
    public void sendRequestEntity(HttpEntityEnclosingRequest httpEntityEnclosingRequest) {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        unmarkReusable();
        wrappedConnection2.sendRequestEntity(httpEntityEnclosingRequest);
    }

    @Override // org.apache.http.HttpClientConnection
    public void sendRequestHeader(HttpRequest httpRequest) {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        unmarkReusable();
        wrappedConnection2.sendRequestHeader(httpRequest);
    }

    @Override // org.apache.http.protocol.HttpContext
    public synchronized void setAttribute(String str, Object obj) {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        if (wrappedConnection2 instanceof HttpContext) {
            ((HttpContext) wrappedConnection2).setAttribute(str, obj);
        }
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void setIdleDuration(long j, TimeUnit timeUnit) {
        if (j > 0) {
            this.duration = timeUnit.toMillis(j);
        } else {
            this.duration = -1;
        }
    }

    @Override // org.apache.http.HttpConnection
    public void setSocketTimeout(int i) {
        OperatedClientConnection wrappedConnection2 = getWrappedConnection();
        assertValid(wrappedConnection2);
        wrappedConnection2.setSocketTimeout(i);
    }

    @Override // org.apache.http.conn.ManagedClientConnection
    public void unmarkReusable() {
        this.markedReusable = false;
    }
}
