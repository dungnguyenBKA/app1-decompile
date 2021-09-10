package com.google.android.gms.ads.nativead;

import android.widget.ImageView;
import com.google.android.gms.internal.ads.zzaee;

final /* synthetic */ class c implements zzaee {
    private final NativeAdView a;

    c(NativeAdView nativeAdView) {
        this.a = nativeAdView;
    }

    @Override // com.google.android.gms.internal.ads.zzaee
    public final void setImageScaleType(ImageView.ScaleType scaleType) {
        this.a.b(scaleType);
    }
}
