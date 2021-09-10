package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbzm implements zzeqb<Set<zzbya<zzbrm>>> {
    private final zzeqo<zzbql> zzftr;
    private final zzbyz zzgbk;

    private zzbzm(zzbyz zzbyz, zzeqo<zzbql> zzeqo) {
        this.zzgbk = zzbyz;
        this.zzftr = zzeqo;
    }

    public static zzbzm zze(zzbyz zzbyz, zzeqo<zzbql> zzeqo) {
        return new zzbzm(zzbyz, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgbk.zzb(this.zzftr.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
