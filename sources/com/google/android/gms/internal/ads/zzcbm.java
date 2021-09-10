package com.google.android.gms.internal.ads;

public final class zzcbm implements zzeqb<zzccl> {
    private final zzcbi zzgdb;
    private final zzeqo<zzcbc> zzgdd;

    public zzcbm(zzcbi zzcbi, zzeqo<zzcbc> zzeqo) {
        this.zzgdb = zzcbi;
        this.zzgdd = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzccl) zzeqh.zza(this.zzgdd.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
