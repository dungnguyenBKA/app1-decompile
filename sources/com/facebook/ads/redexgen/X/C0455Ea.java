package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdLayout;

/* renamed from: com.facebook.ads.redexgen.X.Ea  reason: case insensitive filesystem */
public final class C0455Ea extends C0837Ti {
    public PE A00;

    /* JADX INFO: Multiple debug info for r10v0 com.facebook.ads.AdOptionsView: [D('adOptionsView' com.facebook.ads.AdOptionsView), D('mediaView' com.facebook.ads.MediaView)] */
    public final void A05(NativeAdLayout nativeAdLayout, XJ xj, NativeAd nativeAd, C0578Ja ja) {
        C0690No no = new C0690No(xj);
        MediaView mediaView = new MediaView(xj);
        AdOptionsView adOptionsView = new AdOptionsView(xj, nativeAd, nativeAdLayout);
        ja.A09(adOptionsView, 28);
        this.A00 = new PV(xj, nativeAd, ja, C1143cD.A0J(nativeAd.getInternalNativeAd()).A16(), no, mediaView, adOptionsView);
        C0632Lh.A0P(nativeAdLayout, ja.A00());
        nativeAd.registerViewForInteraction(nativeAdLayout, mediaView, no, this.A00.getViewsForInteraction());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        nativeAdLayout.addView(this.A00.getView(), layoutParams);
    }

    @Override // com.facebook.ads.internal.api.AdComponentViewParentApi, com.facebook.ads.redexgen.X.AnonymousClass55
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.A00.unregisterView();
    }
}
