package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbwu implements zzeqb<Set<zzbya<zzbtb>>> {
    private final zzbwg zzgav;

    private zzbwu(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbwu zzs(zzbwg zzbwg) {
        return new zzbwu(zzbwg);
    }

    public static Set<zzbya<zzbtb>> zzt(zzbwg zzbwg) {
        return (Set) zzeqh.zza(zzbwg.zzalz(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzt(this.zzgav);
    }
}
