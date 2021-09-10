package org.apache.http.client.protocol;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthState;
import org.apache.http.client.AuthCache;
import org.apache.http.client.params.AuthPolicy;
import org.apache.http.impl.client.BasicAuthCache;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;

@Immutable
public class ResponseAuthCache implements HttpResponseInterceptor {
    private final Log log = LogFactory.getLog(getClass());

    private void cache(AuthCache authCache, HttpHost httpHost, AuthState authState) {
        AuthScheme authScheme = authState.getAuthScheme();
        if (authState.getAuthScope() == null) {
            return;
        }
        if (authState.getCredentials() != null) {
            if (this.log.isDebugEnabled()) {
                Log log2 = this.log;
                StringBuilder q = ic.q("Caching '");
                q.append(authScheme.getSchemeName());
                q.append("' auth scheme for ");
                q.append(httpHost);
                log2.debug(q.toString());
            }
            authCache.put(httpHost, authScheme);
            return;
        }
        authCache.remove(httpHost);
    }

    private boolean isCachable(AuthState authState) {
        AuthScheme authScheme = authState.getAuthScheme();
        if (authScheme == null || !authScheme.isComplete()) {
            return false;
        }
        String schemeName = authScheme.getSchemeName();
        if (schemeName.equalsIgnoreCase(AuthPolicy.BASIC) || schemeName.equalsIgnoreCase(AuthPolicy.DIGEST)) {
            return true;
        }
        return false;
    }

    @Override // org.apache.http.HttpResponseInterceptor
    public void process(HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        } else if (httpContext != null) {
            AuthCache authCache = (AuthCache) httpContext.getAttribute(ClientContext.AUTH_CACHE);
            HttpHost httpHost = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_TARGET_HOST);
            AuthState authState = (AuthState) httpContext.getAttribute(ClientContext.TARGET_AUTH_STATE);
            if (!(httpHost == null || authState == null || !isCachable(authState))) {
                if (authCache == null) {
                    authCache = new BasicAuthCache();
                    httpContext.setAttribute(ClientContext.AUTH_CACHE, authCache);
                }
                cache(authCache, httpHost, authState);
            }
            HttpHost httpHost2 = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_PROXY_HOST);
            AuthState authState2 = (AuthState) httpContext.getAttribute(ClientContext.PROXY_AUTH_STATE);
            if (httpHost2 != null && authState2 != null && isCachable(authState2)) {
                if (authCache == null) {
                    authCache = new BasicAuthCache();
                    httpContext.setAttribute(ClientContext.AUTH_CACHE, authCache);
                }
                cache(authCache, httpHost2, authState2);
            }
        } else {
            throw new IllegalArgumentException("HTTP context may not be null");
        }
    }
}
