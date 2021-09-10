package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzbpr implements zzeqb<zzbya<zzvc>> {
    private final zzeqo<zzbud> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzbpr(zzeqo<zzbud> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzewe = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzbpr zzk(zzeqo<zzbud> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzbpr(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
