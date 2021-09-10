package com.google.android.gms.internal.ads;

final /* synthetic */ class zzbil implements Runnable {
    private final zzbim zzfqh;
    private final Runnable zzfqi;

    zzbil(zzbim zzbim, Runnable runnable) {
        this.zzfqh = zzbim;
        this.zzfqi = runnable;
    }

    public final void run() {
        zzazp.zzeig.execute(new zzbio(this.zzfqh, this.zzfqi));
    }
}
