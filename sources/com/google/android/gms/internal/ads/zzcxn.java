package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzcxn implements zzeqb<zzcxj> {
    private final zzeqo<Executor> zzewf;

    public zzcxn(zzeqo<Executor> zzeqo) {
        this.zzewf = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcxj(this.zzewf.get());
    }
}
