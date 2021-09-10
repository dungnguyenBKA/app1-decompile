package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbwp implements zzeqb<Set<zzbya<zzbsa>>> {
    private final zzbwg zzgav;

    private zzbwp(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbwp zzn(zzbwg zzbwg) {
        return new zzbwp(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamb(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
