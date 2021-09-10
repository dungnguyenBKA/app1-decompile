package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
import java.util.concurrent.Executor;

public final class zzcgy implements zzeqb<zzcgt> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzdss> zzexv;
    private final zzeqo<zzckn> zzexw;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzazn> zzfze;
    private final zzeqo<zzei> zzgcz;
    private final zzeqo<zzb> zzgih;
    private final zzeqo<zzbej> zzgjn;
    private final zzeqo<zzcqr> zzgjo;
    private final zzeqo<zzdrz> zzgjp;

    public zzcgy(zzeqo<Context> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzei> zzeqo3, zzeqo<zzazn> zzeqo4, zzeqo<zzb> zzeqo5, zzeqo<zzbej> zzeqo6, zzeqo<zzcqr> zzeqo7, zzeqo<zzdss> zzeqo8, zzeqo<zzckn> zzeqo9, zzeqo<zzdrz> zzeqo10) {
        this.zzewk = zzeqo;
        this.zzfux = zzeqo2;
        this.zzgcz = zzeqo3;
        this.zzfze = zzeqo4;
        this.zzgih = zzeqo5;
        this.zzgjn = zzeqo6;
        this.zzgjo = zzeqo7;
        this.zzexv = zzeqo8;
        this.zzexw = zzeqo9;
        this.zzgjp = zzeqo10;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcgt(this.zzewk.get(), this.zzfux.get(), this.zzgcz.get(), this.zzfze.get(), this.zzgih.get(), this.zzgjn.get(), this.zzgjo.get(), this.zzexv.get(), this.zzexw.get(), this.zzgjp.get());
    }
}
