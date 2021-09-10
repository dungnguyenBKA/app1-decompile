package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzdml implements zzeqb<zzdmc> {
    private final zzeqo<zzbgc> zzewg;
    private final zzeqo<zzdnk> zzfpa;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzdlh> zzgyt;
    private final zzeqo<Context> zzhex;
    private final zzeqo<zzdkn<zzchi, zzchb>> zzhey;
    private final zzeqo<zzdnr> zzhez;

    public zzdml(zzeqo<Context> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzbgc> zzeqo3, zzeqo<zzdkn<zzchi, zzchb>> zzeqo4, zzeqo<zzdlh> zzeqo5, zzeqo<zzdnr> zzeqo6, zzeqo<zzdnk> zzeqo7) {
        this.zzhex = zzeqo;
        this.zzfux = zzeqo2;
        this.zzewg = zzeqo3;
        this.zzhey = zzeqo4;
        this.zzgyt = zzeqo5;
        this.zzhez = zzeqo6;
        this.zzfpa = zzeqo7;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdmc(this.zzhex.get(), this.zzfux.get(), this.zzewg.get(), this.zzhey.get(), this.zzgyt.get(), this.zzhez.get(), this.zzfpa.get());
    }
}
