package com.google.android.gms.internal.ads;

final /* synthetic */ class zzdji implements Runnable {
    private final zzvg zzgzk;
    private final zzdjg zzhgn;

    zzdji(zzdjg zzdjg, zzvg zzvg) {
        this.zzhgn = zzdjg;
        this.zzgzk = zzvg;
    }

    public final void run() {
        zzdjg zzdjg = this.zzhgn;
        zzdjg.zzhgl.zzgxy.zzc(this.zzgzk);
    }
}
