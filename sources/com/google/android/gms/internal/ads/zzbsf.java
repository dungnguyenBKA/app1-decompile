package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbsf implements zzeqb<zzbsd> {
    private final zzeqo<Set<zzbya<zzbse>>> zzfvd;

    private zzbsf(zzeqo<Set<zzbya<zzbse>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbsf zzi(zzeqo<Set<zzbya<zzbse>>> zzeqo) {
        return new zzbsf(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbsd(this.zzfvd.get());
    }
}
