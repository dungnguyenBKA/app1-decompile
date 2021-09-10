package com.google.android.gms.internal.ads;

final /* synthetic */ class zzdlb implements Runnable {
    private final zzdkz zzhhw;

    zzdlb(zzdkz zzdkz) {
        this.zzhhw = zzdkz;
    }

    public final void run() {
        this.zzhhw.zzhhy.zzhhv.onAdLoaded();
    }
}
