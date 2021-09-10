package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

public final class zzcte implements zzeqb<zzcta> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzbmr> zzfnf;
    private final zzeqo<zzcsg> zzfnj;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzbrp> zzgug;

    public zzcte(zzeqo<zzbmr> zzeqo, zzeqo<zzcsg> zzeqo2, zzeqo<zzbrp> zzeqo3, zzeqo<ScheduledExecutorService> zzeqo4, zzeqo<zzdzv> zzeqo5) {
        this.zzfnf = zzeqo;
        this.zzfnj = zzeqo2;
        this.zzgug = zzeqo3;
        this.zzfrq = zzeqo4;
        this.zzewf = zzeqo5;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcta(this.zzfnf.get(), this.zzfnj.get(), this.zzgug.get(), this.zzfrq.get(), this.zzewf.get());
    }
}
