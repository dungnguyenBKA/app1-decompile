package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzq;
import java.util.Set;

public final class zzbwl implements zzeqb<Set<zzbya<zzq>>> {
    private final zzbwg zzgav;

    private zzbwl(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbwl zzi(zzbwg zzbwg) {
        return new zzbwl(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamj(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
