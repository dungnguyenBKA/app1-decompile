package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzbpj implements zzeqb<zzbya<zzbrm>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzbjq> zzftr;

    private zzbpj(zzeqo<zzbjq> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzftr = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzbpj zzf(zzeqo<zzbjq> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzbpj(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
