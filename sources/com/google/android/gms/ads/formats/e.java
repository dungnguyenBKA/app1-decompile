package com.google.android.gms.ads.formats;

import android.widget.ImageView;
import com.google.android.gms.internal.ads.zzaee;

/* access modifiers changed from: package-private */
public final /* synthetic */ class e implements zzaee {
    private final UnifiedNativeAdView a;

    e(UnifiedNativeAdView unifiedNativeAdView) {
        this.a = unifiedNativeAdView;
    }

    @Override // com.google.android.gms.internal.ads.zzaee
    public final void setImageScaleType(ImageView.ScaleType scaleType) {
        this.a.a(scaleType);
    }
}
