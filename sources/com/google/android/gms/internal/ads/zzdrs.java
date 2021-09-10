package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

public final class zzdrs implements zzeqb<zzdrj> {
    private final zzeqo<zzdzv> zzewf;
    private final zzeqo<zzdrm> zzfae;
    private final zzeqo<ScheduledExecutorService> zzfun;

    private zzdrs(zzeqo<zzdzv> zzeqo, zzeqo<ScheduledExecutorService> zzeqo2, zzeqo<zzdrm> zzeqo3) {
        this.zzewf = zzeqo;
        this.zzfun = zzeqo2;
        this.zzfae = zzeqo3;
    }

    public static zzdrs zzae(zzeqo<zzdzv> zzeqo, zzeqo<ScheduledExecutorService> zzeqo2, zzeqo<zzdrm> zzeqo3) {
        return new zzdrs(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdrj(this.zzewf.get(), this.zzfun.get(), this.zzfae.get());
    }
}
