package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbwq implements zzeqb<Set<zzbya<zzbrr>>> {
    private final zzbwg zzgav;

    private zzbwq(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbwq zzo(zzbwg zzbwg) {
        return new zzbwq(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzama(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
