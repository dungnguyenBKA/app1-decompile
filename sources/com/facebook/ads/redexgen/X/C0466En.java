package com.facebook.ads.redexgen.X;

import android.widget.FrameLayout;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAdLayout;
import com.facebook.ads.NativeBannerAd;

/* renamed from: com.facebook.ads.redexgen.X.En  reason: case insensitive filesystem */
public final class C0466En extends C0837Ti {
    public PE A00;

    public final void A05(XJ xj, NativeBannerAd nativeBannerAd, C0578Ja ja, NativeAdLayout nativeAdLayout) {
        MediaView adIconView = new MediaView(nativeAdLayout.getContext());
        AdOptionsView adOptionsView = new AdOptionsView(nativeAdLayout.getContext(), nativeBannerAd, nativeAdLayout);
        ja.A09(adOptionsView, 20);
        this.A00 = new PW(xj, nativeBannerAd, ja, C1143cD.A0J(nativeBannerAd.getInternalNativeAd()).A16(), adIconView, adOptionsView);
        C0632Lh.A0P(nativeAdLayout, ja.A00());
        nativeBannerAd.registerViewForInteraction(nativeAdLayout, adIconView, this.A00.getViewsForInteraction());
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
