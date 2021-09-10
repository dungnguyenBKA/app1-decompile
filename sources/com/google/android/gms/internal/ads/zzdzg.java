package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

public abstract class zzdzg<V> extends zzdww implements Future<V> {
    protected zzdzg() {
    }

    public boolean cancel(boolean z) {
        return zzazf().cancel(z);
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return (V) zzazf().get();
    }

    public boolean isCancelled() {
        return zzazf().isCancelled();
    }

    public boolean isDone() {
        return zzazf().isDone();
    }

    /* access modifiers changed from: protected */
    /* renamed from: zzbad */
    public abstract Future<? extends V> zzazf();

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) {
        return (V) zzazf().get(j, timeUnit);
    }
}
