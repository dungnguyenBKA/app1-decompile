package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcyz implements zzbrr {
    private final zzcxy zzgyy;
    private final zzakb zzgyz;

    zzcyz(zzcxy zzcxy, zzakb zzakb) {
        this.zzgyy = zzcxy;
        this.zzgyz = zzakb;
    }

    @Override // com.google.android.gms.internal.ads.zzbrr
    public final void zzc(zzvg zzvg) {
        zzcxy zzcxy = this.zzgyy;
        zzakb zzakb = this.zzgyz;
        zzcxy.zzc(zzvg);
        if (zzakb != null) {
            try {
                zzakb.zze(zzvg);
            } catch (RemoteException e) {
                zzazk.zze("#007 Could not call remote method.", e);
            }
        }
        if (zzakb != null) {
            try {
                zzakb.onInstreamAdFailedToLoad(zzvg.errorCode);
            } catch (RemoteException e2) {
                zzazk.zze("#007 Could not call remote method.", e2);
            }
        }
    }
}
