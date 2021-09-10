package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* access modifiers changed from: package-private */
public class zzeaa extends zzdyl {
    private final ExecutorService zziaw;

    zzeaa(ExecutorService executorService) {
        this.zziaw = (ExecutorService) zzdwl.checkNotNull(executorService);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.zziaw.awaitTermination(j, timeUnit);
    }

    public final void execute(Runnable runnable) {
        this.zziaw.execute(runnable);
    }

    public final boolean isShutdown() {
        return this.zziaw.isShutdown();
    }

    public final boolean isTerminated() {
        return this.zziaw.isTerminated();
    }

    public final void shutdown() {
        this.zziaw.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        return this.zziaw.shutdownNow();
    }
}
