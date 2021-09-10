package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzcuf implements zzeqb<zzcug> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzcau> zzgtg;

    public zzcuf(zzeqo<Context> zzeqo, zzeqo<zzcau> zzeqo2, zzeqo<Executor> zzeqo3) {
        this.zzewk = zzeqo;
        this.zzgtg = zzeqo2;
        this.zzfux = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcug(this.zzewk.get(), this.zzgtg.get(), this.zzfux.get());
    }
}
