package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

public final class zzbjr implements zzeqb<zzbjq> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdsq> zzfcw;
    private final zzeqo<zzacq> zzfdl;
    private final zzeqo<zzdnx> zzfgb;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzdnl> zzfrr;
    private final zzeqo<zzdmw> zzfrs;
    private final zzeqo<View> zzfrt;
    private final zzeqo<zzei> zzfru;
    private final zzeqo<zzacv> zzfrv;

    private zzbjr(zzeqo<Context> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<ScheduledExecutorService> zzeqo3, zzeqo<zzdnl> zzeqo4, zzeqo<zzdmw> zzeqo5, zzeqo<zzdsq> zzeqo6, zzeqo<zzdnx> zzeqo7, zzeqo<View> zzeqo8, zzeqo<zzei> zzeqo9, zzeqo<zzacq> zzeqo10, zzeqo<zzacv> zzeqo11) {
        this.zzewk = zzeqo;
        this.zzewf = zzeqo2;
        this.zzfrq = zzeqo3;
        this.zzfrr = zzeqo4;
        this.zzfrs = zzeqo5;
        this.zzfcw = zzeqo6;
        this.zzfgb = zzeqo7;
        this.zzfrt = zzeqo8;
        this.zzfru = zzeqo9;
        this.zzfdl = zzeqo10;
        this.zzfrv = zzeqo11;
    }

    public static zzbjr zza(zzeqo<Context> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<ScheduledExecutorService> zzeqo3, zzeqo<zzdnl> zzeqo4, zzeqo<zzdmw> zzeqo5, zzeqo<zzdsq> zzeqo6, zzeqo<zzdnx> zzeqo7, zzeqo<View> zzeqo8, zzeqo<zzei> zzeqo9, zzeqo<zzacq> zzeqo10, zzeqo<zzacv> zzeqo11) {
        return new zzbjr(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5, zzeqo6, zzeqo7, zzeqo8, zzeqo9, zzeqo10, zzeqo11);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbjq(this.zzewk.get(), this.zzewf.get(), this.zzfrq.get(), this.zzfrr.get(), this.zzfrs.get(), this.zzfcw.get(), this.zzfgb.get(), this.zzfrt.get(), this.zzfru.get(), this.zzfdl.get(), this.zzfrv.get());
    }
}
