package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzdhu implements zzeqb<zzdhv> {
    private final zzeqo<zzbgc> zzewg;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzdil> zzgyt;
    private final zzeqo<Context> zzhex;
    private final zzeqo<zzdkn<zzbkx, zzblg>> zzhey;
    private final zzeqo<zzdnr> zzhez;

    public zzdhu(zzeqo<Context> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzbgc> zzeqo3, zzeqo<zzdkn<zzbkx, zzblg>> zzeqo4, zzeqo<zzdil> zzeqo5, zzeqo<zzdnr> zzeqo6) {
        this.zzhex = zzeqo;
        this.zzfux = zzeqo2;
        this.zzewg = zzeqo3;
        this.zzhey = zzeqo4;
        this.zzgyt = zzeqo5;
        this.zzhez = zzeqo6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdhv(this.zzhex.get(), this.zzfux.get(), this.zzewg.get(), this.zzhey.get(), this.zzgyt.get(), this.zzhez.get());
    }
}
