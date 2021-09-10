package com.facebook.ads.redexgen.X;

import android.webkit.WebView;
import com.facebook.ads.AdError;

public class SB implements AnonymousClass75 {
    public final AnonymousClass1U A00;
    public final AbstractC01561i A01;
    public final AnonymousClass7D A02;
    public final XJ A03;
    public final boolean A04;

    public SB(XJ xj, AbstractC01561i r2, AnonymousClass7D r3, AnonymousClass1U r4, boolean z) {
        this.A03 = xj;
        this.A01 = r2;
        this.A02 = r3;
        this.A00 = r4;
        this.A04 = z;
    }

    private final void A00() {
        WebView webView = new WebView(this.A03);
        webView.getSettings().setCacheMode(1);
        webView.setWebViewClient(new C01571j(this.A00, this.A01, this.A04));
        webView.loadUrl(this.A00.A0F());
    }

    private void A01(boolean z) {
        if (this.A00.A0A() == AnonymousClass1V.A05) {
            A00();
            return;
        }
        String A0F = this.A00.A0F();
        if (z) {
            A0F = this.A02.A0N(this.A00.A0F());
        }
        this.A00.A0I(A0F);
        this.A01.AB6();
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass75
    public final void A9h() {
        if (this.A04) {
            this.A01.AB5(AdError.CACHE_ERROR);
        } else {
            A01(false);
        }
    }

    @Override // com.facebook.ads.redexgen.X.AnonymousClass75
    public final void A9o() {
        A01(true);
    }
}
