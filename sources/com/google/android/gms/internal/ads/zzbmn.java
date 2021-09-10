package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzbmn implements zzeqb<zzaxd> {
    private final zzeqo<Context> zzewk;
    private final zzbmc zzfvc;
    private final zzeqo<zzdnp> zzfvf;

    public zzbmn(zzbmc zzbmc, zzeqo<Context> zzeqo, zzeqo<zzdnp> zzeqo2) {
        this.zzfvc = zzbmc;
        this.zzewk = zzeqo;
        this.zzfvf = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzaxd) zzeqh.zza(new zzaxd(this.zzewk.get(), this.zzfvf.get().zzhkx), "Cannot return null from a non-@Nullable @Provides method");
    }
}
