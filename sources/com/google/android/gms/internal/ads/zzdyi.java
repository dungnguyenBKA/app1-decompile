package com.google.android.gms.internal.ads;

import java.lang.Throwable;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzdyi<V, X extends Throwable> extends zzdyg<V, X, zzdvz<? super X, ? extends V>, V> {
    zzdyi(zzdzw<? extends V> zzdzw, Class<X> cls, zzdvz<? super X, ? extends V> zzdvz) {
        super(zzdzw, cls, zzdvz);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyg
    public final void setResult(@NullableDecl V v) {
        set(v);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdyg
    @NullableDecl
    public final /* synthetic */ Object zza(Object obj, Throwable th) {
        return ((zzdvz) obj).apply(th);
    }
}
