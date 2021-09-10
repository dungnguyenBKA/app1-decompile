package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzcfu implements zzeqb<zzcfn> {
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzbkm> zzggp;
    private final zzeqo<zzbxz> zzgio;

    public zzcfu(zzeqo<Executor> zzeqo, zzeqo<zzbkm> zzeqo2, zzeqo<zzbxz> zzeqo3) {
        this.zzfux = zzeqo;
        this.zzggp = zzeqo2;
        this.zzgio = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcfn(this.zzfux.get(), this.zzggp.get(), this.zzgio.get());
    }
}
