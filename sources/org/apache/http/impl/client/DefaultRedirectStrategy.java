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
import org.apache.http.client.RedirectStrategy;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.ClientPNames;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.ExecutionContext;
import org.apache.http.protocol.HttpContext;

@Immutable
public class DefaultRedirectStrategy implements RedirectStrategy {
    public static final String REDIRECT_LOCATIONS = "http.protocol.redirect-locations";
    private final Log log = LogFactory.getLog(getClass());

    /* access modifiers changed from: protected */
    public URI createLocationURI(String str) {
        try {
            return new URI(str);
        } catch (URISyntaxException e) {
            throw new ProtocolException(ic.i("Invalid redirect URI: ", str), e);
        }
    }

    public URI getLocationURI(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        URI uri;
        if (httpResponse != null) {
            Header firstHeader = httpResponse.getFirstHeader("location");
            if (firstHeader != null) {
                String value = firstHeader.getValue();
                if (this.log.isDebugEnabled()) {
                    Log log2 = this.log;
                    log2.debug("Redirect requested to location '" + value + "'");
                }
                URI createLocationURI = createLocationURI(value);
                HttpParams params = httpResponse.getParams();
                if (!createLocationURI.isAbsolute()) {
                    if (!params.isParameterTrue(ClientPNames.REJECT_RELATIVE_REDIRECT)) {
                        HttpHost httpHost = (HttpHost) httpContext.getAttribute(ExecutionContext.HTTP_TARGET_HOST);
                        if (httpHost != null) {
                            try {
                                createLocationURI = URIUtils.resolve(URIUtils.rewriteURI(new URI(httpRequest.getRequestLine().getUri()), httpHost, true), createLocationURI);
                            } catch (URISyntaxException e) {
                                throw new ProtocolException(e.getMessage(), e);
                            }
                        } else {
                            throw new IllegalStateException("Target host not available in the HTTP context");
                        }
                    } else {
                        throw new ProtocolException("Relative redirect location '" + createLocationURI + "' not allowed");
                    }
                }
                if (params.isParameterFalse(ClientPNames.ALLOW_CIRCULAR_REDIRECTS)) {
                    RedirectLocations redirectLocations = (RedirectLocations) httpContext.getAttribute(REDIRECT_LOCATIONS);
                    if (redirectLocations == null) {
                        redirectLocations = new RedirectLocations();
                        httpContext.setAttribute(REDIRECT_LOCATIONS, redirectLocations);
                    }
                    if (createLocationURI.getFragment() != null) {
                        try {
                            uri = URIUtils.rewriteURI(createLocationURI, new HttpHost(createLocationURI.getHost(), createLocationURI.getPort(), createLocationURI.getScheme()), true);
                        } catch (URISyntaxException e2) {
                            throw new ProtocolException(e2.getMessage(), e2);
                        }
                    } else {
                        uri = createLocationURI;
                    }
                    if (!redirectLocations.contains(uri)) {
                        redirectLocations.add(uri);
                    } else {
                        throw new CircularRedirectException("Circular redirect to '" + uri + "'");
                    }
                }
                return createLocationURI;
            }
            StringBuilder q = ic.q("Received redirect response ");
            q.append(httpResponse.getStatusLine());
            q.append(" but no location header");
            throw new ProtocolException(q.toString());
        }
        throw new IllegalArgumentException("HTTP response may not be null");
    }

    @Override // org.apache.http.client.RedirectStrategy
    public HttpUriRequest getRedirect(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        URI locationURI = getLocationURI(httpRequest, httpResponse, httpContext);
        if (httpRequest.getRequestLine().getMethod().equalsIgnoreCase(HttpHead.METHOD_NAME)) {
            return new HttpHead(locationURI);
        }
        return new HttpGet(locationURI);
    }

    @Override // org.apache.http.client.RedirectStrategy
    public boolean isRedirected(HttpRequest httpRequest, HttpResponse httpResponse, HttpContext httpContext) {
        if (httpResponse != null) {
            int statusCode = httpResponse.getStatusLine().getStatusCode();
            String method = httpRequest.getRequestLine().getMethod();
            Header firstHeader = httpResponse.getFirstHeader("location");
            if (statusCode != 307) {
                switch (statusCode) {
                    case HttpStatus.SC_MOVED_PERMANENTLY:
                        break;
                    case HttpStatus.SC_MOVED_TEMPORARILY:
                        if ((method.equalsIgnoreCase(HttpGet.METHOD_NAME) || method.equalsIgnoreCase(HttpHead.METHOD_NAME)) && firstHeader != null) {
                            return true;
                        }
                        return false;
                    case HttpStatus.SC_SEE_OTHER:
                        return true;
                    default:
                        return false;
                }
            }
            if (method.equalsIgnoreCase(HttpGet.METHOD_NAME) || method.equalsIgnoreCase(HttpHead.METHOD_NAME)) {
                return true;
            }
            return false;
        }
        throw new IllegalArgumentException("HTTP response may not be null");
    }
}
