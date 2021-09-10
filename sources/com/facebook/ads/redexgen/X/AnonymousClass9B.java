package com.facebook.ads.redexgen.X;

import android.webkit.WebView;
import java.util.concurrent.Callable;

/* renamed from: com.facebook.ads.redexgen.X.9B  reason: invalid class name */
public class AnonymousClass9B implements Callable<String> {
    public final /* synthetic */ AnonymousClass8D A00;

    public AnonymousClass9B(AnonymousClass8D r1) {
        this.A00 = r1;
    }

    /* access modifiers changed from: private */
    /* renamed from: A00 */
    public final String call() {
        String str = (String) AnonymousClass9C.A07().get();
        if (str != null) {
            return str;
        }
        WebView webView = new WebView(this.A00.getApplicationContext());
        webView.setWebViewClient(new AnonymousClass9A(this));
        String userAgentString = webView.getSettings().getUserAgentString();
        webView.destroy();
        if (userAgentString != null) {
            AnonymousClass9C.A07().set(userAgentString);
        }
        return userAgentString;
    }
}
