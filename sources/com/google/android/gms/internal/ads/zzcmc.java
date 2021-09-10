package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

public final class zzcmc implements zzeqb<zzclq> {
    private final zzeqo<zzcin> zzewd;
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzcla> zzexj;
    private final zzeqo<zzbxg> zzexn;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<Context> zzgnn;
    private final zzeqo<WeakReference<Context>> zzgno;

    public zzcmc(zzeqo<Executor> zzeqo, zzeqo<Context> zzeqo2, zzeqo<WeakReference<Context>> zzeqo3, zzeqo<Executor> zzeqo4, zzeqo<zzcin> zzeqo5, zzeqo<ScheduledExecutorService> zzeqo6, zzeqo<zzcla> zzeqo7, zzeqo<zzazn> zzeqo8, zzeqo<zzbxg> zzeqo9) {
        this.zzfux = zzeqo;
        this.zzgnn = zzeqo2;
        this.zzgno = zzeqo3;
        this.zzewf = zzeqo4;
        this.zzewd = zzeqo5;
        this.zzfrq = zzeqo6;
        this.zzexj = zzeqo7;
        this.zzftb = zzeqo8;
        this.zzexn = zzeqo9;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzclq(this.zzfux.get(), this.zzgnn.get(), this.zzgno.get(), this.zzewf.get(), this.zzewd.get(), this.zzfrq.get(), this.zzexj.get(), this.zzftb.get(), this.zzexn.get());
    }
}
