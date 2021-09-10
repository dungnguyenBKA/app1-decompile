package com.google.android.gms.internal.ads;

final /* synthetic */ class zzdla implements Runnable {
    private final zzvg zzgzk;
    private final zzdkz zzhhw;

    zzdla(zzdkz zzdkz, zzvg zzvg) {
        this.zzhhw = zzdkz;
        this.zzgzk = zzvg;
    }

    public final void run() {
        zzdkz zzdkz = this.zzhhw;
        zzdkz.zzhhy.zzgxy.zzc(this.zzgzk);
    }
}
