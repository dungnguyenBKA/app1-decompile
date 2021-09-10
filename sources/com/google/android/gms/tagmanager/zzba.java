package com.google.android.gms.tagmanager;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* access modifiers changed from: package-private */
public final class zzba implements Runnable {
    final /* synthetic */ zzaw zza;
    final /* synthetic */ zzbe zzb;

    zzba(zzbe zzbe, zzaw zzaw) {
        this.zzb = zzbe;
        this.zza = zzaw;
    }

    public final void run() {
        zzaw zzaw = this.zza;
        List zzf = zzbe.zzf(this.zzb);
        zzat zzat = (zzat) zzaw;
        Objects.requireNonNull(zzat);
        Iterator it = ((ArrayList) zzf).iterator();
        while (it.hasNext()) {
            zzau zzau = (zzau) it.next();
            DataLayer dataLayer = zzat.zza;
            DataLayer.zzc(dataLayer, dataLayer.zza(zzau.zza, zzau.zzb));
        }
        zzat.zza.zzh.countDown();
    }
}
