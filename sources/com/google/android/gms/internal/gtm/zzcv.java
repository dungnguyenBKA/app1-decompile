package com.google.android.gms.internal.gtm;

import android.os.Looper;

/* access modifiers changed from: package-private */
public final class zzcv implements Runnable {
    final /* synthetic */ zzcw zza;

    zzcv(zzcw zzcw) {
        this.zza = zzcw;
    }

    public final void run() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.zza.zzb.zzd().i(this);
            return;
        }
        boolean zzh = this.zza.zzh();
        this.zza.zzd = 0;
        if (zzh) {
            this.zza.zza();
        }
    }
}
