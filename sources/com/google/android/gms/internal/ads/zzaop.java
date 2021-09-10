package com.google.android.gms.internal.ads;

import android.os.RemoteException;

final class zzaop implements Runnable {
    private final /* synthetic */ zzaol zzdoh;

    zzaop(zzaol zzaol) {
        this.zzdoh = zzaol;
    }

    public final void run() {
        try {
            this.zzdoh.zzdnw.onAdClosed();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
