package com.google.android.gms.internal.ads;

import java.util.Set;

public final class zzbyg implements zzeqb<zzbye> {
    private final zzeqo<Set<zzbya<zzbyf>>> zzfvd;

    private zzbyg(zzeqo<Set<zzbya<zzbyf>>> zzeqo) {
        this.zzfvd = zzeqo;
    }

    public static zzbyg zzu(zzeqo<Set<zzbya<zzbyf>>> zzeqo) {
        return new zzbyg(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbye(this.zzfvd.get());
    }
}
