package org.apache.http.protocol;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.params.HttpProtocolParams;

public class RequestUserAgent implements HttpRequestInterceptor {
    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        String userAgent;
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        } else if (!httpRequest.containsHeader("User-Agent") && (userAgent = HttpProtocolParams.getUserAgent(httpRequest.getParams())) != null) {
            httpRequest.addHeader("User-Agent", userAgent);
        }
    }
}
