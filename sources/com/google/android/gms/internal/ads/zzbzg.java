package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

public final class zzbzg implements zzeqb<Set<zzbya<zzbvq>>> {
    private final zzeqo<zzbql> zzftr;
    private final zzbyz zzgbk;

    private zzbzg(zzbyz zzbyz, zzeqo<zzbql> zzeqo) {
        this.zzgbk = zzbyz;
        this.zzftr = zzeqo;
    }

    public static zzbzg zzb(zzbyz zzbyz, zzeqo<zzbql> zzeqo) {
        return new zzbzg(zzbyz, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.singleton(zzbya.zzb(this.zzftr.get(), zzazp.zzeih)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
