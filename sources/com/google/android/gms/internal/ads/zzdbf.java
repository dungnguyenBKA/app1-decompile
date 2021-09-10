package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzdbf implements zzeqb<zzdbd> {
    private final zzeqo<Set<String>> zzhax;

    private zzdbf(zzeqo<Set<String>> zzeqo) {
        this.zzhax = zzeqo;
    }

    public static zzdbf zzam(zzeqo<Set<String>> zzeqo) {
        return new zzdbf(zzeqo);
    }

    public static zzdbd zzd(Set<String> set) {
        return new zzdbd(set);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzd(this.zzhax.get());
    }
}
