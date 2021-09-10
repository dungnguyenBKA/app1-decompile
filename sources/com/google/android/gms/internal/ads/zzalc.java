package com.google.android.gms.internal.ads;

final /* synthetic */ class zzalc implements Runnable {
    private final zzakz zzdjk;
    private final zzalq zzdjs;
    private final zzakm zzdjt;

    zzalc(zzakz zzakz, zzalq zzalq, zzakm zzakm) {
        this.zzdjk = zzakz;
        this.zzdjs = zzalq;
        this.zzdjt = zzakm;
    }

    public final void run() {
        this.zzdjk.zza(this.zzdjs, this.zzdjt);
    }
}
