package com.google.android.gms.internal.ads;

final /* synthetic */ class zzbcc implements Runnable {
    private final int zzefe;
    private final zzbbr zzenn;

    zzbcc(zzbbr zzbbr, int i) {
        this.zzenn = zzbbr;
        this.zzefe = i;
    }

    public final void run() {
        this.zzenn.zzdr(this.zzefe);
    }
}
