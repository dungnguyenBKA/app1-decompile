package com.google.android.gms.internal.ads;

final /* synthetic */ class zzdry implements Runnable {
    private final String zzdjf;
    private final zzdrv zzhri;

    zzdry(zzdrv zzdrv, String str) {
        this.zzhri = zzdrv;
        this.zzdjf = str;
    }

    public final void run() {
        this.zzhri.zzgw(this.zzdjf);
    }
}
