package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

public final class zzdsc implements zzeqb<zzdrz> {
    private final zzeqo<zzdsf> zzewu;
    private final zzeqo<ScheduledExecutorService> zzfrq;
    private final zzeqo<zzdso> zzhrp;

    public zzdsc(zzeqo<zzdsf> zzeqo, zzeqo<zzdso> zzeqo2, zzeqo<ScheduledExecutorService> zzeqo3) {
        this.zzewu = zzeqo;
        this.zzhrp = zzeqo2;
        this.zzfrq = zzeqo3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        Object obj;
        zzepv zzav = zzeqc.zzav(this.zzewu);
        zzepv zzav2 = zzeqc.zzav(this.zzhrp);
        ScheduledExecutorService scheduledExecutorService = this.zzfrq.get();
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzdam)).booleanValue()) {
            obj = new zzdsb((zzdrz) zzav.get(), scheduledExecutorService);
        } else {
            obj = (zzdrz) zzav2.get();
        }
        return (zzdrz) zzeqh.zza(obj, "Cannot return null from a non-@Nullable @Provides method");
    }
}
