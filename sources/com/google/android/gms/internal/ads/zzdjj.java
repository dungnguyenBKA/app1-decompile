package com.google.android.gms.internal.ads;

final /* synthetic */ class zzdjj implements Runnable {
    private final zzcxy zzgyy;

    private zzdjj(zzcxy zzcxy) {
        this.zzgyy = zzcxy;
    }

    static Runnable zzb(zzcxy zzcxy) {
        return new zzdjj(zzcxy);
    }

    public final void run() {
        this.zzgyy.onAdLoaded();
    }
}
