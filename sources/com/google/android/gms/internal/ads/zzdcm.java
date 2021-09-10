package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;

public final class zzdcm implements zzeqb<zzdch<zzdfp>> {
    private final zzeqo<zzdfo> zzeyf;
    private final zzeqo<d> zzfsz;

    public zzdcm(zzeqo<zzdfo> zzeqo, zzeqo<d> zzeqo2) {
        this.zzeyf = zzeqo;
        this.zzfsz = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdch) zzeqh.zza(new zzdch(this.zzeyf.get(), zzada.zzdcn.get().longValue(), this.zzfsz.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
