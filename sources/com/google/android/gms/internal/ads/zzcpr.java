package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzcpr implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<zzcpz> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzcpr(zzeqo<zzcpz> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzewe = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzcpr zzan(zzeqo<zzcpz> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzcpr(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
