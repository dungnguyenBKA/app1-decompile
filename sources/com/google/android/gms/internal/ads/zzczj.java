package com.google.android.gms.internal.ads;

final /* synthetic */ class zzczj implements Runnable {
    private final zzczh zzgzj;
    private final zzvg zzgzk;

    zzczj(zzczh zzczh, zzvg zzvg) {
        this.zzgzj = zzczh;
        this.zzgzk = zzvg;
    }

    public final void run() {
        zzczh zzczh = this.zzgzj;
        zzczh.zzgzi.zzgze.zzasr().zzc(this.zzgzk);
    }
}
