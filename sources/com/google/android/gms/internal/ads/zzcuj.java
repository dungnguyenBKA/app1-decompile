package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcuj implements zzeqb<zzcui> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzcau> zzgtg;

    public zzcuj(zzeqo<Context> zzeqo, zzeqo<zzcau> zzeqo2) {
        this.zzewk = zzeqo;
        this.zzgtg = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcui(this.zzewk.get(), this.zzgtg.get());
    }
}
