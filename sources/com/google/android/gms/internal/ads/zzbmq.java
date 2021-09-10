package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzbmq implements zzeqb<zzbya<zzqw>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzbns> zzftr;
    private final zzbmc zzfvc;

    public zzbmq(zzbmc zzbmc, zzeqo<zzbns> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzfvc = zzbmc;
        this.zzftr = zzeqo;
        this.zzewf = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
