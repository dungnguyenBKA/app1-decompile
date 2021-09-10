package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

public final class zzcfc implements zzeqb<zzcer> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzcem> zzfdk;
    private final zzeqo<zzcfi> zzfdn;
    private final zzeqo<zzazn> zzfqo;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzei> zzgcz;
    private final zzeqo<zzb> zzgih;
    private final zzeqo<zztu> zzgii;

    public zzcfc(zzeqo<Context> zzeqo, zzeqo<zzcem> zzeqo2, zzeqo<zzei> zzeqo3, zzeqo<zzazn> zzeqo4, zzeqo<zzb> zzeqo5, zzeqo<zztu> zzeqo6, zzeqo<Executor> zzeqo7, zzeqo<zzdnp> zzeqo8, zzeqo<zzcfi> zzeqo9, zzeqo<ScheduledExecutorService> zzeqo10) {
        this.zzewk = zzeqo;
        this.zzfdk = zzeqo2;
        this.zzgcz = zzeqo3;
        this.zzfqo = zzeqo4;
        this.zzgih = zzeqo5;
        this.zzgii = zzeqo6;
        this.zzewf = zzeqo7;
        this.zzfvf = zzeqo8;
        this.zzfdn = zzeqo9;
        this.zzfrq = zzeqo10;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcer(this.zzewk.get(), this.zzfdk.get(), this.zzgcz.get(), this.zzfqo.get(), this.zzgih.get(), this.zzgii.get(), this.zzewf.get(), this.zzfvf.get(), this.zzfdn.get(), this.zzfrq.get());
    }
}
