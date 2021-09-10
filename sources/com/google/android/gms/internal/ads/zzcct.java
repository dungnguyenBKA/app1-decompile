package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcct implements zzeqb<zzaxd> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdnp> zzfvf;
    private final zzccp zzgfg;

    private zzcct(zzccp zzccp, zzeqo<Context> zzeqo, zzeqo<zzdnp> zzeqo2) {
        this.zzgfg = zzccp;
        this.zzewk = zzeqo;
        this.zzfvf = zzeqo2;
    }

    public static zzcct zza(zzccp zzccp, zzeqo<Context> zzeqo, zzeqo<zzdnp> zzeqo2) {
        return new zzcct(zzccp, zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzaxd) zzeqh.zza(new zzaxd(this.zzewk.get(), this.zzfvf.get().zzhkx), "Cannot return null from a non-@Nullable @Provides method");
    }
}
