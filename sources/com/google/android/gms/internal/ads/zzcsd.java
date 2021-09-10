package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzcsd implements zzeqb<zzcrz> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzchq> zzggo;
    private final zzeqo<zzbkx> zzgtg;

    public zzcsd(zzeqo<zzbkx> zzeqo, zzeqo<Context> zzeqo2, zzeqo<Executor> zzeqo3, zzeqo<zzchq> zzeqo4) {
        this.zzgtg = zzeqo;
        this.zzewk = zzeqo2;
        this.zzfux = zzeqo3;
        this.zzggo = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcrz(this.zzgtg.get(), this.zzewk.get(), this.zzfux.get(), this.zzggo.get());
    }
}
