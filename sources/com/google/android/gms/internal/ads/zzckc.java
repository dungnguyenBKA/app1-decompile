package com.google.android.gms.internal.ads;

import java.util.Map;

public final class zzckc implements zzeqb<zzcjx> {
    private final zzeqo<zztu> zzgjp;
    private final zzeqo<Map<zzdrk, zzcjz>> zzglm;

    private zzckc(zzeqo<zztu> zzeqo, zzeqo<Map<zzdrk, zzcjz>> zzeqo2) {
        this.zzgjp = zzeqo;
        this.zzglm = zzeqo2;
    }

    public static zzckc zzae(zzeqo<zztu> zzeqo, zzeqo<Map<zzdrk, zzcjz>> zzeqo2) {
        return new zzckc(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcjx(this.zzgjp.get(), this.zzglm.get());
    }
}
