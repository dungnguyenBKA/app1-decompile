package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcvk implements zzeqb<zzcvf> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzchi> zzgtg;

    public zzcvk(zzeqo<Context> zzeqo, zzeqo<zzchi> zzeqo2) {
        this.zzewk = zzeqo;
        this.zzgtg = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcvf(this.zzewk.get(), this.zzgtg.get());
    }
}
