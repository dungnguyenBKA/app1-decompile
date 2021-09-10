package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;

public final class zzblz implements zzeqb<zzblx> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzbye> zzfhb;
    private final zzeqo<zzbnw> zzfib;
    private final zzeqo<zzcxs> zzfna;
    private final zzeqo<View> zzfrt;
    private final zzeqo<zzdmz> zzfut;
    private final zzeqo<zzbeb> zzfuu;
    private final zzeqo<zzbnu> zzfuv;
    private final zzeqo<zzcco> zzfuw;
    private final zzeqo<Executor> zzfux;

    public zzblz(zzeqo<zzbnw> zzeqo, zzeqo<Context> zzeqo2, zzeqo<zzdmz> zzeqo3, zzeqo<View> zzeqo4, zzeqo<zzbeb> zzeqo5, zzeqo<zzbnu> zzeqo6, zzeqo<zzcco> zzeqo7, zzeqo<zzbye> zzeqo8, zzeqo<zzcxs> zzeqo9, zzeqo<Executor> zzeqo10) {
        this.zzfib = zzeqo;
        this.zzewk = zzeqo2;
        this.zzfut = zzeqo3;
        this.zzfrt = zzeqo4;
        this.zzfuu = zzeqo5;
        this.zzfuv = zzeqo6;
        this.zzfuw = zzeqo7;
        this.zzfhb = zzeqo8;
        this.zzfna = zzeqo9;
        this.zzfux = zzeqo10;
    }

    public static zzblx zza(zzbnw zzbnw, Context context, zzdmz zzdmz, View view, zzbeb zzbeb, zzbnu zzbnu, zzcco zzcco, zzbye zzbye, zzepv<zzcxs> zzepv, Executor executor) {
        return new zzblx(zzbnw, context, zzdmz, view, zzbeb, zzbnu, zzcco, zzbye, zzepv, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfib.get(), this.zzewk.get(), this.zzfut.get(), this.zzfrt.get(), this.zzfuu.get(), this.zzfuv.get(), this.zzfuw.get(), this.zzfhb.get(), zzeqc.zzav(this.zzfna), this.zzfux.get());
    }
}
