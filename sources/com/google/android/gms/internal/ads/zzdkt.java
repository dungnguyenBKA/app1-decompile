package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdkt implements zzeqb<zzdkn<zzbkx, zzblg>> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdov> zzeyu;
    private final zzeqo<zzdpq> zzeyv;

    public zzdkt(zzeqo<Context> zzeqo, zzeqo<zzdov> zzeqo2, zzeqo<zzdpq> zzeqo3) {
        this.zzewk = zzeqo;
        this.zzeyu = zzeqo2;
        this.zzeyv = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdkn) zzeqh.zza(zzdkr.zza(this.zzewk.get(), this.zzeyu.get(), this.zzeyv.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
