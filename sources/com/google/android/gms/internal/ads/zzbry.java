package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbry implements zzeqb<zzbrx> {
    private final zzeqo<Set<zzbya<zzbsa>>> zzfvd;

    private zzbry(zzeqo<Set<zzbya<zzbsa>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbry zzh(zzeqo<Set<zzbya<zzbsa>>> zzeqo) {
        return new zzbry(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbrx(this.zzfvd.get());
    }
}
