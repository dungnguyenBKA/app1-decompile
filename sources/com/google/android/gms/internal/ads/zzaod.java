package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;

final class zzaod implements InitializationCompleteCallback {
    private final /* synthetic */ zzajj zzdnu;

    zzaod(zzaoa zzaoa, zzajj zzajj) {
        this.zzdnu = zzajj;
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationFailed(String str) {
        try {
            this.zzdnu.onInitializationFailed(str);
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }

    @Override // com.google.android.gms.ads.mediation.InitializationCompleteCallback
    public final void onInitializationSucceeded() {
        try {
            this.zzdnu.onInitializationSucceeded();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
        }
    }
}
