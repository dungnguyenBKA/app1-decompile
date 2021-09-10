package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzdyp<I, O> extends zzdyn<I, O, zzdvz<? super I, ? extends O>, O> {
    zzdyp(zzdzw<? extends I> zzdzw, zzdvz<? super I, ? extends O> zzdvz) {
        super(zzdzw, zzdvz);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyn
    public final void setResult(@NullableDecl O o) {
        set(o);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyn
    @NullableDecl
    public final /* synthetic */ Object zzd(Object obj, @NullableDecl Object obj2) {
        return ((zzdvz) obj).apply(obj2);
    }
}
