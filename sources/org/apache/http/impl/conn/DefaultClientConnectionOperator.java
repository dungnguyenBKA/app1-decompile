package org.apache.http.impl.conn;

import java.net.ConnectException;
import java.net.InetAddress;
import java.net.Socket;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpHost;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.conn.ClientConnectionOperator;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.conn.scheme.LayeredSchemeSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

@ThreadSafe
public class DefaultClientConnectionOperator implements ClientConnectionOperator {
    private final Log log = LogFactory.getLog(getClass());
    protected final SchemeRegistry schemeRegistry;

    public DefaultClientConnectionOperator(SchemeRegistry schemeRegistry2) {
        if (schemeRegistry2 != null) {
            this.schemeRegistry = schemeRegistry2;
            return;
        }
        throw new IllegalArgumentException("Scheme registry amy not be null");
    }

    @Override // org.apache.http.conn.ClientConnectionOperator
    public OperatedClientConnection createConnection() {
        return new DefaultClientConnection();
    }

    /* JADX WARNING: Removed duplicated region for block: B:38:0x00a6  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0098 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x00c6 A[SYNTHETIC] */
    @Override // org.apache.http.conn.ClientConnectionOperator
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void openConnection(org.apache.http.conn.OperatedClientConnection r17, org.apache.http.HttpHost r18, java.net.InetAddress r19, org.apache.http.protocol.HttpContext r20, org.apache.http.params.HttpParams r21) {
        /*
        // Method dump skipped, instructions count: 244
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.http.impl.conn.DefaultClientConnectionOperator.openConnection(org.apache.http.conn.OperatedClientConnection, org.apache.http.HttpHost, java.net.InetAddress, org.apache.http.protocol.HttpContext, org.apache.http.params.HttpParams):void");
    }

    /* access modifiers changed from: protected */
    public void prepareSocket(Socket socket, HttpContext httpContext, HttpParams httpParams) {
        socket.setTcpNoDelay(HttpConnectionParams.getTcpNoDelay(httpParams));
        socket.setSoTimeout(HttpConnectionParams.getSoTimeout(httpParams));
        int linger = HttpConnectionParams.getLinger(httpParams);
        if (linger >= 0) {
            socket.setSoLinger(linger > 0, linger);
        }
    }

    /* access modifiers changed from: protected */
    public InetAddress[] resolveHostname(String str) {
        return InetAddress.getAllByName(str);
    }

    @Override // org.apache.http.conn.ClientConnectionOperator
    public void updateSecureConnection(OperatedClientConnection operatedClientConnection, HttpHost httpHost, HttpContext httpContext, HttpParams httpParams) {
        if (operatedClientConnection == null) {
            throw new IllegalArgumentException("Connection may not be null");
        } else if (httpHost == null) {
            throw new IllegalArgumentException("Target host may not be null");
        } else if (httpParams == null) {
            throw new IllegalArgumentException("Parameters may not be null");
        } else if (operatedClientConnection.isOpen()) {
            Scheme scheme = this.schemeRegistry.getScheme(httpHost.getSchemeName());
            if (scheme.getSchemeSocketFactory() instanceof LayeredSchemeSocketFactory) {
                LayeredSchemeSocketFactory layeredSchemeSocketFactory = (LayeredSchemeSocketFactory) scheme.getSchemeSocketFactory();
                try {
                    Socket createLayeredSocket = layeredSchemeSocketFactory.createLayeredSocket(operatedClientConnection.getSocket(), httpHost.getHostName(), httpHost.getPort(), true);
                    prepareSocket(createLayeredSocket, httpContext, httpParams);
                    operatedClientConnection.update(createLayeredSocket, httpHost, layeredSchemeSocketFactory.isSecure(createLayeredSocket), httpParams);
                } catch (ConnectException e) {
                    throw new HttpHostConnectException(httpHost, e);
                }
            } else {
                StringBuilder q = ic.q("Target scheme (");
                q.append(scheme.getName());
                q.append(") must have layered socket factory.");
                throw new IllegalArgumentException(q.toString());
            }
        } else {
            throw new IllegalStateException("Connection must be open");
        }
    }
}
