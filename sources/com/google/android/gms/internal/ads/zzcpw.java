package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcpw implements zzeqb<zzcpt> {
    private final zzeqo<Context> zzewk;

    private zzcpw(zzeqo<Context> zzeqo) {
        this.zzewk = zzeqo;
    }

    public static zzcpw zzaf(zzeqo<Context> zzeqo) {
        return new zzcpw(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcpt(this.zzewk.get());
    }
}
