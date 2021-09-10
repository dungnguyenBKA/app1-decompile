package defpackage;

import android.webkit.WebView;

/* renamed from: z90  reason: default package */
class z90 implements Runnable {
    final /* synthetic */ WebView b;
    final /* synthetic */ String c;

    z90(aa0 aa0, WebView webView, String str) {
        this.b = webView;
        this.c = str;
    }

    public void run() {
        this.b.loadUrl(this.c);
    }
}
