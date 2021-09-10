package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzbzn implements zzeqb<zzbya<zzbrm>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzcam> zzftr;
    private final zzbyz zzgbk;

    private zzbzn(zzbyz zzbyz, zzeqo<zzcam> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzgbk = zzbyz;
        this.zzftr = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzbzn zzb(zzbyz zzbyz, zzeqo<zzcam> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzbzn(zzbyz, zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
