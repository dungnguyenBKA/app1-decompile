package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;

public final class zzahh extends zzagj {
    private final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener zzdgy;

    public zzahh(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.zzdgy = onUnifiedNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void zza(zzagr zzagr) {
        this.zzdgy.onUnifiedNativeAdLoaded(new zzags(zzagr));
    }
}
