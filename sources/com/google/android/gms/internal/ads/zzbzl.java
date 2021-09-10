package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzbzl implements zzeqb<zzaxd> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdnp> zzfvf;
    private final zzbyz zzgbk;

    private zzbzl(zzbyz zzbyz, zzeqo<Context> zzeqo, zzeqo<zzdnp> zzeqo2) {
        this.zzgbk = zzbyz;
        this.zzewk = zzeqo;
        this.zzfvf = zzeqo2;
    }

    public static zzbzl zza(zzbyz zzbyz, zzeqo<Context> zzeqo, zzeqo<zzdnp> zzeqo2) {
        return new zzbzl(zzbyz, zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzaxd) zzeqh.zza(new zzaxd(this.zzewk.get(), this.zzfvf.get().zzhkx), "Cannot return null from a non-@Nullable @Provides method");
    }
}
