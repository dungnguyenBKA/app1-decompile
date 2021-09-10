package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* access modifiers changed from: package-private */
public final class zzdzh<V> extends zzdzf<V> {
    private final zzdzw<V> zzial;

    zzdzh(zzdzw<V> zzdzw) {
        this.zzial = (zzdzw) zzdwl.checkNotNull(zzdzw);
    }

    @Override // com.google.android.gms.internal.ads.zzdzw, com.google.android.gms.internal.ads.zzdyk
    public final void addListener(Runnable runnable, Executor executor) {
        this.zzial.addListener(runnable, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    public final boolean cancel(boolean z) {
        return this.zzial.cancel(z);
    }

    @Override // java.util.concurrent.Future, com.google.android.gms.internal.ads.zzdyk
    public final V get() {
        return this.zzial.get();
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    public final boolean isCancelled() {
        return this.zzial.isCancelled();
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    public final boolean isDone() {
        return this.zzial.isDone();
    }

    @Override // com.google.android.gms.internal.ads.zzdyk
    public final String toString() {
        return this.zzial.toString();
    }

    @Override // java.util.concurrent.Future, com.google.android.gms.internal.ads.zzdyk
    public final V get(long j, TimeUnit timeUnit) {
        return this.zzial.get(j, timeUnit);
    }
}
