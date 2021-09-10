package com.google.android.gms.internal.ads;

import android.os.RemoteException;

final class zzaos implements Runnable {
    private final /* synthetic */ zzaol zzdoh;

    zzaos(zzaol zzaol) {
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
