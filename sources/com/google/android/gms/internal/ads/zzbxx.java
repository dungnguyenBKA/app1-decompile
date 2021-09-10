package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbxx implements zzeqb<zzbxw> {
    private final zzeqo<Set<zzbya<zzbxt>>> zzfvd;

    private zzbxx(zzeqo<Set<zzbya<zzbxt>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbxx zzt(zzeqo<Set<zzbya<zzbxt>>> zzeqo) {
        return new zzbxx(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbxw(this.zzfvd.get());
    }
}
