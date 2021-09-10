package org.apache.http.impl.client;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.AuthState;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.Credentials;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.NonRepeatableRequestException;
import org.apache.http.client.RedirectException;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.RequestDirector;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.methods.AbortableHttpRequest;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.client.protocol.ClientContext;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.conn.BasicManagedEntity;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionRequest;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.ManagedClientConnection;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.routing.BasicRouteDirector;
import org.apache.http.conn.routing.HttpRoute;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.impl.conn.ConnectionShutdownException;
import org.apache.http.message.BasicHttpRequest;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.util.EntityUtils;

@NotThreadSafe
public class DefaultRequestDirector implements RequestDirector {
    protected final ClientConnectionManager connManager;
    private int execCount;
    protected final HttpProcessor httpProcessor;
    protected final ConnectionKeepAliveStrategy keepAliveStrategy;
    private final Log log;
    protected ManagedClientConnection managedConn;
    private int maxRedirects;
    protected final HttpParams params;
    protected final AuthenticationHandler proxyAuthHandler;
    protected final AuthState proxyAuthState;
    private int redirectCount;
    @Deprecated
    protected final RedirectHandler redirectHandler;
    protected final RedirectStrategy redirectStrategy;
    protected final HttpRequestExecutor requestExec;
    protected final HttpRequestRetryHandler retryHandler;
    protected final ConnectionReuseStrategy reuseStrategy;
    protected final HttpRoutePlanner routePlanner;
    protected final AuthenticationHandler targetAuthHandler;
    protected final AuthState targetAuthState;
    protected final UserTokenHandler userTokenHandler;
    private HttpHost virtualHost;

    @Deprecated
    public DefaultRequestDirector(HttpRequestExecutor httpRequestExecutor, ClientConnectionManager clientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpRoutePlanner httpRoutePlanner, HttpProcessor httpProcessor2, HttpRequestRetryHandler httpRequestRetryHandler, RedirectHandler redirectHandler2, AuthenticationHandler authenticationHandler, AuthenticationHandler authenticationHandler2, UserTokenHandler userTokenHandler2, HttpParams httpParams) {
        this(LogFactory.getLog(DefaultRequestDirector.class), httpRequestExecutor, clientConnectionManager, connectionReuseStrategy, connectionKeepAliveStrategy, httpRoutePlanner, httpProcessor2, httpRequestRetryHandler, new DefaultRedirectStrategyAdaptor(redirectHandler2), authenticationHandler, authenticationHandler2, userTokenHandler2, httpParams);
    }

    private void abortConnection() {
        ManagedClientConnection managedClientConnection = this.managedConn;
        if (managedClientConnection != null) {
            this.managedConn = null;
            try {
                managedClientConnection.abortConnection();
            } catch (IOException e) {
                if (this.log.isDebugEnabled()) {
                    this.log.debug(e.getMessage(), e);
                }
            }
            try {
                managedClientConnection.releaseConnection();
            } catch (IOException e2) {
                this.log.debug("Error releasing connection", e2);
            }
        }
    }

    private void invalidateAuthIfSuccessful(AuthState authState) {
        AuthScheme authScheme = authState.getAuthScheme();
        if (authScheme != null && authScheme.isConnectionBased() && authScheme.isComplete() && authState.getCredentials() != null) {
            authState.invalidate();
        }
    }

    private void processChallenges(Map<String, Header> map, AuthState authState, AuthenticationHandler authenticationHandler, HttpResponse httpResponse, HttpContext httpContext) {
        AuthScheme authScheme = authState.getAuthScheme();
        if (authScheme == null) {
            authScheme = authenticationHandler.selectScheme(map, httpResponse, httpContext);
            authState.setAuthScheme(authScheme);
        }
        String schemeName = authScheme.getSchemeName();
        Header header = map.get(schemeName.toLowerCase(Locale.ENGLISH));
        if (header != null) {
            authScheme.processChallenge(header);
            this.log.debug("Authorization challenge processed");
            return;
        }
        throw new AuthenticationException(ic.i(schemeName, " authorization challenge expected, but not found"));
    }

