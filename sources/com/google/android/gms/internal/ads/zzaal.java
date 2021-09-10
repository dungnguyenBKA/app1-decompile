package com.google.android.gms.internal.ads;

import android.os.RemoteException;

final /* synthetic */ class zzaal implements Runnable {
    private final zzavu zzclp;

    zzaal(zzavu zzavu) {
        this.zzclp = zzavu;
    }

    public final void run() {
        zzavu zzavu = this.zzclp;
        if (zzavu != null) {
            try {
                zzavu.onRewardedAdFailedToLoad(1);
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
    }
}
