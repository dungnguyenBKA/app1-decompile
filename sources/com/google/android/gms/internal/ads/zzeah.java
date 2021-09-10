package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzeah<V> extends zzdze<V> implements RunnableFuture<V> {
    private volatile zzdzs<?> zzibc;

    private zzeah(Callable<V> callable) {
        this.zzibc = new zzeaj(this, callable);
    }

    static <V> zzeah<V> zza(Runnable runnable, @NullableDecl V v) {
        return new zzeah<>(Executors.callable(runnable, v));
    }

    static <V> zzeah<V> zzf(Callable<V> callable) {
        return new zzeah<>(callable);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdyk
    public final void afterDone() {
        zzdzs<?> zzdzs;
        super.afterDone();
        if (wasInterrupted() && (zzdzs = this.zzibc) != null) {
            zzdzs.interruptTask();
        }
        this.zzibc = null;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdyk
    public final String pendingToString() {
        zzdzs<?> zzdzs = this.zzibc;
        if (zzdzs == null) {
            return super.pendingToString();
        }
        String valueOf = String.valueOf(zzdzs);
        return ic.e(valueOf.length() + 7, "task=[", valueOf, "]");
    }

    public final void run() {
        zzdzs<?> zzdzs = this.zzibc;
        if (zzdzs != null) {
            zzdzs.run();
        }
        this.zzibc = null;
    }

    zzeah(zzdyv<V> zzdyv) {
        this.zzibc = new zzeak(this, zzdyv);
    }
}