    private void tryConnect(RoutedRequest routedRequest, HttpContext httpContext) {
        HttpRoute route = routedRequest.getRoute();
        int i = 0;
        while (true) {
            i++;
            try {
                if (!this.managedConn.isOpen()) {
                    this.managedConn.open(route, httpContext, this.params);
                } else {
                    this.managedConn.setSocketTimeout(HttpConnectionParams.getSoTimeout(this.params));
                }
                establishRoute(route, httpContext);
                return;
            } catch (IOException e) {
                try {
                    this.managedConn.close();
                } catch (IOException unused) {
                }
                if (this.retryHandler.retryRequest(e, i, httpContext)) {
                    if (this.log.isInfoEnabled()) {
                        Log log2 = this.log;
                        StringBuilder q = ic.q("I/O exception (");
                        q.append(e.getClass().getName());
                        q.append(") caught when connecting to the target host: ");
                        q.append(e.getMessage());
                        log2.info(q.toString());
                    }
                    if (this.log.isDebugEnabled()) {
                        this.log.debug(e.getMessage(), e);
                    }
                    this.log.info("Retrying connect");
                } else {
                    throw e;
                }
            }
        }
    }

    private HttpResponse tryExecute(RoutedRequest routedRequest, HttpContext httpContext) {
        RequestWrapper request = routedRequest.getRequest();
        HttpRoute route = routedRequest.getRoute();
        IOException e = null;
        while (true) {
            this.execCount++;
            request.incrementExecCount();
            if (!request.isRepeatable()) {
                this.log.debug("Cannot retry non-repeatable request");
                if (e != null) {
                    throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed.", e);
                }
                throw new NonRepeatableRequestException("Cannot retry request with a non-repeatable request entity.");
            }
            try {
                if (!this.managedConn.isOpen()) {
                    if (!route.isTunnelled()) {
                        this.log.debug("Reopening the direct connection.");
                        this.managedConn.open(route, httpContext, this.params);
                    } else {
                        this.log.debug("Proxied connection. Need to start over.");
                        return null;
                    }
                }
                if (this.log.isDebugEnabled()) {
                    this.log.debug("Attempt " + this.execCount + " to execute request");
                }
                return this.requestExec.execute(request, this.managedConn, httpContext);
            } catch (IOException e2) {
                e = e2;
                this.log.debug("Closing the connection.");
                try {
                    this.managedConn.close();
                } catch (IOException unused) {
                }
                if (this.retryHandler.retryRequest(e, request.getExecCount(), httpContext)) {
                    if (this.log.isInfoEnabled()) {
                        Log log2 = this.log;
                        StringBuilder q = ic.q("I/O exception (");
                        q.append(e.getClass().getName());
                        q.append(") caught when processing request: ");
                        q.append(e.getMessage());
                        log2.info(q.toString());
                    }
                    if (this.log.isDebugEnabled()) {
                        this.log.debug(e.getMessage(), e);
                    }
                    this.log.info("Retrying request");
                } else {
                    throw e;
                }
            }
        }
    }

    private void updateAuthState(AuthState authState, HttpHost httpHost, CredentialsProvider credentialsProvider) {
        if (authState.isValid()) {
            String hostName = httpHost.getHostName();
            int port = httpHost.getPort();
            if (port < 0) {
                port = this.connManager.getSchemeRegistry().getScheme(httpHost).getDefaultPort();
            }
            AuthScheme authScheme = authState.getAuthScheme();
            AuthScope authScope = new AuthScope(hostName, port, authScheme.getRealm(), authScheme.getSchemeName());
            if (this.log.isDebugEnabled()) {
                Log log2 = this.log;
                log2.debug("Authentication scope: " + authScope);
            }
            Credentials credentials = authState.getCredentials();
            if (credentials == null) {
                credentials = credentialsProvider.getCredentials(authScope);
                if (this.log.isDebugEnabled()) {
                    if (credentials != null) {
                        this.log.debug("Found credentials");
                    } else {
                        this.log.debug("Credentials not found");
                    }
                }
            } else if (authScheme.isComplete()) {
                this.log.debug("Authentication failed");
                credentials = null;
            }
            authState.setAuthScope(authScope);
            authState.setCredentials(credentials);
        }
    }

    private RequestWrapper wrapRequest(HttpRequest httpRequest) {
        if (httpRequest instanceof HttpEntityEnclosingRequest) {
            return new EntityEnclosingRequestWrapper((HttpEntityEnclosingRequest) httpRequest);
        }
        return new RequestWrapper(httpRequest);
    }

