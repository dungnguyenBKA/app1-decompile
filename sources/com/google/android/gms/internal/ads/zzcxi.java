package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcxi implements zzeqb<zzcxe> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzbzy> zzgtg;

    public zzcxi(zzeqo<Context> zzeqo, zzeqo<zzbzy> zzeqo2) {
        this.zzewk = zzeqo;
        this.zzgtg = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcxe(this.zzewk.get(), this.zzgtg.get());
    }
}
