package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzbor implements zzeqb<zzbya<zzbtg>> {
    private final zzeqo<zzbto> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzbor(zzeqo<zzbto> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzewe = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzbor zzb(zzeqo<zzbto> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzbor(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
