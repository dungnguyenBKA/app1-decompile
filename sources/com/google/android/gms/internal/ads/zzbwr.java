package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbwr implements zzeqb<Set<zzbya<zzbrm>>> {
    private final zzbwg zzgav;

    private zzbwr(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbwr zzp(zzbwg zzbwg) {
        return new zzbwr(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzaly(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
