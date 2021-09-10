package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbtq implements zzeqb<zzbto> {
    private final zzeqo<zzdmw> zzfrs;
    private final zzeqo<Set<zzbya<zzbtt>>> zzfvd;

    private zzbtq(zzeqo<Set<zzbya<zzbtt>>> zzeqo, zzeqo<zzdmw> zzeqo2) {
        this.zzfvd = zzeqo;
        this.zzfrs = zzeqo2;
    }

    public static zzbtq zzr(zzeqo<Set<zzbya<zzbtt>>> zzeqo, zzeqo<zzdmw> zzeqo2) {
        return new zzbtq(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbto(this.zzfvd.get(), this.zzfrs.get());
    }
}
