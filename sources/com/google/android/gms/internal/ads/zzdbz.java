package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdbz implements zzeqb<zzdbx> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;

    private zzdbz(zzeqo<zzdzv> zzeqo, zzeqo<Context> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzewk = zzeqo2;
    }

    public static zzdbz zzat(zzeqo<zzdzv> zzeqo, zzeqo<Context> zzeqo2) {
        return new zzdbz(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdbx(this.zzewf.get(), this.zzewk.get());
    }
}
