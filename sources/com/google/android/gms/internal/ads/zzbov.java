package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzbov implements zzdzl<zzatq> {
    private final /* synthetic */ zzbou zzfxi;

    zzbov(zzbou zzbou) {
        this.zzfxi = zzbou;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(@NullableDecl zzatq zzatq) {
        this.zzfxi.zzfxc.zzbg(true);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        this.zzfxi.zzfxc.zzbg(false);
    }
}
