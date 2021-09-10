package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdos implements zzeqb<zzdop> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzayy> zzezq;

    private zzdos(zzeqo<Context> zzeqo, zzeqo<zzayy> zzeqo2) {
        this.zzewk = zzeqo;
        this.zzezq = zzeqo2;
    }

    public static zzdos zzbc(zzeqo<Context> zzeqo, zzeqo<zzayy> zzeqo2) {
        return new zzdos(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdop(this.zzewk.get(), this.zzezq.get());
    }
}
