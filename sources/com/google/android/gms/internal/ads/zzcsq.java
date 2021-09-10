package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzcsq implements zzeqb<zzcso> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzbmr> zzgtg;

    public zzcsq(zzeqo<Context> zzeqo, zzeqo<zzazn> zzeqo2, zzeqo<zzbmr> zzeqo3, zzeqo<Executor> zzeqo4) {
        this.zzewk = zzeqo;
        this.zzftb = zzeqo2;
        this.zzgtg = zzeqo3;
        this.zzfux = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcso(this.zzewk.get(), this.zzftb.get(), this.zzgtg.get(), this.zzfux.get());
    }
}
