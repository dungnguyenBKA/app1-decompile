package org.apache.http.impl.conn;

import java.io.IOException;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseFactory;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.conn.OperatedClientConnection;
import org.apache.http.impl.SocketHttpClientConnection;
import org.apache.http.io.HttpMessageParser;
import org.apache.http.io.SessionInputBuffer;
import org.apache.http.io.SessionOutputBuffer;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;

@NotThreadSafe
public class DefaultClientConnection extends SocketHttpClientConnection implements OperatedClientConnection, HttpContext {
    private final Map<String, Object> attributes = new HashMap();
    private boolean connSecure;
    private final Log headerLog = LogFactory.getLog("org.apache.http.headers");
    private final Log log = LogFactory.getLog(getClass());
    private volatile boolean shutdown;
    private volatile Socket socket;
    private HttpHost targetHost;
    private final Log wireLog = LogFactory.getLog("org.apache.http.wire");

    @Override // org.apache.http.impl.SocketHttpClientConnection, org.apache.http.HttpConnection
    public void close() {
        try {
            super.close();
            this.log.debug("Connection closed");
        } catch (IOException e) {
            this.log.debug("I/O error closing connection", e);
        }
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.AbstractHttpClientConnection
    public HttpMessageParser createResponseParser(SessionInputBuffer sessionInputBuffer, HttpResponseFactory httpResponseFactory, HttpParams httpParams) {
        return new DefaultResponseParser(sessionInputBuffer, null, httpResponseFactory, httpParams);
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.SocketHttpClientConnection
    public SessionInputBuffer createSessionInputBuffer(Socket socket2, int i, HttpParams httpParams) {
        if (i == -1) {
            i = 8192;
        }
        SessionInputBuffer createSessionInputBuffer = super.createSessionInputBuffer(socket2, i, httpParams);
        return this.wireLog.isDebugEnabled() ? new LoggingSessionInputBuffer(createSessionInputBuffer, new Wire(this.wireLog), HttpProtocolParams.getHttpElementCharset(httpParams)) : createSessionInputBuffer;
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.SocketHttpClientConnection
    public SessionOutputBuffer createSessionOutputBuffer(Socket socket2, int i, HttpParams httpParams) {
        if (i == -1) {
            i = 8192;
        }
        SessionOutputBuffer createSessionOutputBuffer = super.createSessionOutputBuffer(socket2, i, httpParams);
        return this.wireLog.isDebugEnabled() ? new LoggingSessionOutputBuffer(createSessionOutputBuffer, new Wire(this.wireLog), HttpProtocolParams.getHttpElementCharset(httpParams)) : createSessionOutputBuffer;
    }

    @Override // org.apache.http.protocol.HttpContext
    public Object getAttribute(String str) {
        return this.attributes.get(str);
    }

    @Override // org.apache.http.conn.OperatedClientConnection, org.apache.http.impl.SocketHttpClientConnection
    public final Socket getSocket() {
        return this.socket;
    }

    @Override // org.apache.http.conn.OperatedClientConnection
    public final HttpHost getTargetHost() {
        return this.targetHost;
    }

    @Override // org.apache.http.conn.OperatedClientConnection
    public final boolean isSecure() {
        return this.connSecure;
    }

    @Override // org.apache.http.conn.OperatedClientConnection
    public void openCompleted(boolean z, HttpParams httpParams) {
        assertNotOpen();
        if (httpParams != null) {
            this.connSecure = z;
            bind(this.socket, httpParams);
            return;
        }
        throw new IllegalArgumentException("Parameters must not be null.");
    }

    @Override // org.apache.http.conn.OperatedClientConnection
    public void opening(Socket socket2, HttpHost httpHost) {
        assertNotOpen();
        this.socket = socket2;
        this.targetHost = httpHost;
        if (this.shutdown) {
            socket2.close();
            throw new IOException("Connection already shutdown");
        }
    }

    @Override // org.apache.http.impl.AbstractHttpClientConnection, org.apache.http.HttpClientConnection
    public HttpResponse receiveResponseHeader() {
        HttpResponse receiveResponseHeader = super.receiveResponseHeader();
        if (this.log.isDebugEnabled()) {
            Log log2 = this.log;
            StringBuilder q = ic.q("Receiving response: ");
            q.append(receiveResponseHeader.getStatusLine());
            log2.debug(q.toString());
        }
        if (this.headerLog.isDebugEnabled()) {
            Log log3 = this.headerLog;
            StringBuilder q2 = ic.q("<< ");
            q2.append(receiveResponseHeader.getStatusLine().toString());
            log3.debug(q2.toString());
            Header[] allHeaders = receiveResponseHeader.getAllHeaders();
            for (Header header : allHeaders) {
                Log log4 = this.headerLog;
                StringBuilder q3 = ic.q("<< ");
                q3.append(header.toString());
                log4.debug(q3.toString());
            }
        }
        return receiveResponseHeader;
    }

    @Override // org.apache.http.protocol.HttpContext
    public Object removeAttribute(String str) {
        return this.attributes.remove(str);
    }

    @Override // org.apache.http.impl.AbstractHttpClientConnection, org.apache.http.HttpClientConnection
    public void sendRequestHeader(HttpRequest httpRequest) {
        if (this.log.isDebugEnabled()) {
            Log log2 = this.log;
            StringBuilder q = ic.q("Sending request: ");
            q.append(httpRequest.getRequestLine());
            log2.debug(q.toString());
        }
        super.sendRequestHeader(httpRequest);
        if (this.headerLog.isDebugEnabled()) {
            Log log3 = this.headerLog;
            StringBuilder q2 = ic.q(">> ");
            q2.append(httpRequest.getRequestLine().toString());
            log3.debug(q2.toString());
            Header[] allHeaders = httpRequest.getAllHeaders();
            for (Header header : allHeaders) {
                Log log4 = this.headerLog;
                StringBuilder q3 = ic.q(">> ");
                q3.append(header.toString());
                log4.debug(q3.toString());
            }
        }
    }

    @Override // org.apache.http.protocol.HttpContext
    public void setAttribute(String str, Object obj) {
        this.attributes.put(str, obj);
    }

    @Override // org.apache.http.impl.SocketHttpClientConnection, org.apache.http.HttpConnection
    public void shutdown() {
        this.shutdown = true;
        try {
            super.shutdown();
            this.log.debug("Connection shut down");
            Socket socket2 = this.socket;
            if (socket2 != null) {
                socket2.close();
            }
        } catch (IOException e) {
            this.log.debug("I/O error shutting down connection", e);
        }
    }

    @Override // org.apache.http.conn.OperatedClientConnection
    public void update(Socket socket2, HttpHost httpHost, boolean z, HttpParams httpParams) {
        assertOpen();
        if (httpHost == null) {
            throw new IllegalArgumentException("Target host must not be null.");
        } else if (httpParams != null) {
            if (socket2 != null) {
                this.socket = socket2;
                bind(socket2, httpParams);
            }
            this.targetHost = httpHost;
            this.connSecure = z;
        } else {
            throw new IllegalArgumentException("Parameters must not be null.");
        }
    }
}
