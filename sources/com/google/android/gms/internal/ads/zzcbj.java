package com.google.android.gms.internal.ads;

public final class zzcbj implements zzeqb<zzcch> {
    private final zzeqo<zzcck> zzfiz;
    private final zzcbi zzgdb;

    public zzcbj(zzcbi zzcbi, zzeqo<zzcck> zzeqo) {
        this.zzgdb = zzcbi;
        this.zzfiz = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzcch) zzeqh.zza(this.zzfiz.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
