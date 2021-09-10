package org.apache.http.impl.auth;

import org.apache.http.FormattedHeader;
import org.apache.http.Header;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.auth.ContextAwareAuthScheme;
import org.apache.http.auth.Credentials;
import org.apache.http.auth.MalformedChallengeException;
import org.apache.http.protocol.HTTP;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
public abstract class AuthSchemeBase implements ContextAwareAuthScheme {
    private boolean proxy;

    @Override // org.apache.http.auth.ContextAwareAuthScheme
    public Header authenticate(Credentials credentials, HttpRequest httpRequest, HttpContext httpContext) {
        return authenticate(credentials, httpRequest);
    }

    public boolean isProxy() {
        return this.proxy;
    }

    /* access modifiers changed from: protected */
    public abstract void parseChallenge(CharArrayBuffer charArrayBuffer, int i, int i2);

    @Override // org.apache.http.auth.AuthScheme
    public void processChallenge(Header header) {
        CharArrayBuffer charArrayBuffer;
        if (header != null) {
            String name = header.getName();
            int i = 0;
            if (name.equalsIgnoreCase("WWW-Authenticate")) {
                this.proxy = false;
            } else if (name.equalsIgnoreCase("Proxy-Authenticate")) {
                this.proxy = true;
            } else {
                throw new MalformedChallengeException(ic.i("Unexpected header name: ", name));
            }
            if (header instanceof FormattedHeader) {
                FormattedHeader formattedHeader = (FormattedHeader) header;
                charArrayBuffer = formattedHeader.getBuffer();
                i = formattedHeader.getValuePos();
            } else {
                String value = header.getValue();
                if (value != null) {
                    charArrayBuffer = new CharArrayBuffer(value.length());
                    charArrayBuffer.append(value);
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
            String substring = charArrayBuffer.substring(i, i2);
            if (substring.equalsIgnoreCase(getSchemeName())) {
                parseChallenge(charArrayBuffer, i2, charArrayBuffer.length());
                return;
            }
            throw new MalformedChallengeException(ic.i("Invalid scheme identifier: ", substring));
        }
        throw new IllegalArgumentException("Header may not be null");
    }

    public String toString() {
        return getSchemeName();
    }
}
