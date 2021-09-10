package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzccu implements zzeqb<zzbya<zzbtt>> {
    private final zzeqo<zzcyq> zzewe;
    private final zzeqo<Executor> zzewf;

    private zzccu(zzeqo<zzcyq> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzewe = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzccu zzu(zzeqo<zzcyq> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzccu(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
