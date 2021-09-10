package org.apache.http.impl.client;

import java.io.IOException;
import java.lang.reflect.UndeclaredThrowableException;
import java.net.URI;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.ConnectionReuseStrategy;
import org.apache.http.HttpException;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.GuardedBy;
import org.apache.http.annotation.ThreadSafe;
import org.apache.http.auth.AuthSchemeRegistry;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.RequestDirector;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.UserTokenHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.AuthPolicy;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.params.CookiePolicy;
import org.apache.http.client.protocol.ClientContext;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ClientConnectionManagerFactory;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.conn.routing.HttpRoutePlanner;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.cookie.CookieSpecRegistry;
import org.apache.http.impl.DefaultConnectionReuseStrategy;
import org.apache.http.impl.auth.BasicSchemeFactory;
import org.apache.http.impl.auth.DigestSchemeFactory;
import org.apache.http.impl.auth.NTLMSchemeFactory;
import org.apache.http.impl.auth.NegotiateSchemeFactory;
import org.apache.http.impl.conn.DefaultHttpRoutePlanner;
import org.apache.http.impl.conn.SchemeRegistryFactory;
import org.apache.http.impl.conn.SingleClientConnManager;
import org.apache.http.impl.cookie.BestMatchSpecFactory;
import org.apache.http.impl.cookie.BrowserCompatSpecFactory;
import org.apache.http.impl.cookie.IgnoreSpecFactory;
import org.apache.http.impl.cookie.NetscapeDraftSpecFactory;
import org.apache.http.impl.cookie.RFC2109SpecFactory;
import org.apache.http.impl.cookie.RFC2965SpecFactory;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.DefaultedHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.HttpProcessor;
import org.apache.http.protocol.HttpRequestExecutor;
import org.apache.http.protocol.ImmutableHttpProcessor;
import org.apache.http.util.EntityUtils;

@ThreadSafe
public abstract class AbstractHttpClient implements HttpClient {
    @GuardedBy("this")
    private ClientConnectionManager connManager;
    @GuardedBy("this")
    private CookieStore cookieStore;
    @GuardedBy("this")
    private CredentialsProvider credsProvider;
    @GuardedBy("this")
    private HttpParams defaultParams;
    @GuardedBy("this")
    private ConnectionKeepAliveStrategy keepAliveStrategy;
    private final Log log = LogFactory.getLog(getClass());
    @GuardedBy("this")
    private BasicHttpProcessor mutableProcessor;
    @GuardedBy("this")
    private ImmutableHttpProcessor protocolProcessor;
    @GuardedBy("this")
    private AuthenticationHandler proxyAuthHandler;
    @GuardedBy("this")
    private RedirectStrategy redirectStrategy;
    @GuardedBy("this")
    private HttpRequestExecutor requestExec;
    @GuardedBy("this")
    private HttpRequestRetryHandler retryHandler;
    @GuardedBy("this")
    private ConnectionReuseStrategy reuseStrategy;
    @GuardedBy("this")
    private HttpRoutePlanner routePlanner;
    @GuardedBy("this")
    private AuthSchemeRegistry supportedAuthSchemes;
    @GuardedBy("this")
    private CookieSpecRegistry supportedCookieSpecs;
    @GuardedBy("this")
    private AuthenticationHandler targetAuthHandler;
    @GuardedBy("this")
    private UserTokenHandler userTokenHandler;

    protected AbstractHttpClient(ClientConnectionManager clientConnectionManager, HttpParams httpParams) {
        this.defaultParams = httpParams;
        this.connManager = clientConnectionManager;
    }

    private static HttpHost determineTarget(HttpUriRequest httpUriRequest) {
        URI uri = httpUriRequest.getURI();
        if (!uri.isAbsolute()) {
            return null;
        }
        HttpHost extractHost = URIUtils.extractHost(uri);
        if (extractHost != null) {
            return extractHost;
        }
        throw new ClientProtocolException("URI does not specify a valid host name: " + uri);
    }

