package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbwv implements zzeqb<Set<zzbya<zzbtt>>> {
    private final zzbwg zzgav;

    private zzbwv(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbwv zzu(zzbwg zzbwg) {
        return new zzbwv(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamh(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
