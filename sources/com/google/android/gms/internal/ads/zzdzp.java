package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

public final class zzdzp<V> {
    private final boolean zzhzs;
    private final zzdxd<zzdzw<? extends V>> zziao;

    private zzdzp(boolean z, zzdxd<zzdzw<? extends V>> zzdxd) {
        this.zzhzs = z;
        this.zziao = zzdxd;
    }

    public final <C> zzdzw<C> zzb(Callable<C> callable, Executor executor) {
        return new zzdyy(this.zziao, this.zzhzs, executor, callable);
    }

    /* synthetic */ zzdzp(boolean z, zzdxd zzdxd, zzdzn zzdzn) {
        this(z, zzdxd);
    }
}
