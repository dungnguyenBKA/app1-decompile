package com.google.android.gms.internal.ads;

final /* synthetic */ class zzczk implements Runnable {
    private final zzczh zzgzj;

    zzczk(zzczh zzczh) {
        this.zzgzj = zzczh;
    }

    public final void run() {
        this.zzgzj.zzgzi.zzgze.zzasq().onAdLoaded();
    }
}
