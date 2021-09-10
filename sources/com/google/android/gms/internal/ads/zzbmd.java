package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbmd implements zzeqb<zzbsw> {
    private final zzbmc zzfvc;
    private final zzeqo<Set<zzbya<zzbtb>>> zzfvd;

    public zzbmd(zzbmc zzbmc, zzeqo<Set<zzbya<zzbtb>>> zzeqo) {
        this.zzfvc = zzbmc;
        this.zzfvd = zzeqo;
    }

    public static zzbsw zza(zzbmc zzbmc, Set<zzbya<zzbtb>> set) {
        return (zzbsw) zzeqh.zza(zzbmc.zza(set), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfvc, this.zzfvd.get());
    }
}
