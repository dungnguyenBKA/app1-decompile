package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

public final class zzbwm implements zzeqb<Set<zzbya<zzbtb>>> {
    private final zzbwg zzgav;

    private zzbwm(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbwm zzj(zzbwg zzbwg) {
        return new zzbwm(zzbwg);
    }

    public static Set<zzbya<zzbtb>> zzk(zzbwg zzbwg) {
        return (Set) zzeqh.zza(Collections.emptySet(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzk(this.zzgav);
    }
}
