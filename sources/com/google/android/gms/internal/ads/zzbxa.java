package com.google.android.gms.internal.ads;

import java.util.Objects;

public final class zzbxa implements zzeqb<zzbwg> {
    private final zzbwg zzgav;

    private zzbxa(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbxa zzz(zzbwg zzbwg) {
        return new zzbxa(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzbwg zzbwg = this.zzgav;
        Objects.requireNonNull(zzbwg);
        return (zzbwg) zzeqh.zza(zzbwg, "Cannot return null from a non-@Nullable @Provides method");
    }
}
