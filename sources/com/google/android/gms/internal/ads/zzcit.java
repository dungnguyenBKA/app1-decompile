package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzcit implements zzeqb<zzcip> {
    private final zzeqo<Executor> zzewf;

    public zzcit(zzeqo<Executor> zzeqo) {
        this.zzewf = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcip(this.zzewf.get());
    }
}
