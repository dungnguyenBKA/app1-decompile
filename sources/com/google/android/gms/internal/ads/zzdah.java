package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzdah implements zzeqb<Set<String>> {
    private final zzdab zzhaa;

    public zzdah(zzdab zzdab) {
        this.zzhaa = zzdab;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(this.zzhaa.zzasv(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
