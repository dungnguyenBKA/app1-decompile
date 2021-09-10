package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzcto implements zzeqb<zzctf> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzchq> zzggo;
    private final zzeqo<zzbzy> zzgtg;

    public zzcto(zzeqo<Context> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<zzdnp> zzeqo3, zzeqo<Executor> zzeqo4, zzeqo<zzbzy> zzeqo5, zzeqo<zzchq> zzeqo6) {
        this.zzewk = zzeqo;
        this.zzftb = zzeqo2;
        this.zzfvf = zzeqo3;
        this.zzfux = zzeqo4;
        this.zzgtg = zzeqo5;
        this.zzggo = zzeqo6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzctf(this.zzewk.get(), this.zzftb.get(), this.zzfvf.get(), this.zzfux.get(), this.zzgtg.get(), this.zzggo.get());
    }
}
