package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzbpk implements zzeqb<zzbya<zzvc>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzbjq> zzftr;

    private zzbpk(zzeqo<zzbjq> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzftr = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzbpk zzg(zzeqo<zzbjq> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzbpk(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
