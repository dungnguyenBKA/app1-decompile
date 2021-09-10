package com.google.android.gms.internal.ads;

final /* synthetic */ class zzbnd implements Runnable {
    private final Runnable zzfqi;
    private final zzbnb zzfvo;

    zzbnd(zzbnb zzbnb, Runnable runnable) {
        this.zzfvo = zzbnb;
        this.zzfqi = runnable;
    }

    public final void run() {
        this.zzfvo.zze(this.zzfqi);
    }
}
