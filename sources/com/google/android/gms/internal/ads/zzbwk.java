package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbwk implements zzeqb<zzbrp> {
    private final zzbwg zzgav;
    private final zzeqo<Set<zzbya<zzbrr>>> zzgaw;

    private zzbwk(zzbwg zzbwg, zzeqo<Set<zzbya<zzbrr>>> zzeqo) {
        this.zzgav = zzbwg;
        this.zzgaw = zzeqo;
    }

    public static zzbwk zza(zzbwg zzbwg, zzeqo<Set<zzbya<zzbrr>>> zzeqo) {
        return new zzbwk(zzbwg, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbrp) zzeqh.zza(this.zzgav.zzc(this.zzgaw.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
