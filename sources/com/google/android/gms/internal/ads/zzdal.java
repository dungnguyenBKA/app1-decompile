package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzdal implements zzeqb<zzdaj> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzcmx> zzgnv;

    public zzdal(zzeqo<Executor> zzeqo, zzeqo<zzcmx> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzgnv = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdaj(this.zzewf.get(), this.zzgnv.get());
    }
}
