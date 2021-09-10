package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

final class zzbqn implements zzdzl<Boolean> {
    private final /* synthetic */ zzbql zzfye;

    zzbqn(zzbql zzbql) {
        this.zzfye = zzbql;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(@NullableDecl Boolean bool) {
        this.zzfye.zzfxz.onAdImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
    }
}
