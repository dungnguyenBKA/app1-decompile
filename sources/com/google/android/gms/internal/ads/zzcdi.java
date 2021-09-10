package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;

public final class zzcdi implements zzeqb<zzcdg> {
    private final zzeqo<zzcgk> zzfjj;
    private final zzeqo<d> zzfsz;

    public zzcdi(zzeqo<zzcgk> zzeqo, zzeqo<d> zzeqo2) {
        this.zzfjj = zzeqo;
        this.zzfsz = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcdg(this.zzfjj.get(), this.zzfsz.get());
    }
}
