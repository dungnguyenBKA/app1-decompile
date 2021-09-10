package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdzq;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

public final class zzdzk extends zzdzr {
    public static <V> zzdzw<V> immediateFailedFuture(Throwable th) {
        zzdwl.checkNotNull(th);
        return new zzdzq.zza(th);
    }

    public static <O> zzdzw<O> zza(Callable<O> callable, Executor executor) {
        zzeah zzf = zzeah.zzf(callable);
        executor.execute(zzf);
        return zzf;
    }

    public static <V> zzdzw<V> zzag(@NullableDecl V v) {
        return v == null ? (zzdzw<V>) zzdzq.zziap : new zzdzq(v);
    }

    public static <V, X extends Throwable> zzdzw<V> zzb(zzdzw<? extends V> zzdzw, Class<X> cls, zzdyu<? super X, ? extends V> zzdyu, Executor executor) {
        return zzdyg.zza(zzdzw, cls, zzdyu, executor);
    }

    public static <V> zzdzw<List<V>> zzi(Iterable<? extends zzdzw<? extends V>> iterable) {
        return new zzdyw(zzdxd.zzh(iterable), true);
    }

    public static <V> zzdzp<V> zzj(Iterable<? extends zzdzw<? extends V>> iterable) {
        return new zzdzp<>(false, zzdxd.zzh(iterable), null);
    }

    public static <V> zzdzp<V> zzk(Iterable<? extends zzdzw<? extends V>> iterable) {
        return new zzdzp<>(true, zzdxd.zzh(iterable), null);
    }

    public static <I, O> zzdzw<O> zzb(zzdzw<I> zzdzw, zzdyu<? super I, ? extends O> zzdyu, Executor executor) {
        return zzdyn.zza(zzdzw, zzdyu, executor);
    }

    public static <O> zzdzw<O> zza(zzdyv<O> zzdyv, Executor executor) {
        zzeah zzeah = new zzeah(zzdyv);
        executor.execute(zzeah);
        return zzeah;
    }

    public static <I, O> zzdzw<O> zzb(zzdzw<I> zzdzw, zzdvz<? super I, ? extends O> zzdvz, Executor executor) {
        return zzdyn.zza(zzdzw, zzdvz, executor);
    }

    @SafeVarargs
    public static <V> zzdzp<V> zzb(zzdzw<? extends V>... zzdzwArr) {
        return new zzdzp<>(true, zzdxd.zzb(zzdzwArr), null);
    }

    public static <V> zzdzw<V> zza(zzdzw<V> zzdzw, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (zzdzw.isDone()) {
            return zzdzw;
        }
        return zzead.zzb(zzdzw, j, timeUnit, scheduledExecutorService);
    }

    public static <V> V zzb(Future<V> future) {
        zzdwl.checkNotNull(future);
        try {
            return (V) zzeal.getUninterruptibly(future);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause instanceof Error) {
                throw new zzdzc((Error) cause);
            }
            throw new zzeam(cause);
        }
    }

    @SafeVarargs
    public static <V> zzdzp<V> zza(zzdzw<? extends V>... zzdzwArr) {
        return new zzdzp<>(false, zzdxd.zzb(zzdzwArr), null);
    }

    public static <V> void zza(zzdzw<V> zzdzw, zzdzl<? super V> zzdzl, Executor executor) {
        zzdwl.checkNotNull(zzdzl);
        zzdzw.addListener(new zzdzm(zzdzw, zzdzl), executor);
    }

    public static <V> V zza(Future<V> future) {
        if (future.isDone()) {
            return (V) zzeal.getUninterruptibly(future);
        }
        throw new IllegalStateException(zzdwt.zzb("Future was expected to be done: %s", future));
    }
}
