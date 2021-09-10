package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzdym<I, O> extends zzdyn<I, O, zzdyu<? super I, ? extends O>, zzdzw<? extends O>> {
    zzdym(zzdzw<? extends I> zzdzw, zzdyu<? super I, ? extends O> zzdyu) {
        super(zzdzw, zzdyu);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyn
    public final /* synthetic */ void setResult(Object obj) {
        setFuture((zzdzw) obj);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyn
    public final /* synthetic */ Object zzd(Object obj, @NullableDecl Object obj2) {
        zzdyu zzdyu = (zzdyu) obj;
        zzdzw<O> zzf = zzdyu.zzf(obj2);
        zzdwl.zza(zzf, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", zzdyu);
        return zzf;
    }
}
