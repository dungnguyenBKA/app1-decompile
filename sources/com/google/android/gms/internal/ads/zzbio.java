package com.google.android.gms.internal.ads;

final /* synthetic */ class zzbio implements Runnable {
    private final zzbim zzfqh;
    private final Runnable zzfqi;

    zzbio(zzbim zzbim, Runnable runnable) {
        this.zzfqh = zzbim;
        this.zzfqi = runnable;
    }

    public final void run() {
        this.zzfqh.zzd(this.zzfqi);
    }
}
