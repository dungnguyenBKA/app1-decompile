package com.google.android.gms.internal.ads;

final /* synthetic */ class zzdld implements Runnable {
    private final zzvg zzgzk;
    private final zzdkz zzhhw;

    zzdld(zzdkz zzdkz, zzvg zzvg) {
        this.zzhhw = zzdkz;
        this.zzgzk = zzvg;
    }

    public final void run() {
        zzdkz zzdkz = this.zzhhw;
        zzdkz.zzhhy.zzhhv.zzc(this.zzgzk);
    }
}
