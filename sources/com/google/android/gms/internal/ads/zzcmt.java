package com.google.android.gms.internal.ads;

import android.content.Context;

public final class zzcmt implements zzeqb<zzcnj> {
    private final zzeqo<Context> zzewk;

    private zzcmt(zzeqo<Context> zzeqo) {
        this.zzewk = zzeqo;
    }

    public static zzcmt zzac(zzeqo<Context> zzeqo) {
        return new zzcmt(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzcnj) zzeqh.zza(new zzcnj(this.zzewk.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
