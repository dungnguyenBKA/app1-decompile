package com.google.android.gms.internal.ads;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class zzdqe implements ThreadFactory {
    private final AtomicInteger zzyx = new AtomicInteger(1);

    zzdqe() {
    }

    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, ic.C(25, "AdWorker(NG) #", this.zzyx.getAndIncrement()));
    }
}
