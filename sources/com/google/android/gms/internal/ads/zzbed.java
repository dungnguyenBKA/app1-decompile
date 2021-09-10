package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzc;

final /* synthetic */ class zzbed implements Runnable {
    private final zzbee zzeqt;

    zzbed(zzbee zzbee) {
        this.zzeqt = zzbee;
    }

    public final void run() {
        zzbee zzbee = this.zzeqt;
        zzbee.zzequ.zzadg();
        zzc zzact = zzbee.zzequ.zzact();
        if (zzact != null) {
            zzact.zzvx();
        }
    }
}
