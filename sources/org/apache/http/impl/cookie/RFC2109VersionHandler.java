package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

@Immutable
public class RFC2109VersionHandler extends AbstractCookieAttributeHandler {
    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) {
        if (setCookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        } else if (str == null) {
            throw new MalformedCookieException("Missing value for version attribute");
        } else if (str.trim().length() != 0) {
            try {
                setCookie.setVersion(Integer.parseInt(str));
            } catch (NumberFormatException e) {
                StringBuilder q = ic.q("Invalid version: ");
                q.append(e.getMessage());
                throw new MalformedCookieException(q.toString());
            }
        } else {
            throw new MalformedCookieException("Blank value for version attribute");
        }
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler, org.apache.http.impl.cookie.AbstractCookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) {
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        } else if (cookie.getVersion() < 0) {
            throw new CookieRestrictionViolationException("Cookie version may not be negative");
        }
    }
}
