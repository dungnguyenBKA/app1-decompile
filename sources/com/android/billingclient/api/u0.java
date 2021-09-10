package com.android.billingclient.api;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* access modifiers changed from: package-private */
public final class u0 implements ThreadFactory {
    private final ThreadFactory b = Executors.defaultThreadFactory();
    private final AtomicInteger c = new AtomicInteger(1);

    u0() {
    }

    public final Thread newThread(Runnable runnable) {
        Thread newThread = this.b.newThread(runnable);
        int andIncrement = this.c.getAndIncrement();
        StringBuilder sb = new StringBuilder(30);
        sb.append("PlayBillingLibrary-");
        sb.append(andIncrement);
        newThread.setName(sb.toString());
        return newThread;
    }
}
