package com.facebook.ads.redexgen.X;

import android.graphics.Bitmap;
import android.os.Handler;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;
import com.facebook.ads.AdError;
import com.vungle.warren.error.VungleException;

/* renamed from: com.facebook.ads.redexgen.X.1j  reason: invalid class name and case insensitive filesystem */
public class C01571j extends WebViewClient {
    public boolean A00 = false;
    public final AnonymousClass1U A01;
    public final AbstractC01561i A02;
    public final boolean A03;

    public C01571j(AnonymousClass1U r2, AbstractC01561i r3, boolean z) {
        this.A01 = r2;
        this.A02 = r3;
        this.A03 = z;
    }

    private void A00() {
        if (this.A03) {
            this.A02.AB5(AdError.CACHE_ERROR);
        } else {
            A01();
        }
    }

    private void A01() {
        AbstractC01561i r0 = this.A02;
        if (r0 != null) {
            r0.AB6();
        }
    }

    /* access modifiers changed from: private */
    public void A02(WebResourceError webResourceError) {
        A00();
    }

    public final void onPageFinished(WebView webView, String str) {
        this.A00 = true;
        A01();
    }

    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        new Handler().postDelayed(new SC(this), (long) this.A01.A09());
    }

    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        this.A00 = true;
        A02(webResourceError);
    }

    @RequiresApi(api = VungleException.DB_ERROR)
    public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        NS.A03(C03228e.A2K);
        A00();
        return true;
    }
}
