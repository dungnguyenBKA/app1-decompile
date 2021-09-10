package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzalf implements Runnable {
    private final zzakm zzdjx;

    private zzalf(zzakm zzakm) {
        this.zzdjx = zzakm;
    }

    static Runnable zzb(zzakm zzakm) {
        return new zzalf(zzakm);
    }

    public final void run() {
        this.zzdjx.destroy();
    }
}
