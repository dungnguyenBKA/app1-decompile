package com.google.android.gms.internal.gtm;

final class zzbl implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ zzbq zzb;

    zzbl(zzbq zzbq, int i) {
        this.zzb = zzbq;
        this.zza = i;
    }

    public final void run() {
        this.zzb.zza.zzZ(((long) this.zza) * 1000);
    }
}
