package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

final class zzdzb extends zzdza<V> {
    private final /* synthetic */ zzdyy zziah;
    private final Callable<V> zziai;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzdzb(zzdyy zzdyy, Callable<V> callable, Executor executor) {
        super(zzdyy, executor);
        this.zziah = zzdyy;
        this.zziai = (Callable) zzdwl.checkNotNull(callable);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdza
    public final void setValue(V v) {
        this.zziah.set(v);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdzs
    public final V zzbab() {
        return this.zziai.call();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdzs
    public final String zzbac() {
        return this.zziai.toString();
    }
}
