package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzbwe implements Runnable {
    private final Object zzdlk;
    private final zzbwh zzgae;

    zzbwe(zzbwh zzbwh, Object obj) {
        this.zzgae = zzbwh;
        this.zzdlk = obj;
    }

    public final void run() {
        try {
            this.zzgae.zzo(this.zzdlk);
        } catch (Throwable th) {
            zzr.zzkv().zzb(th, "EventEmitter.notify");
            zzd.zza("Event emitter exception.", th);
        }
    }
}
