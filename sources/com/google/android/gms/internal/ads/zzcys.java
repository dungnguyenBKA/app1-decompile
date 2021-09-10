package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;

public final class zzcys implements zzvc {
    @GuardedBy("this")
    private zzww zzgyk;

    @Override // com.google.android.gms.internal.ads.zzvc
    public final synchronized void onAdClicked() {
        zzww zzww = this.zzgyk;
        if (zzww != null) {
            try {
                zzww.onAdClicked();
            } catch (RemoteException e) {
                zzazk.zzd("Remote Exception at onAdClicked.", e);
            }
        }
    }

    public final synchronized void zzb(zzww zzww) {
        this.zzgyk = zzww;
    }
}
