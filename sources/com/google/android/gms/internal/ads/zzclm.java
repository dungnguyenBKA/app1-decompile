package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

public final class zzclm implements zzeqb<Set<zzbya<zzbse>>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzclo> zzgjp;
    private final zzcle zzgmn;

    private zzclm(zzcle zzcle, zzeqo<zzclo> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzgmn = zzcle;
        this.zzgjp = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzclm zzh(zzcle zzcle, zzeqo<zzclo> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzclm(zzcle, zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(zzcle.zzf(this.zzgjp.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
