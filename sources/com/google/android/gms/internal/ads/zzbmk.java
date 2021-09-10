package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzbmk implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<zzdmw> zzfta;
    private final zzbmc zzfvc;
    private final zzeqo<zzdnp> zzfvf;

    public zzbmk(zzbmc zzbmc, zzeqo<Context> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<zzdmw> zzeqo3, zzeqo<zzdnp> zzeqo4) {
        this.zzfvc = zzbmc;
        this.zzewk = zzeqo;
        this.zzfqo = zzeqo2;
        this.zzfta = zzeqo3;
        this.zzfvf = zzeqo4;
    }

    public static zzbya<zzbtb> zza(zzbmc zzbmc, Context context, zzazn zzazn, zzdmw zzdmw, zzdnp zzdnp) {
        return (zzbya) zzeqh.zza(new zzbya(new zzbmb(context, zzazn, zzdmw, zzdnp), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfvc, this.zzewk.get(), this.zzfqo.get(), this.zzfta.get(), this.zzfvf.get());
    }
}
