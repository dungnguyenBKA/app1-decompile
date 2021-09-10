package org.apache.http.impl.client;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.annotation.Immutable;
import org.apache.http.auth.AuthScheme;
import org.apache.http.auth.AuthSchemeRegistry;
import org.apache.http.auth.AuthenticationException;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.client.AuthenticationHandler;
import org.apache.http.client.params.AuthPolicy;
import org.apache.http.client.protocol.ClientContext;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.CharArrayBuffer;

@Immutable
public abstract class AbstractAuthenticationHandler implements AuthenticationHandler {
    private static final List<String> DEFAULT_SCHEME_PRIORITY = Collections.unmodifiableList(Arrays.asList(AuthPolicy.SPNEGO, AuthPolicy.NTLM, AuthPolicy.DIGEST, AuthPolicy.BASIC));
    private final Log log = LogFactory.getLog(getClass());

    /* access modifiers changed from: protected */
    public List<String> getAuthPreferences() {
        return DEFAULT_SCHEME_PRIORITY;
    }

    /* access modifiers changed from: protected */
    public Map<String, Header> parseChallenges(Header[] headerArr) {
        CharArrayBuffer charArrayBuffer;
        int i;
        HashMap hashMap = new HashMap(headerArr.length);
        for (Header header : headerArr) {
            if (header instanceof FormattedHeader) {
                FormattedHeader formattedHeader = (FormattedHeader) header;
                charArrayBuffer = formattedHeader.getBuffer();
                i = formattedHeader.getValuePos();
            } else {
                String value = header.getValue();
                if (value != null) {
                    charArrayBuffer = new CharArrayBuffer(value.length());
                    charArrayBuffer.append(value);
                    i = 0;
                } else {
                    throw new MalformedChallengeException("Header value is null");
                }
            }
            while (i < charArrayBuffer.length() && HTTP.isWhitespace(charArrayBuffer.charAt(i))) {
                i++;
            }
            int i2 = i;
            while (i2 < charArrayBuffer.length() && !HTTP.isWhitespace(charArrayBuffer.charAt(i2))) {
                i2++;
            }
            hashMap.put(charArrayBuffer.substring(i, i2).toLowerCase(Locale.ENGLISH), header);
        }
        return hashMap;
    }

    @Override // org.apache.http.client.AuthenticationHandler
    public AuthScheme selectScheme(Map<String, Header> map, HttpResponse httpResponse, HttpContext httpContext) {
        AuthSchemeRegistry authSchemeRegistry = (AuthSchemeRegistry) httpContext.getAttribute(ClientContext.AUTHSCHEME_REGISTRY);
        if (authSchemeRegistry != null) {
            List<String> authPreferences = getAuthPreferences(httpResponse, httpContext);
            if (authPreferences == null) {
                authPreferences = DEFAULT_SCHEME_PRIORITY;
            }
            if (this.log.isDebugEnabled()) {
                Log log2 = this.log;
                log2.debug("Authentication schemes in the order of preference: " + authPreferences);
            }
            AuthScheme authScheme = null;
            for (String str : authPreferences) {
                if (map.get(str.toLowerCase(Locale.ENGLISH)) != null) {
                    if (this.log.isDebugEnabled()) {
                        Log log3 = this.log;
                        log3.debug(str + " authentication scheme selected");
                    }
                    try {
                        authScheme = authSchemeRegistry.getAuthScheme(str, httpResponse.getParams());
                        break;
                    } catch (IllegalStateException unused) {
                        if (this.log.isWarnEnabled()) {
                            Log log4 = this.log;
                            log4.warn("Authentication scheme " + str + " not supported");
                        }
                    }
                } else if (this.log.isDebugEnabled()) {
                    Log log5 = this.log;
                    log5.debug("Challenge for " + str + " authentication scheme not available");
                }
            }
            if (authScheme != null) {
                return authScheme;
            }
            throw new AuthenticationException("Unable to respond to any of these challenges: " + map);
        }
        throw new IllegalStateException("AuthScheme registry not set in HTTP context");
    }

    /* access modifiers changed from: protected */
    public List<String> getAuthPreferences(HttpResponse httpResponse, HttpContext httpContext) {
        return getAuthPreferences();
    }
}
