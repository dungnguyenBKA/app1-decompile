package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzcff implements zzeqb<zzcfb> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzcer> zzgib;

    public zzcff(zzeqo<Executor> zzeqo, zzeqo<zzcer> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzgib = zzeqo2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcfb(this.zzewf.get(), this.zzgib.get());
    }
}
