package org.apache.http.impl.client;

import java.net.URI;
import java.net.URISyntaxException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpStatus;
import org.apache.http.ProtocolException;
import org.apache.http.annotation.Immutable;
import org.apache.http.client.CircularRedirectException;
import org.apache.http.client.RedirectHandler;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;

@Deprecated
@Immutable
public class DefaultRedirectHandler implements RedirectHandler {
    private static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
    private final Log log = LogFactory.getLog(getClass());

    @Override // org.apache.http.client.RedirectHandler
    public URI getLocationURI(HttpResponse httpResponse, HttpContext httpContext) {
        URI uri;
        if (httpResponse != null) {
            Header firstHeader = httpResponse.getFirstHeader("location");
            if (firstHeader != null) {
                String value = firstHeader.getValue();
                if (this.log.isDebugEnabled()) {
                    Log log2 = this.log;
                    log2.debug("Redirect requested to location '" + value + "'");
                }
                try {
                    URI uri2 = new URI(value);
                    HttpParams params = httpResponse.getParams();
                    if (!uri2.isAbsolute()) {
                        if (!params.isParameterTrue(ClientPNames.REJECT_RELATIVE_REDIRECT)) {
                            HttpHost httpHost = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_TARGET_HOST);
                            if (httpHost != null) {
                                try {
                                    uri2 = URIUtils.resolve(URIUtils.rewriteURI(new URI(((HttpRequest) httpContext.getAttribute(ExecutionContext.HTTP_REQUEST)).getRequestLine().getUri()), httpHost, true), uri2);
                                } catch (URISyntaxException e) {
                                    throw new ProtocolException(e.getMessage(), e);
                                }
                            } else {
                                throw new IllegalStateException("Target host not available in the HTTP context");
                            }
                        } else {
                            throw new ProtocolException("Relative redirect location '" + uri2 + "' not allowed");
                        }
                    }
                    if (params.isParameterFalse(ClientPNames.ALLOW_CIRCULAR_REDIRECTS)) {
                        RedirectLocations redirectLocations = (RedirectLocations) httpContext.getAttribute("http.protocol.redirect-locations");
                        if (redirectLocations == null) {
                            redirectLocations = new RedirectLocations();
                            httpContext.setAttribute("http.protocol.redirect-locations", redirectLocations);
                        }
                        if (uri2.getFragment() != null) {
                            try {
                                uri = URIUtils.rewriteURI(uri2, new HttpHost(uri2.getHost(), uri2.getPort(), uri2.getScheme()), true);
                            } catch (URISyntaxException e2) {
                                throw new ProtocolException(e2.getMessage(), e2);
                            }
                        } else {
                            uri = uri2;
                        }
                        if (!redirectLocations.contains(uri)) {
                            redirectLocations.add(uri);
                        } else {
                            throw new CircularRedirectException("Circular redirect to '" + uri + "'");
                        }
                    }
                    return uri2;
                } catch (URISyntaxException e3) {
                    throw new ProtocolException(ic.i("Invalid redirect URI: ", value), e3);
                }
            } else {
                StringBuilder q = ic.q("Received redirect response ");
                q.append(httpResponse.getStatusLine());
                q.append(" but no location header");
                throw new ProtocolException(q.toString());
            }
        } else {
            throw new IllegalArgumentException("HTTP response may not be null");
        }
    }

    @Override // org.apache.http.client.RedirectHandler
    public boolean isRedirectRequested(HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse != null) {
            int statusCode = httpResponse.getStatusLine().getStatusCode();
            if (statusCode != 307) {
                switch (statusCode) {
                    case HttpStatus.SC_MOVED_PERMANENTLY:
                    case HttpStatus.SC_MOVED_TEMPORARILY:
                        break;
                    case HttpStatus.SC_SEE_OTHER:
                        return true;
                    default:
                        return false;
                }
            }
            String method = ((HttpRequest) httpContext.getAttribute(ExecutionContext.HTTP_REQUEST)).getRequestLine().getMethod();
            if (method.equalsIgnoreCase(HttpGet.METHOD_NAME) || method.equalsIgnoreCase(HttpHead.METHOD_NAME)) {
                return true;
            }
            return false;
        }
        throw new IllegalArgumentException("HTTP response may not be null");
    }
}
