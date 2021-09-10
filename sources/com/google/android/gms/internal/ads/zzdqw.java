package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

public final class zzdqw<E, V> implements zzdzw<V> {
    private final E zzhpu;
    private final String zzhpv;
    private final zzdzw<V> zzhpw;

    public zzdqw(E e, String str, zzdzw<V> zzdzw) {
        this.zzhpu = e;
        this.zzhpv = str;
        this.zzhpw = zzdzw;
    }

    @Override // com.google.android.gms.internal.ads.zzdzw
    public final void addListener(Runnable runnable, Executor executor) {
        this.zzhpw.addListener(runnable, executor);
    }

    public final boolean cancel(boolean z) {
        return this.zzhpw.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public final V get() {
        return this.zzhpw.get();
    }

    public final boolean isCancelled() {
        return this.zzhpw.isCancelled();
    }

    public final boolean isDone() {
        return this.zzhpw.isDone();
    }

    public final String toString() {
        String str = this.zzhpv;
        int identityHashCode = System.identityHashCode(this);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(str);
        sb.append("@");
        sb.append(identityHashCode);
        return sb.toString();
    }

    public final E zzaxh() {
        return this.zzhpu;
    }

    public final String zzaxi() {
        return this.zzhpv;
    }

    @Override // java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) {
        return this.zzhpw.get(j, timeUnit);
    }
}
