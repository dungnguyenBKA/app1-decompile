package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzdba implements zzeqb<zzday> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdch<zzdfp>> zzeyf;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzayo> zzhas;

    private zzdba(zzeqo<zzdch<zzdfp>> zzeqo, zzeqo<zzdnp> zzeqo2, zzeqo<Context> zzeqo3, zzeqo<zzayo> zzeqo4) {
        this.zzeyf = zzeqo;
        this.zzfvf = zzeqo2;
        this.zzewk = zzeqo3;
        this.zzhas = zzeqo4;
    }

    public static zzdba zzh(zzeqo<zzdch<zzdfp>> zzeqo, zzeqo<zzdnp> zzeqo2, zzeqo<Context> zzeqo3, zzeqo<zzayo> zzeqo4) {
        return new zzdba(zzeqo, zzeqo2, zzeqo3, zzeqo4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzday(this.zzeyf.get(), this.zzfvf.get(), this.zzewk.get(), this.zzhas.get());
    }
}
