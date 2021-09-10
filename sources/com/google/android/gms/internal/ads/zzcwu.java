package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcwu implements zzeqb<zzcwo> {
    private final zzeqo<zzdzv> zzfux;
    private final zzeqo<zzdrj> zzfvi;
    private final zzeqo<zzbmr> zzgtg;
    private final zzeqo<Context> zzgwv;
    private final zzeqo<zzacl> zzgww;

    public zzcwu(zzeqo<Context> zzeqo, zzeqo<zzbmr> zzeqo2, zzeqo<zzdrj> zzeqo3, zzeqo<zzdzv> zzeqo4, zzeqo<zzacl> zzeqo5) {
        this.zzgwv = zzeqo;
        this.zzgtg = zzeqo2;
        this.zzfvi = zzeqo3;
        this.zzfux = zzeqo4;
        this.zzgww = zzeqo5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcwo(this.zzgwv.get(), this.zzgtg.get(), this.zzfvi.get(), this.zzfux.get(), this.zzgww.get());
    }
}
