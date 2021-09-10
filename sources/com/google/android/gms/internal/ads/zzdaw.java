package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzdaw implements zzeqb<zzdav> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzdzw<String>> zzhan;

    private zzdaw(zzeqo<zzdzw<String>> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzhan = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzdaw zzar(zzeqo<zzdzw<String>> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzdaw(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdav(this.zzhan.get(), this.zzewf.get());
    }
}
