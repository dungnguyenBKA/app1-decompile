package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;

final /* synthetic */ class zzbne implements Runnable {
    private final AtomicReference zzfvp;

    zzbne(AtomicReference atomicReference) {
        this.zzfvp = atomicReference;
    }

    public final void run() {
        Runnable runnable = (Runnable) this.zzfvp.getAndSet(null);
        if (runnable != null) {
            runnable.run();
        }
    }
}
