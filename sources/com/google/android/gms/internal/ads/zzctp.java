package com.google.android.gms.internal.ads;

import android.content.Context;

final /* synthetic */ class zzctp implements zzcag {
    private final zzcrl zzgtt;

    zzctp(zzcrl zzcrl) {
        this.zzgtt = zzcrl;
    }

    @Override // com.google.android.gms.internal.ads.zzcag
    public final void zza(boolean z, Context context) {
        zzcrl zzcrl = this.zzgtt;
        try {
            zzcrl.zzdnl.setImmersiveMode(z);
            zzcrl.zzdnl.showInterstitial();
        } catch (zzdnt e) {
            zzazk.zzew("Cannot show interstitial.");
            throw new zzcaf(e.getCause());
        }
    }
}
