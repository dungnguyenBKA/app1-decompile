package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

public final class zzbkt implements zzeqb<Set<zzbya<zzqw>>> {
    private final zzbks zzftm;
    private final zzeqo<zzbno> zzftr;

    public zzbkt(zzbks zzbks, zzeqo<zzbno> zzeqo) {
        this.zzftm = zzbks;
        this.zzftr = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(Collections.singleton(new zzbya(this.zzftr.get(), zzazp.zzeih)), "Cannot return null from a non-@Nullable @Provides method");
    }
}
