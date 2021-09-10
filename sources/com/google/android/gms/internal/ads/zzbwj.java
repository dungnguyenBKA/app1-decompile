package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

public final class zzbwj implements zzeqb<Set<zzbya<zzbsh>>> {
    private final zzbwg zzgav;

    private zzbwj(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbwj zzh(zzbwg zzbwg) {
        return new zzbwj(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
