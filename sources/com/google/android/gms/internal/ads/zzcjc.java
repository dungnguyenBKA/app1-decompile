package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzcjc implements zzeqb<zzbya<zzbwc>> {
    private final zzeqo<zzcjk> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzcjc(zzeqo<zzcjk> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzewe = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzcjc zzaa(zzeqo<zzcjk> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzcjc(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
