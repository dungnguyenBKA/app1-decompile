package org.apache.http.client.protocol;

import java.util.Collection;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.protocol.HttpContext;

@Immutable
public class RequestDefaultHeaders implements HttpRequestInterceptor {
    @Override // org.apache.http.HttpRequestInterceptor
    public void process(HttpRequest httpRequest, HttpContext httpContext) {
        Collection<Header> collection;
        if (httpRequest == null) {
            throw new IllegalArgumentException("HTTP request may not be null");
        } else if (!httpRequest.getRequestLine().getMethod().equalsIgnoreCase("CONNECT") && (collection = (Collection) httpRequest.getParams().getParameter(ClientPNames.DEFAULT_HEADERS)) != null) {
            for (Header header : collection) {
                httpRequest.addHeader(header);
            }
        }
    }
}
