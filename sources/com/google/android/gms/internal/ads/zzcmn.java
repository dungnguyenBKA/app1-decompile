package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzcmn implements zzeqb<zzbya<zzbua>> {
    private final zzeqo<zzcnw> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzcmn(zzeqo<zzcnw> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzewe = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzcmn zzai(zzeqo<zzcnw> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzcmn(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
