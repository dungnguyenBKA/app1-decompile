package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzbph implements zzeqb<zzbya<zzbyf>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzbyi> zzftr;

    private zzbph(zzeqo<zzbyi> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzftr = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzbph zzd(zzeqo<zzbyi> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzbph(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
