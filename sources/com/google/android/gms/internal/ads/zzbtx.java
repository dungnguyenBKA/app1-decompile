package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* access modifiers changed from: package-private */
public final class zzbtx implements Runnable {
    private final WeakReference<zzbts> zzfzr;

    private zzbtx(zzbts zzbts) {
        this.zzfzr = new WeakReference<>(zzbts);
    }

    public final void run() {
        zzbts zzbts = this.zzfzr.get();
        if (zzbts != null) {
            zzbts.zzalt();
        }
    }
}
