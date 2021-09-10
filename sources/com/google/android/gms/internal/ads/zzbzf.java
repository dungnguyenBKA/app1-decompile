package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzbzf implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<zzdmw> zzfta;
    private final zzeqo<zzdnp> zzfvf;
    private final zzbyz zzgbk;

    private zzbzf(zzbyz zzbyz, zzeqo<Context> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<zzdmw> zzeqo3, zzeqo<zzdnp> zzeqo4) {
        this.zzgbk = zzbyz;
        this.zzewk = zzeqo;
        this.zzfqo = zzeqo2;
        this.zzfta = zzeqo3;
        this.zzfvf = zzeqo4;
    }

    public static zzbzf zza(zzbyz zzbyz, zzeqo<Context> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<zzdmw> zzeqo3, zzeqo<zzdnp> zzeqo4) {
        return new zzbzf(zzbyz, zzeqo, zzeqo2, zzeqo3, zzeqo4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(new zzbzc(this.zzewk.get(), this.zzfqo.get(), this.zzfta.get(), this.zzfvf.get()), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
