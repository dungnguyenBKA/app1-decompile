package com.google.android.gms.internal.ads;

final /* synthetic */ class zzcth implements Runnable {
    private final zzcig zzgtf;

    private zzcth(zzcig zzcig) {
        this.zzgtf = zzcig;
    }

    static Runnable zza(zzcig zzcig) {
        return new zzcth(zzcig);
    }

    public final void run() {
        this.zzgtf.zzapr();
    }
}