    private final synchronized HttpProcessor getProtocolProcessor() {
        if (this.protocolProcessor == null) {
            BasicHttpProcessor httpProcessor = getHttpProcessor();
            int requestInterceptorCount = httpProcessor.getRequestInterceptorCount();
            HttpRequestInterceptor[] httpRequestInterceptorArr = new HttpRequestInterceptor[requestInterceptorCount];
            for (int i = 0; i < requestInterceptorCount; i++) {
                httpRequestInterceptorArr[i] = httpProcessor.getRequestInterceptor(i);
            }
            int responseInterceptorCount = httpProcessor.getResponseInterceptorCount();
            HttpResponseInterceptor[] httpResponseInterceptorArr = new HttpResponseInterceptor[responseInterceptorCount];
            for (int i2 = 0; i2 < responseInterceptorCount; i2++) {
                httpResponseInterceptorArr[i2] = httpProcessor.getResponseInterceptor(i2);
            }
            this.protocolProcessor = new ImmutableHttpProcessor(httpRequestInterceptorArr, httpResponseInterceptorArr);
        }
        return this.protocolProcessor;
    }

    public synchronized void addRequestInterceptor(HttpRequestInterceptor httpRequestInterceptor) {
        getHttpProcessor().addInterceptor(httpRequestInterceptor);
        this.protocolProcessor = null;
    }

    public synchronized void addResponseInterceptor(HttpResponseInterceptor httpResponseInterceptor) {
        getHttpProcessor().addInterceptor(httpResponseInterceptor);
        this.protocolProcessor = null;
    }

    public synchronized void clearRequestInterceptors() {
        getHttpProcessor().clearRequestInterceptors();
        this.protocolProcessor = null;
    }

    public synchronized void clearResponseInterceptors() {
        getHttpProcessor().clearResponseInterceptors();
        this.protocolProcessor = null;
    }

    /* access modifiers changed from: protected */
    public AuthSchemeRegistry createAuthSchemeRegistry() {
        AuthSchemeRegistry authSchemeRegistry = new AuthSchemeRegistry();
        authSchemeRegistry.register(AuthPolicy.BASIC, new BasicSchemeFactory());
        authSchemeRegistry.register(AuthPolicy.DIGEST, new DigestSchemeFactory());
        authSchemeRegistry.register(AuthPolicy.NTLM, new NTLMSchemeFactory());
        authSchemeRegistry.register(AuthPolicy.SPNEGO, new NegotiateSchemeFactory());
        return authSchemeRegistry;
    }

