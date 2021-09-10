package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzcks implements zzeqb<zzckn> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzckw> zzexi;

    public zzcks(zzeqo<zzckw> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzexi = zzeqo;
        this.zzewf = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzckn(this.zzexi.get(), this.zzewf.get());
    }
}
