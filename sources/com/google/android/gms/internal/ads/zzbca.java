package com.google.android.gms.internal.ads;

final /* synthetic */ class zzbca implements Runnable {
    private final int zzefe;
    private final int zzeff;
    private final zzbbr zzenn;

    zzbca(zzbbr zzbbr, int i, int i2) {
        this.zzenn = zzbbr;
        this.zzefe = i;
        this.zzeff = i2;
    }

    public final void run() {
        this.zzenn.zzp(this.zzefe, this.zzeff);
    }
}