    /* access modifiers changed from: protected */
    public ClientConnectionManager createClientConnectionManager() {
        ClientConnectionManagerFactory clientConnectionManagerFactory;
        SchemeRegistry createDefault = SchemeRegistryFactory.createDefault();
        HttpParams params = getParams();
        String str = (String) params.getParameter(ClientPNames.CONNECTION_MANAGER_FACTORY_CLASS_NAME);
        if (str != null) {
            try {
                clientConnectionManagerFactory = (ClientConnectionManagerFactory) Class.forName(str).newInstance();
            } catch (ClassNotFoundException unused) {
                throw new IllegalStateException(ic.i("Invalid class name: ", str));
            } catch (IllegalAccessException e) {
                throw new IllegalAccessError(e.getMessage());
            } catch (InstantiationException e2) {
                throw new InstantiationError(e2.getMessage());
            }
        } else {
            clientConnectionManagerFactory = null;
        }
        if (clientConnectionManagerFactory != null) {
            return clientConnectionManagerFactory.newInstance(params, createDefault);
        }
        return new SingleClientConnManager(createDefault);
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public RequestDirector createClientRequestDirector(HttpRequestExecutor httpRequestExecutor, ClientConnectionManager clientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpRoutePlanner httpRoutePlanner, HttpProcessor httpProcessor, HttpRequestRetryHandler httpRequestRetryHandler, RedirectHandler redirectHandler, AuthenticationHandler authenticationHandler, AuthenticationHandler authenticationHandler2, UserTokenHandler userTokenHandler2, HttpParams httpParams) {
        return new DefaultRequestDirector(httpRequestExecutor, clientConnectionManager, connectionReuseStrategy, connectionKeepAliveStrategy, httpRoutePlanner, httpProcessor, httpRequestRetryHandler, redirectHandler, authenticationHandler, authenticationHandler2, userTokenHandler2, httpParams);
    }

    /* access modifiers changed from: protected */
    public ConnectionKeepAliveStrategy createConnectionKeepAliveStrategy() {
        return new DefaultConnectionKeepAliveStrategy();
    }

    /* access modifiers changed from: protected */
    public ConnectionReuseStrategy createConnectionReuseStrategy() {
        return new DefaultConnectionReuseStrategy();
    }

    /* access modifiers changed from: protected */
    public CookieSpecRegistry createCookieSpecRegistry() {
        CookieSpecRegistry cookieSpecRegistry = new CookieSpecRegistry();
        cookieSpecRegistry.register(CookiePolicy.BEST_MATCH, new BestMatchSpecFactory());
        cookieSpecRegistry.register(CookiePolicy.BROWSER_COMPATIBILITY, new BrowserCompatSpecFactory());
        cookieSpecRegistry.register(CookiePolicy.NETSCAPE, new NetscapeDraftSpecFactory());
        cookieSpecRegistry.register(CookiePolicy.RFC_2109, new RFC2109SpecFactory());
        cookieSpecRegistry.register(CookiePolicy.RFC_2965, new RFC2965SpecFactory());
        cookieSpecRegistry.register(CookiePolicy.IGNORE_COOKIES, new IgnoreSpecFactory());
        return cookieSpecRegistry;
    }

    /* access modifiers changed from: protected */
    public CookieStore createCookieStore() {
        return new BasicCookieStore();
    }

    /* access modifiers changed from: protected */
    public CredentialsProvider createCredentialsProvider() {
        return new BasicCredentialsProvider();
    }

    /* access modifiers changed from: protected */
    public HttpContext createHttpContext() {
        BasicHttpContext basicHttpContext = new BasicHttpContext();
        basicHttpContext.setAttribute(ClientContext.SCHEME_REGISTRY, getConnectionManager().getSchemeRegistry());
        basicHttpContext.setAttribute(ClientContext.AUTHSCHEME_REGISTRY, getAuthSchemes());
        basicHttpContext.setAttribute(ClientContext.COOKIESPEC_REGISTRY, getCookieSpecs());
        basicHttpContext.setAttribute(ClientContext.COOKIE_STORE, getCookieStore());
        basicHttpContext.setAttribute(ClientContext.CREDS_PROVIDER, getCredentialsProvider());
        return basicHttpContext;
    }

    /* access modifiers changed from: protected */
    public abstract HttpParams createHttpParams();

    /* access modifiers changed from: protected */
    public abstract BasicHttpProcessor createHttpProcessor();

    /* access modifiers changed from: protected */
    public HttpRequestRetryHandler createHttpRequestRetryHandler() {
        return new DefaultHttpRequestRetryHandler();
    }

    /* access modifiers changed from: protected */
    public HttpRoutePlanner createHttpRoutePlanner() {
        return new DefaultHttpRoutePlanner(getConnectionManager().getSchemeRegistry());
    }

    /* access modifiers changed from: protected */
    public AuthenticationHandler createProxyAuthenticationHandler() {
        return new DefaultProxyAuthenticationHandler();
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public RedirectHandler createRedirectHandler() {
        return new DefaultRedirectHandler();
    }

    /* access modifiers changed from: protected */
    public HttpRequestExecutor createRequestExecutor() {
        return new HttpRequestExecutor();
    }

    /* access modifiers changed from: protected */
    public AuthenticationHandler createTargetAuthenticationHandler() {
        return new DefaultTargetAuthenticationHandler();
    }

    /* access modifiers changed from: protected */
    public UserTokenHandler createUserTokenHandler() {
        return new DefaultUserTokenHandler();
    }

    /* access modifiers changed from: protected */
    public HttpParams determineParams(HttpRequest httpRequest) {
        return new ClientParamsStack(null, getParams(), httpRequest.getParams(), null);
    }

    @Override // org.apache.http.client.HttpClient
    public final HttpResponse execute(HttpUriRequest httpUriRequest) {
        return execute(httpUriRequest, (HttpContext) null);
    }

    public final synchronized AuthSchemeRegistry getAuthSchemes() {
        if (this.supportedAuthSchemes == null) {
            this.supportedAuthSchemes = createAuthSchemeRegistry();
        }
        return this.supportedAuthSchemes;
    }

    public final synchronized ConnectionKeepAliveStrategy getConnectionKeepAliveStrategy() {
        if (this.keepAliveStrategy == null) {
            this.keepAliveStrategy = createConnectionKeepAliveStrategy();
        }
        return this.keepAliveStrategy;
    }

    @Override // org.apache.http.client.HttpClient
    public final synchronized ClientConnectionManager getConnectionManager() {
        if (this.connManager == null) {
            this.connManager = createClientConnectionManager();
        }
        return this.connManager;
    }

    public final synchronized ConnectionReuseStrategy getConnectionReuseStrategy() {
        if (this.reuseStrategy == null) {
            this.reuseStrategy = createConnectionReuseStrategy();
        }
        return this.reuseStrategy;
    }

    public final synchronized CookieSpecRegistry getCookieSpecs() {
        if (this.supportedCookieSpecs == null) {
            this.supportedCookieSpecs = createCookieSpecRegistry();
        }
        return this.supportedCookieSpecs;
    }

    public final synchronized CookieStore getCookieStore() {
        if (this.cookieStore == null) {
            this.cookieStore = createCookieStore();
        }
        return this.cookieStore;
    }

    public final synchronized CredentialsProvider getCredentialsProvider() {
        if (this.credsProvider == null) {
            this.credsProvider = createCredentialsProvider();
        }
        return this.credsProvider;
    }

    /* access modifiers changed from: protected */
    public final synchronized BasicHttpProcessor getHttpProcessor() {
        if (this.mutableProcessor == null) {
            this.mutableProcessor = createHttpProcessor();
        }
        return this.mutableProcessor;
    }

    public final synchronized HttpRequestRetryHandler getHttpRequestRetryHandler() {
        if (this.retryHandler == null) {
            this.retryHandler = createHttpRequestRetryHandler();
        }
        return this.retryHandler;
    }

    @Override // org.apache.http.client.HttpClient
    public final synchronized HttpParams getParams() {
        if (this.defaultParams == null) {
            this.defaultParams = createHttpParams();
        }
        return this.defaultParams;
    }

    public final synchronized AuthenticationHandler getProxyAuthenticationHandler() {
        if (this.proxyAuthHandler == null) {
            this.proxyAuthHandler = createProxyAuthenticationHandler();
        }
        return this.proxyAuthHandler;
    }

    @Deprecated
    public final synchronized RedirectHandler getRedirectHandler() {
        return createRedirectHandler();
    }

    public final synchronized RedirectStrategy getRedirectStrategy() {
        if (this.redirectStrategy == null) {
            this.redirectStrategy = new DefaultRedirectStrategy();
        }
        return this.redirectStrategy;
    }

    public final synchronized HttpRequestExecutor getRequestExecutor() {
        if (this.requestExec == null) {
            this.requestExec = createRequestExecutor();
        }
        return this.requestExec;
    }

    public synchronized HttpRequestInterceptor getRequestInterceptor(int i) {
        return getHttpProcessor().getRequestInterceptor(i);
    }

    public synchronized int getRequestInterceptorCount() {
        return getHttpProcessor().getRequestInterceptorCount();
    }

    public synchronized HttpResponseInterceptor getResponseInterceptor(int i) {
        return getHttpProcessor().getResponseInterceptor(i);
    }

    public synchronized int getResponseInterceptorCount() {
        return getHttpProcessor().getResponseInterceptorCount();
    }

    public final synchronized HttpRoutePlanner getRoutePlanner() {
        if (this.routePlanner == null) {
            this.routePlanner = createHttpRoutePlanner();
        }
        return this.routePlanner;
    }

    public final synchronized AuthenticationHandler getTargetAuthenticationHandler() {
        if (this.targetAuthHandler == null) {
            this.targetAuthHandler = createTargetAuthenticationHandler();
        }
        return this.targetAuthHandler;
    }

    public final synchronized UserTokenHandler getUserTokenHandler() {
        if (this.userTokenHandler == null) {
            this.userTokenHandler = createUserTokenHandler();
        }
        return this.userTokenHandler;
    }

    public synchronized void removeRequestInterceptorByClass(Class<? extends HttpRequestInterceptor> cls) {
        getHttpProcessor().removeRequestInterceptorByClass(cls);
        this.protocolProcessor = null;
    }

    public synchronized void removeResponseInterceptorByClass(Class<? extends HttpResponseInterceptor> cls) {
        getHttpProcessor().removeResponseInterceptorByClass(cls);
        this.protocolProcessor = null;
    }

    public synchronized void setAuthSchemes(AuthSchemeRegistry authSchemeRegistry) {
        this.supportedAuthSchemes = authSchemeRegistry;
    }

    public synchronized void setCookieSpecs(CookieSpecRegistry cookieSpecRegistry) {
        this.supportedCookieSpecs = cookieSpecRegistry;
    }

    public synchronized void setCookieStore(CookieStore cookieStore2) {
        this.cookieStore = cookieStore2;
    }

    public synchronized void setCredentialsProvider(CredentialsProvider credentialsProvider) {
        this.credsProvider = credentialsProvider;
    }

    public synchronized void setHttpRequestRetryHandler(HttpRequestRetryHandler httpRequestRetryHandler) {
        this.retryHandler = httpRequestRetryHandler;
    }

    public synchronized void setKeepAliveStrategy(ConnectionKeepAliveStrategy connectionKeepAliveStrategy) {
        this.keepAliveStrategy = connectionKeepAliveStrategy;
    }

    public synchronized void setParams(HttpParams httpParams) {
        this.defaultParams = httpParams;
    }

    public synchronized void setProxyAuthenticationHandler(AuthenticationHandler authenticationHandler) {
        this.proxyAuthHandler = authenticationHandler;
    }

    @Deprecated
    public synchronized void setRedirectHandler(RedirectHandler redirectHandler) {
        this.redirectStrategy = new DefaultRedirectStrategyAdaptor(redirectHandler);
    }

    public synchronized void setRedirectStrategy(RedirectStrategy redirectStrategy2) {
        this.redirectStrategy = redirectStrategy2;
    }

    public synchronized void setReuseStrategy(ConnectionReuseStrategy connectionReuseStrategy) {
        this.reuseStrategy = connectionReuseStrategy;
    }

    public synchronized void setRoutePlanner(HttpRoutePlanner httpRoutePlanner) {
        this.routePlanner = httpRoutePlanner;
    }

    public synchronized void setTargetAuthenticationHandler(AuthenticationHandler authenticationHandler) {
        this.targetAuthHandler = authenticationHandler;
    }

    public synchronized void setUserTokenHandler(UserTokenHandler userTokenHandler2) {
        this.userTokenHandler = userTokenHandler2;
    }

    /* access modifiers changed from: protected */
    public RequestDirector createClientRequestDirector(HttpRequestExecutor httpRequestExecutor, ClientConnectionManager clientConnectionManager, ConnectionReuseStrategy connectionReuseStrategy, ConnectionKeepAliveStrategy connectionKeepAliveStrategy, HttpRoutePlanner httpRoutePlanner, HttpProcessor httpProcessor, HttpRequestRetryHandler httpRequestRetryHandler, RedirectStrategy redirectStrategy2, AuthenticationHandler authenticationHandler, AuthenticationHandler authenticationHandler2, UserTokenHandler userTokenHandler2, HttpParams httpParams) {
        return new DefaultRequestDirector(this.log, httpRequestExecutor, clientConnectionManager, connectionReuseStrategy, connectionKeepAliveStrategy, httpRoutePlanner, httpProcessor, httpRequestRetryHandler, redirectStrategy2, authenticationHandler, authenticationHandler2, userTokenHandler2, httpParams);
    }

    @Override // org.apache.http.client.HttpClient
    public final HttpResponse execute(HttpUriRequest httpUriRequest, HttpContext httpContext) {
        if (httpUriRequest != null) {
            return execute(determineTarget(httpUriRequest), httpUriRequest, httpContext);
        }
        throw new IllegalArgumentException("Request must not be null.");
    }

    public synchronized void addRequestInterceptor(HttpRequestInterceptor httpRequestInterceptor, int i) {
        getHttpProcessor().addInterceptor(httpRequestInterceptor, i);
        this.protocolProcessor = null;
    }

    public synchronized void addResponseInterceptor(HttpResponseInterceptor httpResponseInterceptor, int i) {
        getHttpProcessor().addInterceptor(httpResponseInterceptor, i);
        this.protocolProcessor = null;
    }

    @Override // org.apache.http.client.HttpClient
    public final HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest) {
        return execute(httpHost, httpRequest, (HttpContext) null);
    }

    @Override // org.apache.http.client.HttpClient
    public final HttpResponse execute(HttpHost httpHost, HttpRequest httpRequest, HttpContext httpContext) {
        DefaultedHttpContext defaultedHttpContext;
        RequestDirector createClientRequestDirector;
        if (httpRequest != null) {
            synchronized (this) {
                HttpContext createHttpContext = createHttpContext();
                if (httpContext == null) {
                    defaultedHttpContext = createHttpContext;
                } else {
                    defaultedHttpContext = new DefaultedHttpContext(httpContext, createHttpContext);
                }
                createClientRequestDirector = createClientRequestDirector(getRequestExecutor(), getConnectionManager(), getConnectionReuseStrategy(), getConnectionKeepAliveStrategy(), getRoutePlanner(), getProtocolProcessor(), getHttpRequestRetryHandler(), getRedirectStrategy(), getTargetAuthenticationHandler(), getProxyAuthenticationHandler(), getUserTokenHandler(), determineParams(httpRequest));
            }
            try {
                return createClientRequestDirector.execute(httpHost, httpRequest, defaultedHttpContext);
            } catch (HttpException e) {
                throw new ClientProtocolException(e);
            }
        } else {
            throw new IllegalArgumentException("Request must not be null.");
        }
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler) {
        return (T) execute(httpUriRequest, responseHandler, (HttpContext) null);
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(HttpUriRequest httpUriRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        return (T) execute(determineTarget(httpUriRequest), httpUriRequest, responseHandler, httpContext);
    }

    @Override // org.apache.http.client.HttpClient
    public <T> T execute(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler) {
        return (T) execute(httpHost, httpRequest, responseHandler, null);
    }

    /* JADX INFO: finally extract failed */
    @Override // org.apache.http.client.HttpClient
    public <T> T execute(HttpHost httpHost, HttpRequest httpRequest, ResponseHandler<? extends T> responseHandler, HttpContext httpContext) {
        if (responseHandler != null) {
            HttpResponse execute = execute(httpHost, httpRequest, httpContext);
            try {
                T t = (T) responseHandler.handleResponse(execute);
                EntityUtils.consume(execute.getEntity());
                return t;
            } catch (Throwable th) {
                try {
                    EntityUtils.consume(execute.getEntity());
                } catch (Exception e) {
                    this.log.warn("Error consuming content after an exception.", e);
                }
                if (th instanceof Error) {
                    throw ((Error) th);
                } else if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                } else if (th instanceof IOException) {
                    throw th;
                } else {
                    throw new UndeclaredThrowableException(th);
                }
            }
        } else {
            throw new IllegalArgumentException("Response handler must not be null.");
        }
    }
}
