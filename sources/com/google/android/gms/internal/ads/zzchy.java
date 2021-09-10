package com.google.android.gms.internal.ads;

import android.graphics.Rect;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzchy implements zzqw {
    private final zzbeb zzeuk;

    zzchy(zzbeb zzbeb) {
        this.zzeuk = zzbeb;
    }

    @Override // com.google.android.gms.internal.ads.zzqw
    public final void zza(zzqx zzqx) {
        zzbfn zzacx = this.zzeuk.zzacx();
        Rect rect = zzqx.zzbrx;
        zzacx.zza(rect.left, rect.top, false);
    }
}
