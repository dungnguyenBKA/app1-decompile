package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.LoadAdError;

/* access modifiers changed from: package-private */
public final class zzzl extends zzwu {
    private final /* synthetic */ zzzm zzckj;

    zzzl(zzzm zzzm) {
        this.zzckj = zzzm;
    }

    @Override // com.google.android.gms.internal.ads.zzwu, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(int i) {
        this.zzckj.zzckl.zza(this.zzckj.zzdw());
        super.onAdFailedToLoad(i);
    }

    @Override // com.google.android.gms.internal.ads.zzwu, com.google.android.gms.ads.AdListener
    public final void onAdLoaded() {
        this.zzckj.zzckl.zza(this.zzckj.zzdw());
        super.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzwu, com.google.android.gms.ads.AdListener
    public final void onAdFailedToLoad(LoadAdError loadAdError) {
        this.zzckj.zzckl.zza(this.zzckj.zzdw());
        super.onAdFailedToLoad(loadAdError);
    }
}
