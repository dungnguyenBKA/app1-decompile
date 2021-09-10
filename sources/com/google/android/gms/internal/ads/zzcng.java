package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

public final class zzcng implements zzeqb<zzcnc> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzcqb> zzfaa;
    private final zzeqo<zzcme> zzfea;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzdnp> zzfvf;

    private zzcng(zzeqo<zzdnp> zzeqo, zzeqo<zzcme> zzeqo2, zzeqo<zzdzv> zzeqo3, zzeqo<ScheduledExecutorService> zzeqo4, zzeqo<zzcqb> zzeqo5) {
        this.zzfvf = zzeqo;
        this.zzfea = zzeqo2;
        this.zzewf = zzeqo3;
        this.zzfrq = zzeqo4;
        this.zzfaa = zzeqo5;
    }

    public static zzcng zzf(zzeqo<zzdnp> zzeqo, zzeqo<zzcme> zzeqo2, zzeqo<zzdzv> zzeqo3, zzeqo<ScheduledExecutorService> zzeqo4, zzeqo<zzcqb> zzeqo5) {
        return new zzcng(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcnc(this.zzfvf.get(), this.zzfea.get(), this.zzewf.get(), this.zzfrq.get(), this.zzfaa.get());
    }
}
