package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzcps implements zzeqb<zzbya<zzbrr>> {
    private final zzeqo<zzcpz> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzcps(zzeqo<zzcpz> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzewe = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzcps zzao(zzeqo<zzcpz> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzcps(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
