package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

public final class zzder implements zzeqb<zzdek> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzcxj> zzexf;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<String> zzftc;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzcxh> zzgwd;

    private zzder(zzeqo<zzdzv> zzeqo, zzeqo<ScheduledExecutorService> zzeqo2, zzeqo<String> zzeqo3, zzeqo<zzcxj> zzeqo4, zzeqo<Context> zzeqo5, zzeqo<zzdnp> zzeqo6, zzeqo<zzcxh> zzeqo7) {
        this.zzewf = zzeqo;
        this.zzfrq = zzeqo2;
        this.zzftc = zzeqo3;
        this.zzexf = zzeqo4;
        this.zzewk = zzeqo5;
        this.zzfvf = zzeqo6;
        this.zzgwd = zzeqo7;
    }

    public static zzder zzc(zzeqo<zzdzv> zzeqo, zzeqo<ScheduledExecutorService> zzeqo2, zzeqo<String> zzeqo3, zzeqo<zzcxj> zzeqo4, zzeqo<Context> zzeqo5, zzeqo<zzdnp> zzeqo6, zzeqo<zzcxh> zzeqo7) {
        return new zzder(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5, zzeqo6, zzeqo7);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdek(this.zzewf.get(), this.zzfrq.get(), this.zzftc.get(), this.zzexf.get(), this.zzewk.get(), this.zzfvf.get(), this.zzgwd.get());
    }
}
