package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzcje implements zzeqb<zzbya<zzbua>> {
    private final zzeqo<zzcjk> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzcje(zzeqo<zzcjk> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzewe = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzcje zzab(zzeqo<zzcjk> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzcje(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
