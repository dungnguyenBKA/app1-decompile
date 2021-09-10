package com.facebook.ads.redexgen.X;

import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;
import com.vungle.warren.error.VungleException;

public class NR extends WebViewClient {
    public final /* synthetic */ NS A00;

    public NR(NS ns) {
        this.A00 = ns;
    }

    @RequiresApi(api = VungleException.DB_ERROR)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        NS.A03(C03228e.A2L);
        return true;
    }
}
