package com.google.android.gms.internal.ads;

import android.os.RemoteException;

final class zzaan implements Runnable {
    private final /* synthetic */ zzaak zzclr;

    zzaan(zzaak zzaak) {
        this.zzclr = zzaak;
    }

    public final void run() {
        if (zzaak.zza(this.zzclr) != null) {
            try {
                zzaak.zza(this.zzclr).onRewardedVideoAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzazk.zzd("Could not notify onRewardedVideoAdFailedToLoad event.", e);
            }
        }
    }
}
