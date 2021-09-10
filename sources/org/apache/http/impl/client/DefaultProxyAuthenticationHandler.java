package org.apache.http.impl.client;

import java.util.List;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.params.AuthPNames;
import org.apache.http.protocol.HttpContext;

@Immutable
public class DefaultProxyAuthenticationHandler extends AbstractAuthenticationHandler {
    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.client.AbstractAuthenticationHandler
    public List<String> getAuthPreferences(HttpResponse httpResponse, HttpContext httpContext) {
        List<String> list = (List) httpResponse.getParams().getParameter(AuthPNames.PROXY_AUTH_PREF);
        if (list != null) {
            return list;
        }
        return super.getAuthPreferences(httpResponse, httpContext);
    }

    @Override // org.apache.http.client.AuthenticationHandler
    public Map<String, Header> getChallenges(HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse != null) {
            return parseChallenges(httpResponse.getHeaders("Proxy-Authenticate"));
        }
        throw new IllegalArgumentException("HTTP response may not be null");
    }

    @Override // org.apache.http.client.AuthenticationHandler
    public boolean isAuthenticationRequested(HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse != null) {
            return httpResponse.getStatusLine().getStatusCode() == 407;
        }
        throw new IllegalArgumentException("HTTP response may not be null");
    }
}
