package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzdlc implements zzeqb<zzdkx> {
    private final zzeqo<zzbgc> zzewg;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzcxy> zzgyt;
    private final zzeqo<Context> zzhex;
    private final zzeqo<zzdnr> zzhez;
    private final zzeqo<zzdlh> zzhhz;

    public zzdlc(zzeqo<Context> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzbgc> zzeqo3, zzeqo<zzcxy> zzeqo4, zzeqo<zzdlh> zzeqo5, zzeqo<zzdnr> zzeqo6) {
        this.zzhex = zzeqo;
        this.zzfux = zzeqo2;
        this.zzewg = zzeqo3;
        this.zzgyt = zzeqo4;
        this.zzhhz = zzeqo5;
        this.zzhez = zzeqo6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdkx(this.zzhex.get(), this.zzfux.get(), this.zzewg.get(), this.zzgyt.get(), this.zzhhz.get(), this.zzhez.get());
    }
}
