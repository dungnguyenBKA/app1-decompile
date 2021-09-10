package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzcjb implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<zzcjk> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzcjb(zzeqo<zzcjk> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzewe = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzcjb zzz(zzeqo<zzcjk> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzcjb(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
