package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.MuteThisAdReason;

public final class zzys implements MuteThisAdReason {
    private final String description;
    private zzyn zzcjx;

    public zzys(zzyn zzyn) {
        String str;
        this.zzcjx = zzyn;
        try {
            str = zzyn.getDescription();
        } catch (RemoteException e) {
            zzazk.zzc("", e);
            str = null;
        }
        this.description = str;
    }

    @Override // com.google.android.gms.ads.MuteThisAdReason
    public final String getDescription() {
        return this.description;
    }

    public final String toString() {
        return this.description;
    }

    public final zzyn zzrf() {
        return this.zzcjx;
    }
}
