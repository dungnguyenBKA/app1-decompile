package com.google.android.gms.internal.ads;

final /* synthetic */ class zzcvq implements Runnable {
    private final zzcig zzgtf;

    private zzcvq(zzcig zzcig) {
        this.zzgtf = zzcig;
    }

    static Runnable zza(zzcig zzcig) {
        return new zzcvq(zzcig);
    }

    public final void run() {
        this.zzgtf.zzapr();
    }
}
