package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzcpu implements zzeqb<zzbya<zzdrp>> {
    private final zzeqo<zzcqg> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzcpu(zzeqo<zzcqg> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzewe = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzcpu zzap(zzeqo<zzcqg> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzcpu(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
