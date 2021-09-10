package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzdrr implements zzeqb<zzdrm> {
    private final zzeqo<Set<zzbya<zzdrp>>> zzfvd;

    private zzdrr(zzeqo<Set<zzbya<zzdrp>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzdrr zzat(zzeqo<Set<zzbya<zzdrp>>> zzeqo) {
        return new zzdrr(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdrm(this.zzfvd.get());
    }
}
