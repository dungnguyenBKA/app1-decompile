package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.d;
import java.util.concurrent.Executor;

public final class zzbke implements zzeqb<zzbjz> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzamo> zzfsw;
    private final zzeqo<zzbjx> zzfsx;
    private final zzeqo<zzbju> zzfsy;
    private final zzeqo<d> zzfsz;

    private zzbke(zzeqo<zzamo> zzeqo, zzeqo<zzbjx> zzeqo2, zzeqo<Executor> zzeqo3, zzeqo<zzbju> zzeqo4, zzeqo<d> zzeqo5) {
        this.zzfsw = zzeqo;
        this.zzfsx = zzeqo2;
        this.zzewf = zzeqo3;
        this.zzfsy = zzeqo4;
        this.zzfsz = zzeqo5;
    }

    public static zzbke zza(zzeqo<zzamo> zzeqo, zzeqo<zzbjx> zzeqo2, zzeqo<Executor> zzeqo3, zzeqo<zzbju> zzeqo4, zzeqo<d> zzeqo5) {
        return new zzbke(zzeqo, zzeqo2, zzeqo3, zzeqo4, zzeqo5);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbjz(this.zzfsw.get(), this.zzfsx.get(), this.zzewf.get(), this.zzfsy.get(), this.zzfsz.get());
    }
}
