package org.apache.http.impl;

import java.net.InetAddress;
import java.net.Socket;
import java.net.SocketException;
import org.apache.http.HttpInetConnection;
import org.apache.http.impl.io.SocketInputBuffer;
import org.apache.http.impl.io.SocketOutputBuffer;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

public class SocketHttpClientConnection extends AbstractHttpClientConnection implements HttpInetConnection {
    private volatile boolean open;
    private volatile Socket socket = null;

    /* access modifiers changed from: protected */
    public void assertNotOpen() {
        if (this.open) {
            throw new IllegalStateException("Connection is already open");
        }
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.AbstractHttpClientConnection
    public void assertOpen() {
        if (!this.open) {
            throw new IllegalStateException("Connection is not open");
        }
    }

    /* access modifiers changed from: protected */
    public void bind(Socket socket2, HttpParams httpParams) {
        if (socket2 == null) {
            throw new IllegalArgumentException("Socket may not be null");
        } else if (httpParams != null) {
            this.socket = socket2;
            int socketBufferSize = HttpConnectionParams.getSocketBufferSize(httpParams);
            init(createSessionInputBuffer(socket2, socketBufferSize, httpParams), createSessionOutputBuffer(socket2, socketBufferSize, httpParams), httpParams);
            this.open = true;
        } else {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
    }

    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:8:0x0010 */
    /* JADX WARNING: Removed duplicated region for block: B:11:? A[ExcHandler: UnsupportedOperationException (unused java.lang.UnsupportedOperationException), SYNTHETIC, Splitter:B:8:0x0010] */
    @Override // org.apache.http.HttpConnection
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void close() {
        /*
            r2 = this;
            boolean r0 = r2.open
            if (r0 != 0) goto L_0x0005
            return
        L_0x0005:
            r0 = 0
            r2.open = r0
            java.net.Socket r0 = r2.socket
            r2.doFlush()     // Catch:{ all -> 0x0017 }
            r0.shutdownOutput()     // Catch:{ IOException -> 0x0010 }
        L_0x0010:
            r0.shutdownInput()     // Catch:{ UnsupportedOperationException -> 0x0013, UnsupportedOperationException -> 0x0013 }
        L_0x0013:
            r0.close()
            return
        L_0x0017:
            r1 = move-exception
            r0.close()
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.SocketHttpClientConnection.close():void");
    }

    /* access modifiers changed from: protected */
    public SessionInputBuffer createSessionInputBuffer(Socket socket2, int i, HttpParams httpParams) {
        return new SocketInputBuffer(socket2, i, httpParams);
    }

    /* access modifiers changed from: protected */
    public SessionOutputBuffer createSessionOutputBuffer(Socket socket2, int i, HttpParams httpParams) {
        return new SocketOutputBuffer(socket2, i, httpParams);
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getLocalAddress() {
        if (this.socket != null) {
            return this.socket.getLocalAddress();
        }
        return null;
    }

    @Override // org.apache.http.HttpInetConnection
    public int getLocalPort() {
        if (this.socket != null) {
            return this.socket.getLocalPort();
        }
        return -1;
    }

    @Override // org.apache.http.HttpInetConnection
    public InetAddress getRemoteAddress() {
        if (this.socket != null) {
            return this.socket.getInetAddress();
        }
        return null;
    }

    @Override // org.apache.http.HttpInetConnection
    public int getRemotePort() {
        if (this.socket != null) {
            return this.socket.getPort();
        }
        return -1;
    }

    /* access modifiers changed from: protected */
    public Socket getSocket() {
        return this.socket;
    }

    @Override // org.apache.http.HttpConnection
    public int getSocketTimeout() {
        if (this.socket != null) {
            try {
                return this.socket.getSoTimeout();
            } catch (SocketException unused) {
            }
        }
        return -1;
    }

    @Override // org.apache.http.HttpConnection
    public boolean isOpen() {
        return this.open;
    }

    @Override // org.apache.http.HttpConnection
    public void setSocketTimeout(int i) {
        assertOpen();
        if (this.socket != null) {
            try {
                this.socket.setSoTimeout(i);
            } catch (SocketException unused) {
            }
        }
    }

    @Override // org.apache.http.HttpConnection
    public void shutdown() {
        this.open = false;
        Socket socket2 = this.socket;
        if (socket2 != null) {
            socket2.close();
        }
    }
}
