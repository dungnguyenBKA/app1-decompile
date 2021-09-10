package com.google.android.gms.internal.ads;

final class zzdyq implements Runnable {
    private final /* synthetic */ zzdwy zzhzu;
    private final /* synthetic */ zzdyo zzhzv;

    zzdyq(zzdyo zzdyo, zzdwy zzdwy) {
        this.zzhzv = zzdyo;
        this.zzhzu = zzdwy;
    }

    public final void run() {
        zzdyo.zzb(this.zzhzv, this.zzhzu);
    }
}
