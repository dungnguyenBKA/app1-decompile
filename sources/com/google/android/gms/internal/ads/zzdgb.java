package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

public final class zzdgb implements zzeqb<zzdfw> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzayk> zzexx;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<Integer> zzhdz;

    public zzdgb(zzeqo<zzayk> zzeqo, zzeqo<Context> zzeqo2, zzeqo<ScheduledExecutorService> zzeqo3, zzeqo<Executor> zzeqo4, zzeqo<Integer> zzeqo5) {
        this.zzexx = zzeqo;
        this.zzewk = zzeqo2;
        this.zzfrq = zzeqo3;
        this.zzewf = zzeqo4;
        this.zzhdz = zzeqo5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdfw(this.zzexx.get(), this.zzewk.get(), this.zzfrq.get(), this.zzewf.get(), this.zzhdz.get().intValue());
    }
}
