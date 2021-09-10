package com.google.android.gms.internal.ads;

import java.lang.Throwable;

/* access modifiers changed from: package-private */
public final class zzdyj<V, X extends Throwable> extends zzdyg<V, X, zzdyu<? super X, ? extends V>, zzdzw<? extends V>> {
    zzdyj(zzdzw<? extends V> zzdzw, Class<X> cls, zzdyu<? super X, ? extends V> zzdyu) {
        super(zzdzw, cls, zzdyu);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyg
    public final /* synthetic */ void setResult(Object obj) {
        setFuture((zzdzw) obj);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyg
    public final /* synthetic */ Object zza(Object obj, Throwable th) {
        zzdyu zzdyu = (zzdyu) obj;
        zzdzw zzf = zzdyu.zzf(th);
        zzdwl.zza(zzf, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzdyu);
        return zzf;
    }
}
