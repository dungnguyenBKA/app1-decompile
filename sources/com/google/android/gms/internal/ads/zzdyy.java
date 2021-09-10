package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdyo;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzdyy<V> extends zzdyo<Object, V> {
    private zzdza<?> zziaf;

    zzdyy(zzdwy<? extends zzdzw<?>> zzdwy, boolean z, Executor executor, Callable<V> callable) {
        super(zzdwy, z, false);
        this.zziaf = new zzdzb(this, callable, executor);
        zzazw();
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdyk
    public final void interruptTask() {
        zzdza<?> zzdza = this.zziaf;
        if (zzdza != null) {
            zzdza.interruptTask();
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyo
    public final void zza(zzdyo.zza zza) {
        super.zza(zza);
        if (zza == zzdyo.zza.OUTPUT_FUTURE_DONE) {
            this.zziaf = null;
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyo
    public final void zzazx() {
        zzdza<?> zzdza = this.zziaf;
        if (zzdza != null) {
            zzdza.execute();
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyo
    public final void zzb(int i, @NullableDecl Object obj) {
    }
}
