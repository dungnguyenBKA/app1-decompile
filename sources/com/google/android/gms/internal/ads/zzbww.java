package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbww implements zzeqb<Set<zzbya<zzbtg>>> {
    private final zzbwg zzgav;

    private zzbww(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbww zzv(zzbwg zzbwg) {
        return new zzbww(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamg(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
