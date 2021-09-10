package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;

public final class zzard extends zzagj {
    private final NativeAd.OnNativeAdLoadedListener zzdqw;

    public zzard(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.zzdqw = onNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzagg
    public final void zza(zzagr zzagr) {
        this.zzdqw.onNativeAdLoaded(new zzaqx(zzagr));
    }
}
