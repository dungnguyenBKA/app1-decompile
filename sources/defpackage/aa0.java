package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import org.json.JSONObject;

/* renamed from: aa0  reason: default package */
public class aa0 {
    private static aa0 a = new aa0();

    private aa0() {
    }

    public static aa0 a() {
        return a;
    }

    public void b(WebView webView) {
        e(webView, "finishSession", new Object[0]);
    }

    public void c(WebView webView, float f) {
        e(webView, "setDeviceVolume", Float.valueOf(f));
    }

    public void d(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3) {
        e(webView, "startSession", str, jSONObject, jSONObject2, jSONObject3);
    }

    /* access modifiers changed from: package-private */
    public void e(WebView webView, String str, Object... objArr) {
        if (webView != null) {
            StringBuilder sb = new StringBuilder(128);
            sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
            sb.append(str);
            sb.append("(");
            if (objArr.length > 0) {
                for (Object obj : objArr) {
                    if (obj == null) {
                        sb.append('\"');
                    } else {
                        if (obj instanceof String) {
                            String obj2 = obj.toString();
                            if (obj2.startsWith("{")) {
                                sb.append(obj2);
                            } else {
                                sb.append('\"');
                                sb.append(obj2);
                            }
                        } else {
                            sb.append(obj);
                        }
                        sb.append(",");
                    }
                    sb.append('\"');
                    sb.append(",");
                }
                sb.setLength(sb.length() - 1);
            }
            sb.append(")}");
            String sb2 = sb.toString();
            Handler handler = webView.getHandler();
            if (handler == null || Looper.myLooper() == handler.getLooper()) {
                webView.loadUrl(sb2);
            } else {
                handler.post(new z90(this, webView, sb2));
            }
        } else {
            int i = k90.a;
        }
    }

    public void f(WebView webView, JSONObject jSONObject) {
        e(webView, "init", jSONObject);
    }

    public boolean g(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        webView.loadUrl("javascript: " + str);
        return true;
    }

    public void h(WebView webView, String str) {
        e(webView, "setNativeViewHierarchy", str);
    }

    public void i(WebView webView, String str) {
        e(webView, "setState", str);
    }
}
