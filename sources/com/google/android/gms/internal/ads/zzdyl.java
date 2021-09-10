package com.google.android.gms.internal.ads;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

public abstract class zzdyl extends AbstractExecutorService implements zzdzv {
    /* access modifiers changed from: protected */
    @Override // java.util.concurrent.AbstractExecutorService
    public final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return zzeah.zza(runnable, (Object) t);
    }

    @Override // com.google.android.gms.internal.ads.zzdzv
    /* renamed from: zze */
    public final <T> zzdzw<T> submit(Callable<T> callable) {
        return (zzdzw) super.submit(callable);
    }

    @Override // com.google.android.gms.internal.ads.zzdzv
    /* renamed from: zzg */
    public final zzdzw<?> submit(Runnable runnable) {
        return (zzdzw) super.submit(runnable);
    }

    /* access modifiers changed from: protected */
    @Override // java.util.concurrent.AbstractExecutorService
    public final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return zzeah.zzf(callable);
    }

    @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
    public /* synthetic */ Future submit(Runnable runnable, @NullableDecl Object obj) {
        return (zzdzw) super.submit(runnable, obj);
    }
}
