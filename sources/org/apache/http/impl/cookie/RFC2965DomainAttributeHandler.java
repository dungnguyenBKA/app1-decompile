package org.apache.http.impl.cookie;

import java.util.Locale;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieRestrictionViolationException;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

@Immutable
public class RFC2965DomainAttributeHandler implements CookieAttributeHandler {
    public boolean domainMatch(String str, String str2) {
        return str.equals(str2) || (str2.startsWith(".") && str.endsWith(str2));
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        } else if (cookieOrigin != null) {
            String lowerCase = cookieOrigin.getHost().toLowerCase(Locale.ENGLISH);
            String domain = cookie.getDomain();
            if (domainMatch(lowerCase, domain) && lowerCase.substring(0, lowerCase.length() - domain.length()).indexOf(46) == -1) {
                return true;
            }
            return false;
        } else {
            throw new IllegalArgumentException("Cookie origin may not be null");
        }
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) {
        if (setCookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        } else if (str == null) {
            throw new MalformedCookieException("Missing value for domain attribute");
        } else if (str.trim().length() != 0) {
            String lowerCase = str.toLowerCase(Locale.ENGLISH);
            if (!lowerCase.startsWith(".")) {
                lowerCase = '.' + lowerCase;
            }
            setCookie.setDomain(lowerCase);
        } else {
            throw new MalformedCookieException("Blank value for domain attribute");
        }
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) {
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        } else if (cookieOrigin != null) {
            String host = cookieOrigin.getHost();
            Locale locale = Locale.ENGLISH;
            String lowerCase = host.toLowerCase(locale);
            if (cookie.getDomain() != null) {
                String lowerCase2 = cookie.getDomain().toLowerCase(locale);
                if (!(cookie instanceof ClientCookie) || !((ClientCookie) cookie).containsAttribute(ClientCookie.DOMAIN_ATTR)) {
                    if (!cookie.getDomain().equals(lowerCase)) {
                        StringBuilder q = ic.q("Illegal domain attribute: \"");
                        q.append(cookie.getDomain());
                        q.append("\".");
                        q.append("Domain of origin: \"");
                        q.append(lowerCase);
                        q.append("\"");
                        throw new CookieRestrictionViolationException(q.toString());
                    }
                } else if (lowerCase2.startsWith(".")) {
                    int indexOf = lowerCase2.indexOf(46, 1);
                    if ((indexOf < 0 || indexOf == lowerCase2.length() - 1) && !lowerCase2.equals(".local")) {
                        StringBuilder q2 = ic.q("Domain attribute \"");
                        q2.append(cookie.getDomain());
                        q2.append("\" violates RFC 2965: the value contains no embedded dots ");
                        q2.append("and the value is not .local");
                        throw new CookieRestrictionViolationException(q2.toString());
                    } else if (!domainMatch(lowerCase, lowerCase2)) {
                        StringBuilder q3 = ic.q("Domain attribute \"");
                        q3.append(cookie.getDomain());
                        q3.append("\" violates RFC 2965: effective host name does not ");
                        q3.append("domain-match domain attribute.");
                        throw new CookieRestrictionViolationException(q3.toString());
                    } else if (lowerCase.substring(0, lowerCase.length() - lowerCase2.length()).indexOf(46) != -1) {
                        StringBuilder q4 = ic.q("Domain attribute \"");
                        q4.append(cookie.getDomain());
                        q4.append("\" violates RFC 2965: ");
                        q4.append("effective host minus domain may not contain any dots");
                        throw new CookieRestrictionViolationException(q4.toString());
                    }
                } else {
                    StringBuilder q5 = ic.q("Domain attribute \"");
                    q5.append(cookie.getDomain());
                    q5.append("\" violates RFC 2109: domain must start with a dot");
                    throw new CookieRestrictionViolationException(q5.toString());
                }
            } else {
                throw new CookieRestrictionViolationException("Invalid cookie state: domain not specified");
            }
        } else {
            throw new IllegalArgumentException("Cookie origin may not be null");
        }
    }
}
