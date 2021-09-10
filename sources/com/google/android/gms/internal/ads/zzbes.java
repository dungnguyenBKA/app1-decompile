package com.google.android.gms.internal.ads;

final class zzbes implements Runnable {
    private final /* synthetic */ zzbeq zzetv;

    zzbes(zzbeq zzbeq) {
        this.zzetv = zzbeq;
    }

    public final void run() {
        this.zzetv.zzesi.destroy();
    }
}
