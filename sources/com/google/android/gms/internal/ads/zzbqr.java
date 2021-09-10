package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzbqr implements zzeqb<zzbqs> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdmw> zzfvr;
    private final zzeqo<zzarz> zzfyk;

    private zzbqr(zzeqo<Context> zzeqo, zzeqo<zzdmw> zzeqo2, zzeqo<zzarz> zzeqo3) {
        this.zzewk = zzeqo;
        this.zzfvr = zzeqo2;
        this.zzfyk = zzeqo3;
    }

    public static zzbqr zzl(zzeqo<Context> zzeqo, zzeqo<zzdmw> zzeqo2, zzeqo<zzarz> zzeqo3) {
        return new zzbqr(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbqs(this.zzewk.get(), this.zzfvr.get(), this.zzfyk.get());
    }
}
