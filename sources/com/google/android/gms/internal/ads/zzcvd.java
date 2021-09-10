package com.google.android.gms.internal.ads;

import android.content.Context;

final /* synthetic */ class zzcvd implements zzcag {
    private final zzcrl zzgtt;

    zzcvd(zzcrl zzcrl) {
        this.zzgtt = zzcrl;
    }

    @Override // com.google.android.gms.internal.ads.zzcag
    public final void zza(boolean z, Context context) {
        zzcrl zzcrl = this.zzgtt;
        try {
            zzcrl.zzdnl.setImmersiveMode(z);
            zzcrl.zzdnl.zzci(context);
        } catch (zzdnt e) {
            throw new zzcaf(e.getCause());
        }
    }
}
