package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

public final class zzbsb implements zzeqb<zzbrt> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzbrx> zzfhv;
    private final zzeqo<Set<zzbya<zzbrq>>> zzfvd;

    private zzbsb(zzeqo<zzbrx> zzeqo, zzeqo<Set<zzbya<zzbrq>>> zzeqo2, zzeqo<Executor> zzeqo3) {
        this.zzfhv = zzeqo;
        this.zzfvd = zzeqo2;
        this.zzewf = zzeqo3;
    }

    public static zzbsb zzn(zzeqo<zzbrx> zzeqo, zzeqo<Set<zzbya<zzbrq>>> zzeqo2, zzeqo<Executor> zzeqo3) {
        return new zzbsb(zzeqo, zzeqo2, zzeqo3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbrt(this.zzfhv.get(), this.zzfvd.get(), this.zzewf.get());
    }
}
