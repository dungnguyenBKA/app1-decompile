package com.google.android.gms.analytics;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* access modifiers changed from: package-private */
public final class o implements ThreadFactory {
    private static final AtomicInteger b = new AtomicInteger();

    /* synthetic */ o() {
    }

    public final Thread newThread(Runnable runnable) {
        return new p(runnable, ic.C(23, "measurement-", b.incrementAndGet()));
    }
}
