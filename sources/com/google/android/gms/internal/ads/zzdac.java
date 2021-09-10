package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

public final class zzdac implements zzeqb<zzczo> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<Context> zzewk;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzei> zzfru;
    private final zzeqo<zzazn> zzftb;
    private final zzeqo<zzdof<zzcgk>> zzgus;
    private final zzeqo<zzbgc> zzgzz;

    public zzdac(zzeqo<zzbgc> zzeqo, zzeqo<Context> zzeqo2, zzeqo<zzei> zzeqo3, zzeqo<zzazn> zzeqo4, zzeqo<zzdof<zzcgk>> zzeqo5, zzeqo<zzdzv> zzeqo6, zzeqo<ScheduledExecutorService> zzeqo7) {
        this.zzgzz = zzeqo;
        this.zzewk = zzeqo2;
        this.zzfru = zzeqo3;
        this.zzftb = zzeqo4;
        this.zzgus = zzeqo5;
        this.zzewf = zzeqo6;
        this.zzfrq = zzeqo7;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzczo(this.zzgzz.get(), this.zzewk.get(), this.zzfru.get(), this.zzftb.get(), this.zzgus.get(), this.zzewf.get(), this.zzfrq.get());
    }
}
