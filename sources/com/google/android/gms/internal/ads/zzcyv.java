package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcyv implements zzeqb<zzcyt> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzvs> zzgyq;
    private final zzeqo<String> zzgyr;
    private final zzeqo<zzdkx> zzgys;
    private final zzeqo<zzcxy> zzgyt;
    private final zzeqo<zzdlh> zzgyu;

    public zzcyv(zzeqo<Context> zzeqo, zzeqo<zzvs> zzeqo2, zzeqo<String> zzeqo3, zzeqo<zzdkx> zzeqo4, zzeqo<zzcxy> zzeqo5, zzeqo<zzdlh> zzeqo6) {
        this.zzewk = zzeqo;
        this.zzgyq = zzeqo2;
        this.zzgyr = zzeqo3;
        this.zzgys = zzeqo4;
        this.zzgyt = zzeqo5;
        this.zzgyu = zzeqo6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcyt(this.zzewk.get(), this.zzgyq.get(), this.zzgyr.get(), this.zzgys.get(), this.zzgyt.get(), this.zzgyu.get());
    }
}
