package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdyk;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public class zzdzq<V> implements zzdzw<V> {
    private static final Logger zzhzc = Logger.getLogger(zzdzq.class.getName());
    static final zzdzw<?> zziap = new zzdzq(null);
    @NullableDecl
    private final V value;

    /* access modifiers changed from: package-private */
    public static final class zza<V> extends zzdyk.zzh<V> {
        zza(Throwable th) {
            setException(th);
        }
    }

    zzdzq(@NullableDecl V v) {
        this.value = v;
    }

    @Override // com.google.android.gms.internal.ads.zzdzw
    public void addListener(Runnable runnable, Executor executor) {
        zzdwl.checkNotNull(runnable, "Runnable was null.");
        zzdwl.checkNotNull(executor, "Executor was null.");
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            Logger logger = zzhzc;
            Level level = Level.SEVERE;
            String valueOf = String.valueOf(runnable);
            String valueOf2 = String.valueOf(executor);
            StringBuilder sb = new StringBuilder(valueOf2.length() + valueOf.length() + 57);
            sb.append("RuntimeException while executing runnable ");
            sb.append(valueOf);
            sb.append(" with executor ");
            sb.append(valueOf2);
            logger.logp(level, "com.google.common.util.concurrent.ImmediateFuture", "addListener", sb.toString(), (Throwable) e);
        }
    }

    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public V get() {
        return this.value;
    }

    public boolean isCancelled() {
        return false;
    }

    public boolean isDone() {
        return true;
    }

    public String toString() {
        String obj = super.toString();
        String valueOf = String.valueOf(this.value);
        StringBuilder sb = new StringBuilder(valueOf.length() + String.valueOf(obj).length() + 27);
        sb.append(obj);
        sb.append("[status=SUCCESS, result=[");
        sb.append(valueOf);
        sb.append("]]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public V get(long j, TimeUnit timeUnit) {
        zzdwl.checkNotNull(timeUnit);
        return get();
    }
}
