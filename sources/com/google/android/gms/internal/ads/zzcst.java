package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcst implements zzeqb<zzcsp> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzbmr> zzgtg;

    public zzcst(zzeqo<Context> zzeqo, zzeqo<zzbmr> zzeqo2) {
        this.zzewk = zzeqo;
        this.zzgtg = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcsp(this.zzewk.get(), this.zzgtg.get());
    }
}
