package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzcft implements zzeqb<zzcfi> {
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzdnp> zzfvf;
    private final zzeqo<zzchq> zzggo;

    public zzcft(zzeqo<zzdnp> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzchq> zzeqo3) {
        this.zzfvf = zzeqo;
        this.zzfux = zzeqo2;
        this.zzggo = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcfi(this.zzfvf.get(), this.zzfux.get(), this.zzggo.get());
    }
}
