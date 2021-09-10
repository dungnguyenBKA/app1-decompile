package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;

public final class zzdqp implements zzeqb<ScheduledExecutorService> {
    private final zzeqo<ThreadFactory> zzhpp;

    public zzdqp(zzeqo<ThreadFactory> zzeqo) {
        this.zzhpp = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (ScheduledExecutorService) zzeqh.zza(zzdvd.zzayx().zzb(1, this.zzhpp.get(), zzdvm.zzhvh), "Cannot return null from a non-@Nullable @Provides method");
    }
}
