package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

public final class zzbqq implements zzeqb<zzbql> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzbsd> zzfyh;
    private final zzeqo<zzdmw> zzfyi;
    private final zzeqo<ScheduledExecutorService> zzfyj;

    private zzbqq(zzeqo<zzbsd> zzeqo, zzeqo<zzdmw> zzeqo2, zzeqo<ScheduledExecutorService> zzeqo3, zzeqo<Executor> zzeqo4) {
        this.zzfyh = zzeqo;
        this.zzfyi = zzeqo2;
        this.zzfyj = zzeqo3;
        this.zzewf = zzeqo4;
    }

    public static zzbqq zzb(zzeqo<zzbsd> zzeqo, zzeqo<zzdmw> zzeqo2, zzeqo<ScheduledExecutorService> zzeqo3, zzeqo<Executor> zzeqo4) {
        return new zzbqq(zzeqo, zzeqo2, zzeqo3, zzeqo4);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbql(this.zzfyh.get(), this.zzfyi.get(), this.zzfyj.get(), this.zzewf.get());
    }
}
