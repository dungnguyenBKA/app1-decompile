package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;

public final class zzclb implements zzeqb<zzclc> {
    private final zzeqo<d> zzfsz;

    public zzclb(zzeqo<d> zzeqo) {
        this.zzfsz = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzclc(this.zzfsz.get());
    }
}
