package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzdrx implements zzeqb<zzdrv> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzazo> zzexv;

    public zzdrx(zzeqo<Executor> zzeqo, zzeqo<zzazo> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzexv = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdrv(this.zzewf.get(), this.zzexv.get());
    }
}
