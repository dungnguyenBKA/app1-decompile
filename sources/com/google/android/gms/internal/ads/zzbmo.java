package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

public final class zzbmo implements zzeqb<Set<zzbya<zzqw>>> {
    private final zzeqo<zzbno> zzftr;
    private final zzbmc zzfvc;

    public zzbmo(zzbmc zzbmc, zzeqo<zzbno> zzeqo) {
        this.zzfvc = zzbmc;
        this.zzftr = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.singleton(new zzbya(this.zzftr.get(), zzazp.zzeih)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
