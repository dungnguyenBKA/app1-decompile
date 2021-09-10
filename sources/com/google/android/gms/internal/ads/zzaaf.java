package com.google.android.gms.internal.ads;

import android.os.RemoteException;

final class zzaaf implements Runnable {
    private final /* synthetic */ zzaac zzclm;

    zzaaf(zzaac zzaac) {
        this.zzclm = zzaac;
    }

    public final void run() {
        if (zzaac.zza(this.zzclm) != null) {
            try {
                zzaac.zza(this.zzclm).onAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzazk.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
