package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbvk implements zzeqb<zzbvi> {
    private final zzeqo<Set<zzbya<zzbvn>>> zzfvd;

    private zzbvk(zzeqo<Set<zzbya<zzbvn>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbvk zzp(zzeqo<Set<zzbya<zzbvn>>> zzeqo) {
        return new zzbvk(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbvi(this.zzfvd.get());
    }
}
