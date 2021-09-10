package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdkq implements zzeqb<zzdkn<zzblk, zzblq>> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdov> zzeyu;
    private final zzeqo<zzdpq> zzeyv;

    public zzdkq(zzeqo<Context> zzeqo, zzeqo<zzdov> zzeqo2, zzeqo<zzdpq> zzeqo3) {
        this.zzewk = zzeqo;
        this.zzeyu = zzeqo2;
        this.zzeyv = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdkn) zzeqh.zza(zzdkr.zzb(this.zzewk.get(), this.zzeyu.get(), this.zzeyv.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
