package com.google.android.gms.internal.ads;

import android.os.RemoteException;

final class zzaoq implements Runnable {
    private final /* synthetic */ zzaol zzdoh;

    zzaoq(zzaol zzaol) {
        this.zzdoh = zzaol;
    }

    public final void run() {
        try {
            this.zzdoh.zzdnw.onAdOpened();
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
