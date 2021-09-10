package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzbzs implements zzeqb<zzbya<zzbvn>> {
    private final zzeqo<Executor> zzewf;
    private final zzbyz zzgbk;

    private zzbzs(zzbyz zzbyz, zzeqo<Executor> zzeqo) {
        this.zzgbk = zzbyz;
        this.zzewf = zzeqo;
    }

    public static zzbzs zzf(zzbyz zzbyz, zzeqo<Executor> zzeqo) {
        return new zzbzs(zzbyz, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(this.zzgbk.zzb(this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
