package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbsv implements zzeqb<zzbsm> {
    private final zzeqo<Set<zzbya<zzbrm>>> zzfvd;

    private zzbsv(zzeqo<Set<zzbya<zzbrm>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbsv zzk(zzeqo<Set<zzbya<zzbrm>>> zzeqo) {
        return new zzbsv(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbsm(this.zzfvd.get());
    }
}
