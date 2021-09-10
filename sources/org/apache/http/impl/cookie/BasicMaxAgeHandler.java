package org.apache.http.impl.cookie;

import java.util.Date;
import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

@Immutable
public class BasicMaxAgeHandler extends AbstractCookieAttributeHandler {
    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) {
        if (setCookie == null) {
            throw new IllegalArgumentException("Cookie may not be null");
        } else if (str != null) {
            try {
                int parseInt = Integer.parseInt(str);
                if (parseInt >= 0) {
                    setCookie.setExpiryDate(new Date((((long) parseInt) * 1000) + System.currentTimeMillis()));
                    return;
                }
                throw new MalformedCookieException(ic.i("Negative max-age attribute: ", str));
            } catch (NumberFormatException unused) {
                throw new MalformedCookieException(ic.i("Invalid max-age attribute: ", str));
            }
        } else {
            throw new MalformedCookieException("Missing value for max-age attribute");
        }
    }
}
