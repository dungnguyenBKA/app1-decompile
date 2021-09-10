package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

public final class zzbwo implements zzeqb<Set<zzbya<zzbvn>>> {
    private final zzbwg zzgav;

    private zzbwo(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbwo zzm(zzbwg zzbwg) {
        return new zzbwo(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
