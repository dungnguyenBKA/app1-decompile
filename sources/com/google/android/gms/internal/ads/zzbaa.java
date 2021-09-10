package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzr;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
public class zzbaa<T> implements zzdzw<T> {
    private final zzeae<T> zzein = zzeae.zzbag();

    private static boolean zzat(boolean z) {
        if (!z) {
            zzr.zzkv().zzb(new IllegalStateException("Provided SettableFuture with multiple values."), "SettableFuture");
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.zzdzw
    public void addListener(Runnable runnable, Executor executor) {
        this.zzein.addListener(runnable, executor);
    }

    public boolean cancel(boolean z) {
        return this.zzein.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public T get() {
        return this.zzein.get();
    }

    public boolean isCancelled() {
        return this.zzein.isCancelled();
    }

    public boolean isDone() {
        return this.zzein.isDone();
    }

    public final boolean set(T t) {
        return zzat(this.zzein.set(t));
    }

    public final boolean setException(Throwable th) {
        return zzat(this.zzein.setException(th));
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) {
        return this.zzein.get(j, timeUnit);
    }
}
