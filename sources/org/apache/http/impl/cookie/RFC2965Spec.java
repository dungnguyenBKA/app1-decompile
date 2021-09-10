package org.apache.http.impl.cookie;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.NameValuePair;
import org.apache.http.annotation.NotThreadSafe;
import org.apache.http.client.params.CookiePolicy;
import org.apache.http.cookie.ClientCookie;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SM;
import org.apache.http.message.BufferedHeader;
import org.apache.http.util.CharArrayBuffer;

@NotThreadSafe
public class RFC2965Spec extends RFC2109Spec {
    public RFC2965Spec() {
        this(null, false);
    }

    private static CookieOrigin adjustEffectiveHost(CookieOrigin cookieOrigin) {
        String host = cookieOrigin.getHost();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= host.length()) {
                z = true;
                break;
            }
            char charAt = host.charAt(i);
            if (charAt == '.' || charAt == ':') {
                break;
            }
            i++;
        }
        return z ? new CookieOrigin(ic.i(host, ".local"), cookieOrigin.getPort(), cookieOrigin.getPath(), cookieOrigin.isSecure()) : cookieOrigin;
    }

    private List<Cookie> createCookies(HeaderElement[] headerElementArr, CookieOrigin cookieOrigin) {
        ArrayList arrayList = new ArrayList(headerElementArr.length);
        for (HeaderElement headerElement : headerElementArr) {
            String name = headerElement.getName();
            String value = headerElement.getValue();
            if (name == null || name.length() == 0) {
                throw new MalformedCookieException("Cookie name may not be empty");
            }
            BasicClientCookie2 basicClientCookie2 = new BasicClientCookie2(name, value);
            basicClientCookie2.setPath(CookieSpecBase.getDefaultPath(cookieOrigin));
            basicClientCookie2.setDomain(CookieSpecBase.getDefaultDomain(cookieOrigin));
            basicClientCookie2.setPorts(new int[]{cookieOrigin.getPort()});
            NameValuePair[] parameters = headerElement.getParameters();
            HashMap hashMap = new HashMap(parameters.length);
            for (int length = parameters.length - 1; length >= 0; length--) {
                NameValuePair nameValuePair = parameters[length];
                hashMap.put(nameValuePair.getName().toLowerCase(Locale.ENGLISH), nameValuePair);
            }
            for (Map.Entry entry : hashMap.entrySet()) {
                NameValuePair nameValuePair2 = (NameValuePair) entry.getValue();
                String lowerCase = nameValuePair2.getName().toLowerCase(Locale.ENGLISH);
                basicClientCookie2.setAttribute(lowerCase, nameValuePair2.getValue());
                CookieAttributeHandler findAttribHandler = findAttribHandler(lowerCase);
                if (findAttribHandler != null) {
                    findAttribHandler.parse(basicClientCookie2, nameValuePair2.getValue());
                }
            }
            arrayList.add(basicClientCookie2);
        }
        return arrayList;
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.cookie.RFC2109Spec
    public void formatCookieAsVer(CharArrayBuffer charArrayBuffer, Cookie cookie, int i) {
        String attribute;
        int[] ports;
        super.formatCookieAsVer(charArrayBuffer, cookie, i);
        if ((cookie instanceof ClientCookie) && (attribute = ((ClientCookie) cookie).getAttribute(ClientCookie.PORT_ATTR)) != null) {
            charArrayBuffer.append("; $Port");
            charArrayBuffer.append("=\"");
            if (attribute.trim().length() > 0 && (ports = cookie.getPorts()) != null) {
                int length = ports.length;
                for (int i2 = 0; i2 < length; i2++) {
                    if (i2 > 0) {
                        charArrayBuffer.append(",");
                    }
                    charArrayBuffer.append(Integer.toString(ports[i2]));
                }
            }
            charArrayBuffer.append("\"");
        }
    }

    @Override // org.apache.http.cookie.CookieSpec, org.apache.http.impl.cookie.RFC2109Spec
    public int getVersion() {
        return 1;
    }

    @Override // org.apache.http.cookie.CookieSpec, org.apache.http.impl.cookie.RFC2109Spec
    public Header getVersionHeader() {
        CharArrayBuffer charArrayBuffer = new CharArrayBuffer(40);
        charArrayBuffer.append(SM.COOKIE2);
        charArrayBuffer.append(": ");
        charArrayBuffer.append("$Version=");
        charArrayBuffer.append(Integer.toString(getVersion()));
        return new BufferedHeader(charArrayBuffer);
    }

    @Override // org.apache.http.cookie.CookieSpec, org.apache.http.impl.cookie.CookieSpecBase
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        } else if (cookieOrigin != null) {
            return super.match(cookie, adjustEffectiveHost(cookieOrigin));
        } else {
            throw new IllegalArgumentException("Cookie origin may not be null");
        }
    }

    @Override // org.apache.http.cookie.CookieSpec, org.apache.http.impl.cookie.RFC2109Spec
    public List<Cookie> parse(Header header, CookieOrigin cookieOrigin) {
        if (header == null) {
            throw new IllegalArgumentException("Header may not be null");
        } else if (cookieOrigin == null) {
            throw new IllegalArgumentException("Cookie origin may not be null");
        } else if (header.getName().equalsIgnoreCase(SM.SET_COOKIE2)) {
            return createCookies(header.getElements(), adjustEffectiveHost(cookieOrigin));
        } else {
            StringBuilder q = ic.q("Unrecognized cookie header '");
            q.append(header.toString());
            q.append("'");
            throw new MalformedCookieException(q.toString());
        }
    }

    @Override // org.apache.http.impl.cookie.RFC2109Spec
    public String toString() {
        return CookiePolicy.RFC_2965;
    }

    @Override // org.apache.http.cookie.CookieSpec, org.apache.http.impl.cookie.CookieSpecBase, org.apache.http.impl.cookie.RFC2109Spec
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) {
        if (cookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        } else if (cookieOrigin != null) {
            super.validate(cookie, adjustEffectiveHost(cookieOrigin));
        } else {
            throw new IllegalArgumentException("Cookie origin may not be null");
        }
    }

    public RFC2965Spec(String[] strArr, boolean z) {
        super(strArr, z);
        registerAttribHandler(ClientCookie.DOMAIN_ATTR, new RFC2965DomainAttributeHandler());
        registerAttribHandler(ClientCookie.PORT_ATTR, new RFC2965PortAttributeHandler());
        registerAttribHandler(ClientCookie.COMMENTURL_ATTR, new RFC2965CommentUrlAttributeHandler());
        registerAttribHandler(ClientCookie.DISCARD_ATTR, new RFC2965DiscardAttributeHandler());
        registerAttribHandler(ClientCookie.VERSION_ATTR, new RFC2965VersionAttributeHandler());
    }

    /* access modifiers changed from: protected */
    @Override // org.apache.http.impl.cookie.CookieSpecBase
    public List<Cookie> parse(HeaderElement[] headerElementArr, CookieOrigin cookieOrigin) {
        return createCookies(headerElementArr, adjustEffectiveHost(cookieOrigin));
    }
}
