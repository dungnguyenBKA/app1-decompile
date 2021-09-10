package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.reward.AdMetadataListener;
import java.util.Set;

public final class zzbwt implements zzeqb<Set<zzbya<AdMetadataListener>>> {
    private final zzbwg zzgav;

    private zzbwt(zzbwg zzbwg) {
        this.zzgav = zzbwg;
    }

    public static zzbwt zzr(zzbwg zzbwg) {
        return new zzbwt(zzbwg);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzgav.zzamc(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
