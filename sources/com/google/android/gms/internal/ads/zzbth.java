package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbth implements zzeqb<zzbtf> {
    private final zzeqo<Set<zzbya<zzbtg>>> zzfvd;

    private zzbth(zzeqo<Set<zzbya<zzbtg>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbth zzn(zzeqo<Set<zzbya<zzbtg>>> zzeqo) {
        return new zzbth(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbtf(this.zzfvd.get());
    }
}
