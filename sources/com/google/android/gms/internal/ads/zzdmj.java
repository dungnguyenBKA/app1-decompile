package com.google.android.gms.internal.ads;

final /* synthetic */ class zzdmj implements Runnable {
    private final zzvg zzgzk;
    private final zzdmh zzhio;

    zzdmj(zzdmh zzdmh, zzvg zzvg) {
        this.zzhio = zzdmh;
        this.zzgzk = zzvg;
    }

    public final void run() {
        zzdmh zzdmh = this.zzhio;
        zzdmh.zzhin.zzhii.zzc(this.zzgzk);
    }
}
