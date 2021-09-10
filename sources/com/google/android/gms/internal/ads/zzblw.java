package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;
import java.util.concurrent.ScheduledExecutorService;

public final class zzblw implements zzeqb<zzbts> {
    private final zzeqo<d> zzfsz;
    private final zzeqo<ScheduledExecutorService> zzfun;

    public zzblw(zzeqo<ScheduledExecutorService> zzeqo, zzeqo<d> zzeqo2) {
        this.zzfun = zzeqo;
        this.zzfsz = zzeqo2;
    }

    public static zzbts zza(ScheduledExecutorService scheduledExecutorService, d dVar) {
        return (zzbts) zzeqh.zza(new zzbts(scheduledExecutorService, dVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfun.get(), this.zzfsz.get());
    }
}
