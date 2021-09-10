package com.google.android.gms.internal.ads;

import android.os.RemoteException;

final class zzaor implements Runnable {
    private final /* synthetic */ zzaol zzdoh;

    zzaor(zzaol zzaol) {
        this.zzdoh = zzaol;
    }

    public final void run() {
        try {
            this.zzdoh.zzdnw.onAdLeftApplication();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
