package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

public final class zzdgo implements zzeqb<zzdgk> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzayk> zzexx;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzayo> zzhas;
    private final zzeqo<Integer> zzhdz;

    public zzdgo(zzeqo<zzayk> zzeqo, zzeqo<Integer> zzeqo2, zzeqo<Context> zzeqo3, zzeqo<zzayo> zzeqo4, zzeqo<ScheduledExecutorService> zzeqo5, zzeqo<Executor> zzeqo6) {
        this.zzexx = zzeqo;
        this.zzhdz = zzeqo2;
        this.zzewk = zzeqo3;
        this.zzhas = zzeqo4;
        this.zzfrq = zzeqo5;
        this.zzewf = zzeqo6;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdgk(this.zzexx.get(), this.zzhdz.get().intValue(), this.zzewk.get(), this.zzhas.get(), this.zzfrq.get(), this.zzewf.get());
    }
}
