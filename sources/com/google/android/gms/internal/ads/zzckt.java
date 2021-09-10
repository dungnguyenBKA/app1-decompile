package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;
import java.util.Set;

public final class zzckt implements zzeqb<zzckr> {
    private final zzeqo<d> zzfsz;
    private final zzeqo<zzckl> zzgly;
    private final zzeqo<Set<zzcku>> zzglz;

    private zzckt(zzeqo<zzckl> zzeqo, zzeqo<Set<zzcku>> zzeqo2, zzeqo<d> zzeqo3) {
        this.zzgly = zzeqo;
        this.zzglz = zzeqo2;
        this.zzfsz = zzeqo3;
    }

    public static zzckt zzw(zzeqo<zzckl> zzeqo, zzeqo<Set<zzcku>> zzeqo2, zzeqo<d> zzeqo3) {
        return new zzckt(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzckr(this.zzgly.get(), this.zzglz.get(), this.zzfsz.get());
    }
}
