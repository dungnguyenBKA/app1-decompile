package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzdjl implements zzeqb<zzdje> {
    private final zzeqo<zzbgc> zzewg;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzcxy> zzgyt;
    private final zzeqo<Context> zzhex;
    private final zzeqo<zzdnr> zzhez;
    private final zzeqo<zzvs> zzhgo;
    private final zzeqo<zzcys> zzhgp;

    public zzdjl(zzeqo<Context> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzvs> zzeqo3, zzeqo<zzbgc> zzeqo4, zzeqo<zzcxy> zzeqo5, zzeqo<zzcys> zzeqo6, zzeqo<zzdnr> zzeqo7) {
        this.zzhex = zzeqo;
        this.zzfux = zzeqo2;
        this.zzhgo = zzeqo3;
        this.zzewg = zzeqo4;
        this.zzgyt = zzeqo5;
        this.zzhgp = zzeqo6;
        this.zzhez = zzeqo7;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdje(this.zzhex.get(), this.zzfux.get(), this.zzhgo.get(), this.zzewg.get(), this.zzgyt.get(), this.zzhgp.get(), this.zzhez.get());
    }
}
