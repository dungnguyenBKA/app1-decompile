package com.google.android.gms.ads.internal.util;

/* access modifiers changed from: package-private */
public final class r implements Runnable {
    private final /* synthetic */ zza b;

    r(zza zza) {
        this.b = zza;
    }

    public final void run() {
        this.b.thread = Thread.currentThread();
        this.b.zzwe();
    }
}
