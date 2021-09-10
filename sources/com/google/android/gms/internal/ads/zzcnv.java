package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcnv implements zzeqb<zzcnw> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzaxc> zzfqr;

    private zzcnv(zzeqo<Context> zzeqo, zzeqo<zzaxc> zzeqo2) {
        this.zzewk = zzeqo;
        this.zzfqr = zzeqo2;
    }

    public static zzcnv zzal(zzeqo<Context> zzeqo, zzeqo<zzaxc> zzeqo2) {
        return new zzcnv(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcnw(this.zzewk.get(), this.zzfqr.get());
    }
}
