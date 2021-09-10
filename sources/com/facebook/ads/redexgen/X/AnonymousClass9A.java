package com.facebook.ads.redexgen.X;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;
import com.vungle.warren.error.VungleException;

/* renamed from: com.facebook.ads.redexgen.X.9A  reason: invalid class name */
public class AnonymousClass9A extends WebViewClient {
    public final /* synthetic */ AnonymousClass9B A00;

    public AnonymousClass9A(AnonymousClass9B r1) {
        this.A00 = r1;
    }

    @RequiresApi(api = VungleException.DB_ERROR)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        NS.A03(C03228e.A2N);
        return true;
    }
}
