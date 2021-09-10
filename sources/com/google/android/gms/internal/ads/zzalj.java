package com.google.android.gms.internal.ads;

final /* synthetic */ class zzalj implements Runnable {
    private final zzakm zzdjx;

    private zzalj(zzakm zzakm) {
        this.zzdjx = zzakm;
    }

    static Runnable zzb(zzakm zzakm) {
        return new zzalj(zzakm);
    }

    public final void run() {
        this.zzdjx.destroy();
    }
}
