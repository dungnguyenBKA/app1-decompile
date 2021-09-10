package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;

public final class zzdcn implements zzeqb<zzdch<zzdby>> {
    private final zzeqo<d> zzfsz;
    private final zzeqo<zzdcb> zzhbu;

    public zzdcn(zzeqo<zzdcb> zzeqo, zzeqo<d> zzeqo2) {
        this.zzhbu = zzeqo;
        this.zzfsz = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdch) zzeqh.zza(new zzdch(this.zzhbu.get(), 10000, this.zzfsz.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
