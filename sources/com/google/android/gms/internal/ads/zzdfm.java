package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

public final class zzdfm<T> implements zzeqb<zzdfl<T>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<Set<zzdfi<? extends zzdfj<T>>>> zzhdo;

    private zzdfm(zzeqo<Executor> zzeqo, zzeqo<Set<zzdfi<? extends zzdfj<T>>>> zzeqo2) {
        this.zzewf = zzeqo;
        this.zzhdo = zzeqo2;
    }

    public static <T> zzdfl<T> zza(Executor executor, Set<zzdfi<? extends zzdfj<T>>> set) {
        return new zzdfl<>(executor, set);
    }

    public static <T> zzdfm<T> zzba(zzeqo<Executor> zzeqo, zzeqo<Set<zzdfi<? extends zzdfj<T>>>> zzeqo2) {
        return new zzdfm<>(zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzewf.get(), this.zzhdo.get());
    }
}
