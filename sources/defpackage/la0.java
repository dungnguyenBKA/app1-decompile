package defpackage;

import android.annotation.SuppressLint;
import android.webkit.WebView;

/* renamed from: la0  reason: default package */
public class la0 extends ka0 {
    @SuppressLint({"SetJavaScriptEnabled"})
    public la0(WebView webView) {
        if (webView != null && !webView.getSettings().getJavaScriptEnabled()) {
            webView.getSettings().setJavaScriptEnabled(true);
        }
        b(webView);
    }
}
