package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

public final class zzbxc implements zzeqb<Set<zzbya<zzbyf>>> {
    private final zzbwg zzgav;

    private zzbxc(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbxc zzab(zzbwg zzbwg) {
        return new zzbxc(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
