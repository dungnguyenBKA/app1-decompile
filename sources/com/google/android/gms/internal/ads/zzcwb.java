package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

public final class zzcwb implements zzeqb<zzcvy> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<Executor> zzfux;
    private final zzeqo<zzchi> zzgtg;

    public zzcwb(zzeqo<Context> zzeqo, zzeqo<Executor> zzeqo2, zzeqo<zzchi> zzeqo3) {
        this.zzewk = zzeqo;
        this.zzfux = zzeqo2;
        this.zzgtg = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcvy(this.zzewk.get(), this.zzfux.get(), this.zzgtg.get());
    }
}
