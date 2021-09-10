package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* access modifiers changed from: package-private */
public final class zzaxt implements ThreadFactory {
    private final AtomicInteger zzyx = new AtomicInteger(1);

    zzaxt(zzaxc zzaxc) {
    }

    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, ic.C(42, "AdWorker(SCION_TASK_EXECUTOR) #", this.zzyx.getAndIncrement()));
    }
}
