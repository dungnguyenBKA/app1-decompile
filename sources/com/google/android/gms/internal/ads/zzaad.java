package com.google.android.gms.internal.ads;

import android.os.RemoteException;

final class zzaad implements Runnable {
    private final /* synthetic */ zzaaa zzclk;

    zzaad(zzaaa zzaaa) {
        this.zzclk = zzaaa;
    }

    public final void run() {
        if (zzzy.zza(this.zzclk.zzclj) != null) {
            try {
                zzzy.zza(this.zzclk.zzclj).onAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzazk.zzd("Could not notify onAdFailedToLoad event.", e);
            }
        }
    }
}