    /* access modifiers changed from: protected */
    public HttpRequest createConnectRequest(HttpRoute httpRoute, HttpContext httpContext) {
        HttpHost targetHost = httpRoute.getTargetHost();
        String hostName = targetHost.getHostName();
        int port = targetHost.getPort();
        if (port < 0) {
            port = this.connManager.getSchemeRegistry().getScheme(targetHost.getSchemeName()).getDefaultPort();
        }
        StringBuilder sb = new StringBuilder(hostName.length() + 6);
        sb.append(hostName);
        sb.append(':');
        sb.append(Integer.toString(port));
        return new BasicHttpRequest("CONNECT", sb.toString(), HttpProtocolParams.getVersion(this.params));
    }

    /* access modifiers changed from: protected */
    public boolean createTunnelToProxy(HttpRoute httpRoute, int i, HttpContext httpContext) {
        throw new HttpException("Proxy chains are not supported.");
    }

    /* access modifiers changed from: protected */
    public boolean createTunnelToTarget(HttpRoute httpRoute, HttpContext httpContext) {
        HttpHost proxyHost = httpRoute.getProxyHost();
        HttpHost targetHost = httpRoute.getTargetHost();
        boolean z = false;
        HttpResponse httpResponse = null;
        while (true) {
            if (z) {
                break;
            }
            if (!this.managedConn.isOpen()) {
                this.managedConn.open(httpRoute, httpContext, this.params);
            }
            HttpRequest createConnectRequest = createConnectRequest(httpRoute, httpContext);
            createConnectRequest.setParams(this.params);
            httpContext.setAttribute(ExecutionContext.HTTP_TARGET_HOST, targetHost);
            httpContext.setAttribute(ExecutionContext.HTTP_PROXY_HOST, proxyHost);
            httpContext.setAttribute(ExecutionContext.HTTP_CONNECTION, this.managedConn);
            httpContext.setAttribute(ClientContext.TARGET_AUTH_STATE, this.targetAuthState);
            httpContext.setAttribute(ClientContext.PROXY_AUTH_STATE, this.proxyAuthState);
            httpContext.setAttribute(ExecutionContext.HTTP_REQUEST, createConnectRequest);
            this.requestExec.preProcess(createConnectRequest, this.httpProcessor, httpContext);
            httpResponse = this.requestExec.execute(createConnectRequest, this.managedConn, httpContext);
            httpResponse.setParams(this.params);
            this.requestExec.postProcess(httpResponse, this.httpProcessor, httpContext);
            if (httpResponse.getStatusLine().getStatusCode() >= 200) {
                CredentialsProvider credentialsProvider = (CredentialsProvider) httpContext.getAttribute(ClientContext.CREDS_PROVIDER);
                if (credentialsProvider != null && HttpClientParams.isAuthenticating(this.params)) {
                    if (this.proxyAuthHandler.isAuthenticationRequested(httpResponse, httpContext)) {
                        this.log.debug("Proxy requested authentication");
                        try {
                            processChallenges(this.proxyAuthHandler.getChallenges(httpResponse, httpContext), this.proxyAuthState, this.proxyAuthHandler, httpResponse, httpContext);
                        } catch (AuthenticationException e) {
                            if (this.log.isWarnEnabled()) {
                                Log log2 = this.log;
                                StringBuilder q = ic.q("Authentication error: ");
                                q.append(e.getMessage());
                                log2.warn(q.toString());
                                break;
                            }
                        }
                        updateAuthState(this.proxyAuthState, proxyHost, credentialsProvider);
                        if (this.proxyAuthState.getCredentials() != null) {
                            if (this.reuseStrategy.keepAlive(httpResponse, httpContext)) {
                                this.log.debug("Connection kept alive");
                                EntityUtils.consume(httpResponse.getEntity());
                            } else {
                                this.managedConn.close();
                            }
                            z = false;
                        }
                    } else {
                        this.proxyAuthState.setAuthScope(null);
                    }
                }
                z = true;
            } else {
                StringBuilder q2 = ic.q("Unexpected response to CONNECT request: ");
                q2.append(httpResponse.getStatusLine());
                throw new HttpException(q2.toString());
            }
        }
        if (httpResponse.getStatusLine().getStatusCode() > 299) {
            HttpEntity entity = httpResponse.getEntity();
            if (entity != null) {
                httpResponse.setEntity(new BufferedHttpEntity(entity));
            }
            this.managedConn.close();
            StringBuilder q3 = ic.q("CONNECT refused by proxy: ");
            q3.append(httpResponse.getStatusLine());
            throw new TunnelRefusedException(q3.toString(), httpResponse);
        }
        this.managedConn.markReusable();
        return false;
    }

