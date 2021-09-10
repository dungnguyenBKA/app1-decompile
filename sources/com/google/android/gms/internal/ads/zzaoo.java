package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.AdRequest;

final class zzaoo implements Runnable {
    private final /* synthetic */ zzaol zzdoh;
    private final /* synthetic */ AdRequest.ErrorCode zzdoi;

    zzaoo(zzaol zzaol, AdRequest.ErrorCode errorCode) {
        this.zzdoh = zzaol;
        this.zzdoi = errorCode;
    }

    public final void run() {
        try {
            this.zzdoh.zzdnw.onAdFailedToLoad(zzaox.zza(this.zzdoi));
        } catch (RemoteException e) {
            zzazk.zze("#007 Could not call remote method.", e);
        }
    }
}
