package com.google.android.gms.internal.ads;

final /* synthetic */ class zzdmg implements Runnable {
    private final zzdlh zzhil;

    private zzdmg(zzdlh zzdlh) {
        this.zzhil = zzdlh;
    }

    static Runnable zzb(zzdlh zzdlh) {
        return new zzdmg(zzdlh);
    }

    public final void run() {
        this.zzhil.onAdLoaded();
    }
}
