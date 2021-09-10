package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzboy implements zzdzl<Void> {
    private final /* synthetic */ zzbou zzfxi;

    zzboy(zzbou zzbou) {
        this.zzfxi = zzbou;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdzl
    public final /* synthetic */ void onSuccess(@NullableDecl Void r2) {
        this.zzfxi.zzfxc.zzbh(true);
    }

    @Override // com.google.android.gms.internal.ads.zzdzl
    public final void zzb(Throwable th) {
        this.zzfxi.zzfxc.zzbh(false);
    }
}
