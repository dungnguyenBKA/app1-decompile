package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class zzdzf<V> extends zzdzo<V> {
    zzdzf() {
    }

    public static <V> zzdzf<V> zzg(zzdzw<V> zzdzw) {
        if (zzdzw instanceof zzdzf) {
            return (zzdzf) zzdzw;
        }
        return new zzdzh(zzdzw);
    }

    public final <X extends Throwable> zzdzf<V> zza(Class<X> cls, zzdvz<? super X, ? extends V> zzdvz, Executor executor) {
        zzdyi zzdyi = new zzdyi(this, cls, zzdvz);
        addListener(zzdyi, zzdzy.zza(executor, zzdyi));
        return zzdyi;
    }

    public final <T> zzdzf<T> zzb(zzdyu<? super V, T> zzdyu, Executor executor) {
        zzdwl.checkNotNull(executor);
        zzdym zzdym = new zzdym(this, zzdyu);
        addListener(zzdym, zzdzy.zza(executor, zzdym));
        return zzdym;
    }

    public final <X extends Throwable> zzdzf<V> zza(Class<X> cls, zzdyu<? super X, ? extends V> zzdyu, Executor executor) {
        zzdyj zzdyj = new zzdyj(this, cls, zzdyu);
        addListener(zzdyj, zzdzy.zza(executor, zzdyj));
        return zzdyj;
    }

    public final zzdzf<V> zza(long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return (zzdzf) zzdzk.zza(this, j, timeUnit, scheduledExecutorService);
    }

    public final <T> zzdzf<T> zza(zzdvz<? super V, T> zzdvz, Executor executor) {
        zzdwl.checkNotNull(zzdvz);
        zzdyp zzdyp = new zzdyp(this, zzdvz);
        addListener(zzdyp, zzdzy.zza(executor, zzdyp));
        return zzdyp;
    }
}
