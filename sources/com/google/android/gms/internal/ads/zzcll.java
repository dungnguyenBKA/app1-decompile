package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

public final class zzcll implements zzeqb<Set<zzbya<zzdrp>>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzclo> zzgjp;
    private final zzcle zzgmn;

    private zzcll(zzcle zzcle, zzeqo<zzclo> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzgmn = zzcle;
        this.zzgjp = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static zzcll zzg(zzcle zzcle, zzeqo<zzclo> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzcll(zzcle, zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (Set) zzeqh.zza(zzcle.zzh(this.zzgjp.get(), this.zzewf.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
