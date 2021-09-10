package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;

public final class zzbpg implements zzeqb<zzayn> {
    private final zzeqo<zzayy> zzezq;
    private final zzeqo<d> zzfsz;
    private final zzeqo<zzdnp> zzfvf;

    private zzbpg(zzeqo<d> zzeqo, zzeqo<zzayy> zzeqo2, zzeqo<zzdnp> zzeqo3) {
        this.zzfsz = zzeqo;
        this.zzezq = zzeqo2;
        this.zzfvf = zzeqo3;
    }

    public static zzbpg zzg(zzeqo<d> zzeqo, zzeqo<zzayy> zzeqo2, zzeqo<zzdnp> zzeqo3) {
        return new zzbpg(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzayn) zzeqh.zza(this.zzezq.get().zza(this.zzfsz.get(), this.zzfvf.get().zzhkx), "Cannot return null from a non-@Nullable @Provides method");
    }
}
