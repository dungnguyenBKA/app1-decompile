package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzad;
import java.util.concurrent.Executor;

public final class zzcsl implements zzeqb<zzcsg> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzchq> zzggo;
    private final zzeqo<zzbmr> zzgtg;
    private final zzeqo<zzdvz<zzdmw, zzad>> zzgtq;

    public zzcsl(zzeqo<zzbmr> zzeqo, zzeqo<Context> zzeqo2, zzeqo<Executor> zzeqo3, zzeqo<zzchq> zzeqo4, zzeqo<zzdnp> zzeqo5, zzeqo<zzdvz<zzdmw, zzad>> zzeqo6) {
        this.zzgtg = zzeqo;
        this.zzewk = zzeqo2;
        this.zzfux = zzeqo3;
        this.zzggo = zzeqo4;
        this.zzfvf = zzeqo5;
        this.zzgtq = zzeqo6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcsg(this.zzgtg.get(), this.zzewk.get(), this.zzfux.get(), this.zzggo.get(), this.zzfvf.get(), this.zzgtq.get());
    }
}
