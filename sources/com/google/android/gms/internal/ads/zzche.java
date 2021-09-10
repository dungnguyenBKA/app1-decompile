package com.google.android.gms.internal.ads;

final /* synthetic */ class zzche implements Runnable {
    private final zzbeb zzeuk;

    private zzche(zzbeb zzbeb) {
        this.zzeuk = zzbeb;
    }

    static Runnable zze(zzbeb zzbeb) {
        return new zzche(zzbeb);
    }

    public final void run() {
        this.zzeuk.destroy();
    }
}
