package com.google.android.gms.internal.ads;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* access modifiers changed from: package-private */
public final class zzfb implements ThreadFactory {
    private final ThreadFactory zzyw = Executors.defaultThreadFactory();
    private final AtomicInteger zzyx = new AtomicInteger(1);

    zzfb() {
    }

    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.zzyw.newThread(runnable);
        int andIncrement = this.zzyx.getAndIncrement();
        StringBuilder sb = new StringBuilder(16);
        sb.append("gads-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}
