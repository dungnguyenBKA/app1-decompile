package com.google.android.gms.internal.ads;

final /* synthetic */ class zzbyx implements Runnable {
    private final zzbeb zzeuk;

    private zzbyx(zzbeb zzbeb) {
        this.zzeuk = zzbeb;
    }

    static Runnable zze(zzbeb zzbeb) {
        return new zzbyx(zzbeb);
    }

    public final void run() {
        this.zzeuk.destroy();
    }
}
