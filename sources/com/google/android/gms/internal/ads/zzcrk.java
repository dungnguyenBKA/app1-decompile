package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcrk implements zzeqb<zzcrb> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzckn> zzexw;
    private final zzeqo<zzcqr> zzgjo;
    private final zzeqo<zzdrz> zzgjp;
    private final zzeqo<zzazo> zzgst;

    public zzcrk(zzeqo<Context> zzeqo, zzeqo<zzcqr> zzeqo2, zzeqo<zzazo> zzeqo3, zzeqo<zzckn> zzeqo4, zzeqo<zzdrz> zzeqo5) {
        this.zzewk = zzeqo;
        this.zzgjo = zzeqo2;
        this.zzgst = zzeqo3;
        this.zzexw = zzeqo4;
        this.zzgjp = zzeqo5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcrb(this.zzewk.get(), this.zzgjo.get(), this.zzgst.get(), this.zzexw.get(), this.zzgjp.get());
    }
}
