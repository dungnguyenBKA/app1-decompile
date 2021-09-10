package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzcrx implements zzeqb<zzcru> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzazn> zzfze;
    private final zzeqo<zzchq> zzggo;
    private final zzeqo<zzblk> zzgtg;

    public zzcrx(zzeqo<zzblk> zzeqo, zzeqo<Context> zzeqo2, zzeqo<Executor> zzeqo3, zzeqo<zzchq> zzeqo4, zzeqo<zzdnp> zzeqo5, zzeqo<zzazn> zzeqo6) {
        this.zzgtg = zzeqo;
        this.zzewk = zzeqo2;
        this.zzfux = zzeqo3;
        this.zzggo = zzeqo4;
        this.zzfvf = zzeqo5;
        this.zzfze = zzeqo6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcru(this.zzgtg.get(), this.zzewk.get(), this.zzfux.get(), this.zzggo.get(), this.zzfvf.get(), this.zzfze.get());
    }
}
