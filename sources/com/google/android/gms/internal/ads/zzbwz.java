package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

public final class zzbwz implements zzeqb<Set<zzbya<zzqw>>> {
    private final zzbwg zzgav;

    private zzbwz(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbwz zzy(zzbwg zzbwg) {
        return new zzbwz(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
