package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbrn implements zzeqb<zzbrl> {
    private final zzeqo<Set<zzbya<zzvc>>> zzfvd;

    private zzbrn(zzeqo<Set<zzbya<zzvc>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbrn zzg(zzeqo<Set<zzbya<zzvc>>> zzeqo) {
        return new zzbrn(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbrl(this.zzfvd.get());
    }
}
