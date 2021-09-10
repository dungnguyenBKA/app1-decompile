package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzaky implements Runnable {
    private final zzakz zzdjk;
    private final zzei zzdjl;
    private final zzalq zzdjm;

    zzaky(zzakz zzakz, zzei zzei, zzalq zzalq) {
        this.zzdjk = zzakz;
        this.zzdjl = zzei;
        this.zzdjm = zzalq;
    }

    public final void run() {
        this.zzdjk.zza(this.zzdjl, this.zzdjm);
    }
}
