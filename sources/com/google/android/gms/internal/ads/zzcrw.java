package com.google.android.gms.internal.ads;

final /* synthetic */ class zzcrw implements Runnable {
    private final zzcig zzgtf;

    private zzcrw(zzcig zzcig) {
        this.zzgtf = zzcig;
    }

    static Runnable zza(zzcig zzcig) {
        return new zzcrw(zzcig);
    }

    public final void run() {
        this.zzgtf.zzapr();
    }
}
