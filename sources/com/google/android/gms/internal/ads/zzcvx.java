package com.google.android.gms.internal.ads;

import android.content.Context;

final /* synthetic */ class zzcvx implements zzcag {
    private final zzcrl zzgtt;

    zzcvx(zzcrl zzcrl) {
        this.zzgtt = zzcrl;
    }

    @Override // com.google.android.gms.internal.ads.zzcag
    public final void zza(boolean z, Context context) {
        zzcrl zzcrl = this.zzgtt;
        try {
            zzcrl.zzdnl.setImmersiveMode(z);
            zzcrl.zzdnl.showVideo();
        } catch (zzdnt e) {
            zzazk.zzd("Cannot show rewarded video.", e);
            throw new zzcaf(e.getCause());
        }
    }
}
