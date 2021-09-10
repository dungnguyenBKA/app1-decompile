package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

public final class zzdhg implements zzeqb<zzdhe> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzarw> zzexx;
    private final zzeqo<ScheduledExecutorService> zzfrq;

    public zzdhg(zzeqo<zzarw> zzeqo, zzeqo<ScheduledExecutorService> zzeqo2, zzeqo<Context> zzeqo3) {
        this.zzexx = zzeqo;
        this.zzfrq = zzeqo2;
        this.zzewk = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdhe(this.zzexx.get(), this.zzfrq.get(), this.zzewk.get());
    }
}
