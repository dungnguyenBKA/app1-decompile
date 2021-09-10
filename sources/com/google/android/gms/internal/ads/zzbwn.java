package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbwn implements zzeqb<Set<zzbya<zzvc>>> {
    private final zzbwg zzgav;

    private zzbwn(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbwn zzl(zzbwg zzbwg) {
        return new zzbwn(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzame(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
