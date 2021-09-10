package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

public final class zzbzp implements zzeqb<Set<zzbya<zzbxt>>> {
    private final zzeqo<zzcak> zzftr;

    private zzbzp(zzeqo<zzcak> zzeqo) {
        this.zzftr = zzeqo;
    }

    public static zzbzp zzw(zzeqo<zzcak> zzeqo) {
        return new zzbzp(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.singleton(zzbya.zzb(this.zzftr.get(), zzazp.zzeih)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
