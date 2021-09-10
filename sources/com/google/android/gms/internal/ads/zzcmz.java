package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

public final class zzcmz implements zzeqb<zzcmx> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzcnn> zzgnv;
    private final zzeqo<zzcol> zzgnw;

    public zzcmz(zzeqo<ScheduledExecutorService> zzeqo, zzeqo<zzdzv> zzeqo2, zzeqo<zzcnn> zzeqo3, zzeqo<zzcol> zzeqo4) {
        this.zzfrq = zzeqo;
        this.zzewf = zzeqo2;
        this.zzgnv = zzeqo3;
        this.zzgnw = zzeqo4;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcmx(this.zzfrq.get(), this.zzewf.get(), this.zzgnv.get(), zzeqc.zzav(this.zzgnw));
    }
}
