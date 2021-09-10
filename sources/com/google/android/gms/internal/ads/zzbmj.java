package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

public final class zzbmj implements zzeqb<Set<zzbya<zzbtb>>> {
    private final zzeqo<zzbno> zzftr;
    private final zzbmc zzfvc;

    public zzbmj(zzbmc zzbmc, zzeqo<zzbno> zzeqo) {
        this.zzfvc = zzbmc;
        this.zzftr = zzeqo;
    }

    public static Set<zzbya<zzbtb>> zza(zzbmc zzbmc, zzbno zzbno) {
        return (Set) zzeqh.zza(Collections.singleton(new zzbya(zzbno, zzazp.zzeih)), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfvc, this.zzftr.get());
    }
}
