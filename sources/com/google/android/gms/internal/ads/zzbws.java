package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbws implements zzeqb<Set<zzbya<zzbse>>> {
    private final zzbwg zzgav;

    private zzbws(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbws zzq(zzbwg zzbwg) {
        return new zzbws(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamf(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