    /* access modifiers changed from: protected */
    public HttpRoute determineRoute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        if (httpHost == null) {
            httpHost = (HttpHost) httpRequest.getParams().getParameter(ClientPNames.DEFAULT_HOST);
        }
        if (httpHost != null) {
            return this.routePlanner.determineRoute(httpHost, httpRequest, httpContext);
        }
        throw new IllegalStateException("Target host must not be null, or set in parameters.");
    }

    /* access modifiers changed from: protected */
    public void establishRoute(HttpRoute httpRoute, HttpContext httpContext) {
        int nextStep;
        BasicRouteDirector basicRouteDirector = new BasicRouteDirector();
        do {
            HttpRoute route = this.managedConn.getRoute();
            nextStep = basicRouteDirector.nextStep(httpRoute, route);
            switch (nextStep) {
                case -1:
                    throw new HttpException("Unable to establish route: planned = " + httpRoute + "; current = " + route);
                case 0:
                    break;
                case 1:
                case 2:
                    this.managedConn.open(httpRoute, httpContext, this.params);
                    continue;
                case 3:
                    boolean createTunnelToTarget = createTunnelToTarget(httpRoute, httpContext);
                    this.log.debug("Tunnel to target created.");
                    this.managedConn.tunnelTarget(createTunnelToTarget, this.params);
                    continue;
                case 4:
                    int hopCount = route.getHopCount() - 1;
                    boolean createTunnelToProxy = createTunnelToProxy(httpRoute, hopCount, httpContext);
                    this.log.debug("Tunnel to proxy created.");
                    this.managedConn.tunnelProxy(httpRoute.getHopTarget(hopCount), createTunnelToProxy, this.params);
                    continue;
                case 5:
                    this.managedConn.layerProtocol(httpContext, this.params);
                    continue;
                default:
                    throw new IllegalStateException("Unknown step indicator " + nextStep + " from RouteDirector.");
            }
        } while (nextStep > 0);
    }

    @Override // org.apache.http.client.RequestDirector
    public HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        String str;
        int port;
        RequestWrapper wrapRequest = wrapRequest(httpRequest);
        wrapRequest.setParams(this.params);
        HttpRoute determineRoute = determineRoute(httpHost, wrapRequest, httpContext);
        HttpHost httpHost2 = (HttpHost) httpRequest.getParams().getParameter(ClientPNames.VIRTUAL_HOST);
        this.virtualHost = httpHost2;
        if (!(httpHost2 == null || httpHost2.getPort() != -1 || (port = httpHost.getPort()) == -1)) {
            this.virtualHost = new HttpHost(this.virtualHost.getHostName(), port, this.virtualHost.getSchemeName());
        }
        RoutedRequest routedRequest = new RoutedRequest(wrapRequest, determineRoute);
        HttpResponse httpResponse = null;
        boolean z = false;
        boolean z2 = false;
        while (!z) {
            try {
                RequestWrapper request = routedRequest.getRequest();
                HttpRoute route = routedRequest.getRoute();
                Object attribute = httpContext.getAttribute(ClientContext.USER_TOKEN);
                if (this.managedConn == null) {
                    ClientConnectionRequest requestConnection = this.connManager.requestConnection(route, attribute);
                    if (httpRequest instanceof AbortableHttpRequest) {
                        ((AbortableHttpRequest) httpRequest).setConnectionRequest(requestConnection);
                    }
                    try {
                        this.managedConn = requestConnection.getConnection(ConnManagerParams.getTimeout(this.params), TimeUnit.MILLISECONDS);
                        if (HttpConnectionParams.isStaleCheckingEnabled(this.params) && this.managedConn.isOpen()) {
                            this.log.debug("Stale connection check");
                            if (this.managedConn.isStale()) {
                                this.log.debug("Stale connection detected");
                                this.managedConn.close();
                            }
                        }
                    } catch (InterruptedException e) {
                        InterruptedIOException interruptedIOException = new InterruptedIOException();
                        interruptedIOException.initCause(e);
                        throw interruptedIOException;
                    }
                }
                if (httpRequest instanceof AbortableHttpRequest) {
                    ((AbortableHttpRequest) httpRequest).setReleaseTrigger(this.managedConn);
                }
                try {
                    tryConnect(routedRequest, httpContext);
                    request.resetHeaders();
                    rewriteRequestURI(request, route);
                    HttpHost httpHost3 = this.virtualHost;
                    if (httpHost3 == null) {
                        httpHost3 = route.getTargetHost();
                    }
                    HttpHost proxyHost = route.getProxyHost();
                    httpContext.setAttribute(ExecutionContext.HTTP_TARGET_HOST, httpHost3);
                    httpContext.setAttribute(ExecutionContext.HTTP_PROXY_HOST, proxyHost);
                    httpContext.setAttribute(ExecutionContext.HTTP_CONNECTION, this.managedConn);
                    httpContext.setAttribute(ClientContext.TARGET_AUTH_STATE, this.targetAuthState);
                    httpContext.setAttribute(ClientContext.PROXY_AUTH_STATE, this.proxyAuthState);
                    this.requestExec.preProcess(request, this.httpProcessor, httpContext);
                    httpResponse = tryExecute(routedRequest, httpContext);
                    if (httpResponse != null) {
                        httpResponse.setParams(this.params);
                        this.requestExec.postProcess(httpResponse, this.httpProcessor, httpContext);
                        z2 = this.reuseStrategy.keepAlive(httpResponse, httpContext);
                        if (z2) {
                            long keepAliveDuration = this.keepAliveStrategy.getKeepAliveDuration(httpResponse, httpContext);
                            if (this.log.isDebugEnabled()) {
                                if (keepAliveDuration > 0) {
                                    str = "for " + keepAliveDuration + " " + TimeUnit.MILLISECONDS;
                                } else {
                                    str = "indefinitely";
                                }
                                this.log.debug("Connection can be kept alive " + str);
                            }
                            this.managedConn.setIdleDuration(keepAliveDuration, TimeUnit.MILLISECONDS);
                        }
                        RoutedRequest handleResponse = handleResponse(routedRequest, httpResponse, httpContext);
                        if (handleResponse == null) {
                            z = true;
                        } else {
                            if (z2) {
                                EntityUtils.consume(httpResponse.getEntity());
                                this.managedConn.markReusable();
                            } else {
                                this.managedConn.close();
                                invalidateAuthIfSuccessful(this.proxyAuthState);
                                invalidateAuthIfSuccessful(this.targetAuthState);
                            }
                            if (!handleResponse.getRoute().equals(routedRequest.getRoute())) {
                                releaseConnection();
                            }
                            routedRequest = handleResponse;
                        }
                        if (this.managedConn != null && attribute == null) {
                            Object userToken = this.userTokenHandler.getUserToken(httpContext);
                            httpContext.setAttribute(ClientContext.USER_TOKEN, userToken);
                            if (userToken != null) {
                                this.managedConn.setState(userToken);
                            }
                        }
                    }
                } catch (TunnelRefusedException e2) {
                    if (this.log.isDebugEnabled()) {
                        this.log.debug(e2.getMessage());
                    }
                    httpResponse = e2.getResponse();
                }
            } catch (ConnectionShutdownException e3) {
                InterruptedIOException interruptedIOException2 = new InterruptedIOException("Connection has been shut down");
                interruptedIOException2.initCause(e3);
                throw interruptedIOException2;
            } catch (HttpException e4) {
                abortConnection();
                throw e4;
            } catch (IOException e5) {
                abortConnection();
                throw e5;
            } catch (RuntimeException e6) {
                abortConnection();
                throw e6;
            }
        }
        if (httpResponse == null || httpResponse.getEntity() == null || !httpResponse.getEntity().isStreaming()) {
            if (z2) {
                this.managedConn.markReusable();
            }
            releaseConnection();
        } else {
            httpResponse.setEntity(new BasicManagedEntity(httpResponse.getEntity(), this.managedConn, z2));
        }
        return httpResponse;
    }

    /* access modifiers changed from: protected */
    public RoutedRequest handleResponse(RoutedRequest routedRequest, HttpResponse httpResponse, HttpContext httpContext) {
        HttpRoute route = routedRequest.getRoute();
        RequestWrapper request = routedRequest.getRequest();
        HttpParams params2 = request.getParams();
        if (!HttpClientParams.isRedirecting(params2) || !this.redirectStrategy.isRedirected(request, httpResponse, httpContext)) {
            CredentialsProvider credentialsProvider = (CredentialsProvider) httpContext.getAttribute(ClientContext.CREDS_PROVIDER);
            if (credentialsProvider != null && HttpClientParams.isAuthenticating(params2)) {
                if (this.targetAuthHandler.isAuthenticationRequested(httpResponse, httpContext)) {
                    HttpHost httpHost = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_TARGET_HOST);
                    if (httpHost == null) {
                        httpHost = route.getTargetHost();
                    }
                    this.log.debug("Target requested authentication");
                    try {
                        processChallenges(this.targetAuthHandler.getChallenges(httpResponse, httpContext), this.targetAuthState, this.targetAuthHandler, httpResponse, httpContext);
                    } catch (AuthenticationException e) {
                        if (this.log.isWarnEnabled()) {
                            Log log2 = this.log;
                            StringBuilder q = ic.q("Authentication error: ");
                            q.append(e.getMessage());
                            log2.warn(q.toString());
                            return null;
                        }
                    }
                    updateAuthState(this.targetAuthState, httpHost, credentialsProvider);
                    if (this.targetAuthState.getCredentials() != null) {
                        return routedRequest;
                    }
                    return null;
                }
                this.targetAuthState.setAuthScope(null);
                if (this.proxyAuthHandler.isAuthenticationRequested(httpResponse, httpContext)) {
                    HttpHost proxyHost = route.getProxyHost();
                    this.log.debug("Proxy requested authentication");
                    try {
                        processChallenges(this.proxyAuthHandler.getChallenges(httpResponse, httpContext), this.proxyAuthState, this.proxyAuthHandler, httpResponse, httpContext);
                    } catch (AuthenticationException e2) {
                        if (this.log.isWarnEnabled()) {
                            Log log3 = this.log;
                            StringBuilder q2 = ic.q("Authentication error: ");
                            q2.append(e2.getMessage());
                            log3.warn(q2.toString());
                            return null;
                        }
                    }
                    updateAuthState(this.proxyAuthState, proxyHost, credentialsProvider);
                    if (this.proxyAuthState.getCredentials() != null) {
                        return routedRequest;
                    }
                    return null;
                }
                this.proxyAuthState.setAuthScope(null);
            }
            return null;
        }
        int i = this.redirectCount;
        if (i < this.maxRedirects) {
            this.redirectCount = i + 1;
            this.virtualHost = null;
            HttpUriRequest redirect = this.redirectStrategy.getRedirect(request, httpResponse, httpContext);
            redirect.setHeaders(request.getOriginal().getAllHeaders());
            URI uri = redirect.getURI();
            if (uri.getHost() != null) {
                HttpHost httpHost2 = new HttpHost(uri.getHost(), uri.getPort(), uri.getScheme());
                this.targetAuthState.setAuthScope(null);
                this.proxyAuthState.setAuthScope(null);
                if (!route.getTargetHost().equals(httpHost2)) {
                    this.targetAuthState.invalidate();
                    AuthScheme authScheme = this.proxyAuthState.getAuthScheme();
                    if (authScheme != null && authScheme.isConnectionBased()) {
                        this.proxyAuthState.invalidate();
                    }
                }
                RequestWrapper wrapRequest = wrapRequest(redirect);
                wrapRequest.setParams(params2);
                HttpRoute determineRoute = determineRoute(httpHost2, wrapRequest, httpContext);
                RoutedRequest routedRequest2 = new RoutedRequest(wrapRequest, determineRoute);
                if (this.log.isDebugEnabled()) {
                    Log log4 = this.log;
                    log4.debug("Redirecting to '" + uri + "' via " + determineRoute);
                }
                return routedRequest2;
            }
            throw new ProtocolException("Redirect URI does not specify a valid host name: " + uri);
        }
        throw new RedirectException(ic.k(ic.q("Maximum redirects ("), this.maxRedirects, ") exceeded"));
    }

    /* access modifiers changed from: protected */
    public void releaseConnection() {
        try {
            this.managedConn.releaseConnection();
        } catch (IOException e) {
            this.log.debug("IOException releasing connection", e);
        }
        this.managedConn = null;
    }

    /* access modifiers changed from: protected */
    public void rewriteRequestURI(RequestWrapper requestWrapper, HttpRoute httpRoute) {
        try {
            URI uri = requestWrapper.getURI();
            if (httpRoute.getProxyHost() == null || httpRoute.isTunnelled()) {
                if (uri.isAbsolute()) {
                    requestWrapper.setURI(URIUtils.rewriteURI(uri, null));
                }
            } else if (!uri.isAbsolute()) {
                requestWrapper.setURI(URIUtils.rewriteURI(uri, httpRoute.getTargetHost()));
            }
        } catch (URISyntaxException e) {
            StringBuilder q = ic.q("Invalid URI: ");
            q.append(requestWrapper.getRequestLine().getUri());
            throw new ProtocolException(q.toString(), e);
        }
    }

    public DefaultRequestDirector(Log log2, HttpRequestExecutor httpRequestExecutor, ClientConnectionManager clientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpRoutePlanner httpRoutePlanner, HttpProcessor httpProcessor2, HttpRequestRetryHandler httpRequestRetryHandler, RedirectStrategy redirectStrategy2, AuthenticationHandler authenticationHandler, AuthenticationHandler authenticationHandler2, UserTokenHandler userTokenHandler2, HttpParams httpParams) {
        this.redirectHandler = null;
        if (log2 == null) {
            throw new IllegalArgumentException("Log may not be null.");
        } else if (httpRequestExecutor == null) {
            throw new IllegalArgumentException("Request executor may not be null.");
        } else if (clientConnectionManager == null) {
            throw new IllegalArgumentException("Client connection manager may not be null.");
        } else if (connectionReuseStrategy == null) {
            throw new IllegalArgumentException("Connection reuse strategy may not be null.");
        } else if (connectionKeepAliveStrategy == null) {
            throw new IllegalArgumentException("Connection keep alive strategy may not be null.");
        } else if (httpRoutePlanner == null) {
            throw new IllegalArgumentException("Route planner may not be null.");
        } else if (httpProcessor2 == null) {
            throw new IllegalArgumentException("HTTP protocol processor may not be null.");
        } else if (httpRequestRetryHandler == null) {
            throw new IllegalArgumentException("HTTP request retry handler may not be null.");
        } else if (redirectStrategy2 == null) {
            throw new IllegalArgumentException("Redirect strategy may not be null.");
        } else if (authenticationHandler == null) {
            throw new IllegalArgumentException("Target authentication handler may not be null.");
        } else if (authenticationHandler2 == null) {
            throw new IllegalArgumentException("Proxy authentication handler may not be null.");
        } else if (userTokenHandler2 == null) {
            throw new IllegalArgumentException("User token handler may not be null.");
        } else if (httpParams != null) {
            this.log = log2;
            this.requestExec = httpRequestExecutor;
            this.connManager = clientConnectionManager;
            this.reuseStrategy = connectionReuseStrategy;
            this.keepAliveStrategy = connectionKeepAliveStrategy;
            this.routePlanner = httpRoutePlanner;
            this.httpProcessor = httpProcessor2;
            this.retryHandler = httpRequestRetryHandler;
            this.redirectStrategy = redirectStrategy2;
            this.targetAuthHandler = authenticationHandler;
            this.proxyAuthHandler = authenticationHandler2;
            this.userTokenHandler = userTokenHandler2;
            this.params = httpParams;
            this.managedConn = null;
            this.execCount = 0;
            this.redirectCount = 0;
            this.maxRedirects = httpParams.getIntParameter(ClientPNames.MAX_REDIRECTS, 100);
            this.targetAuthState = new AuthState();
            this.proxyAuthState = new AuthState();
        } else {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
    }
}
