package defpackage;

import android.webkit.WebView;
import androidx.core.app.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: n90  reason: default package */
public final class n90 {
    private final s90 a;
    private final WebView b;
    private final List<t90> c = new ArrayList();
    private final Map<String, t90> d = new HashMap();
    private final String e;
    private final String f;
    private final String g;
    private final o90 h;

    private n90(s90 s90, WebView webView, String str, List<t90> list, String str2, String str3, o90 o90) {
        this.a = s90;
        this.b = webView;
        this.e = null;
        this.h = o90;
        this.g = str2;
        this.f = str3;
    }

    public static n90 a(s90 s90, WebView webView, String str, String str2) {
        b.a(s90, "Partner is null");
        b.a(webView, "WebView is null");
        return new n90(s90, webView, null, null, null, null, o90.HTML);
    }

    public o90 b() {
        return this.h;
    }

    public String c() {
        return this.g;
    }

    public String d() {
        return this.f;
    }

    public Map<String, t90> e() {
        return Collections.unmodifiableMap(this.d);
    }

    public String f() {
        return this.e;
    }

    public s90 g() {
        return this.a;
    }

    public List<t90> h() {
        return Collections.unmodifiableList(this.c);
    }

    public WebView i() {
        return this.b;
    }
}
