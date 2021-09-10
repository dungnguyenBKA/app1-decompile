package com.google.android.gms.tagmanager;

import java.util.List;

/* access modifiers changed from: package-private */
public final class zzaz implements Runnable {
    final /* synthetic */ List zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzbe zzc;

    zzaz(zzbe zzbe, List list, long j) {
        this.zzc = zzbe;
        this.zza = list;
        this.zzb = j;
    }

    public final void run() {
        zzbe.zzh(this.zzc, this.zza, this.zzb);
    }
}
