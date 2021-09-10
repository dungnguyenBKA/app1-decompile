package org.apache.http.impl.cookie;

import org.apache.http.annotation.Immutable;
import org.apache.http.cookie.SetCookie;

@Immutable
public class BasicCommentHandler extends AbstractCookieAttributeHandler {
    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) {
        if (setCookie != null) {
            setCookie.setComment(str);
            return;
        }
        throw new IllegalArgumentException("Cookie may not be null");
    }
}
