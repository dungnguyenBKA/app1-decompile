package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

public final class zzdbq implements zzeqb<zzdbp> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzayo> zzhas;

    private zzdbq(zzeqo<Executor> zzeqo, zzeqo<zzayo> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzhas = zzeqo2;
    }

    public static zzdbp zza(Executor executor, zzayo zzayo) {
        return new zzdbp(executor, zzayo);
    }

    public static zzdbq zzas(zzeqo<Executor> zzeqo, zzeqo<zzayo> zzeqo2) {
        return new zzdbq(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzewf.get(), this.zzhas.get());
    }
}
