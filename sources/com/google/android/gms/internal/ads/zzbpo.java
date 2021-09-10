package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzbpo implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzbjq> zzftr;

    private zzbpo(zzeqo<zzbjq> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzftr = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzbya<zzbtb> zza(zzbjq zzbjq, Executor executor) {
        return (zzbya) zzeqh.zza(new zzbya(zzbjq, executor), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static zzbpo zzj(zzeqo<zzbjq> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzbpo(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzftr.get(), this.zzewf.get());
    }
}
