package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdfq implements zzeqb<zzdfo> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;

    public zzdfq(zzeqo<zzdzv> zzeqo, zzeqo<Context> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzewk = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdfo(this.zzewf.get(), this.zzewk.get());
    }
}
