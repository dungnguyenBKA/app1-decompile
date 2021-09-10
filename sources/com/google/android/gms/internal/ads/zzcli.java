package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

public final class zzcli implements zzeqb<Set<zzbya<zzbtb>>> {
    private final zzeqo<Executor> zzewf;
    private final zzeqo<zzclo> zzgjp;
    private final zzcle zzgmn;

    private zzcli(zzcle zzcle, zzeqo<zzclo> zzeqo, zzeqo<Executor> zzeqo2) {
        this.zzgmn = zzcle;
        this.zzgjp = zzeqo;
        this.zzewf = zzeqo2;
    }

    public static Set<zzbya<zzbtb>> zzb(zzcle zzcle, zzclo zzclo, Executor executor) {
        return (Set) zzeqh.zza(zzcle.zzc(zzclo, executor), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static zzcli zzd(zzcle zzcle, zzeqo<zzclo> zzeqo, zzeqo<Executor> zzeqo2) {
        return new zzcli(zzcle, zzeqo, zzeqo2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzgmn, this.zzgjp.get(), this.zzewf.get());
    }
}
