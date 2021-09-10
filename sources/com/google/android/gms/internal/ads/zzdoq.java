package com.google.android.gms.internal.ads;

public final class zzdoq implements zzeqb<zzbya<zzbrr>> {
    private final zzeqo<zzdop> zzfxm;
    private final zzdon zzhmk;

    private zzdoq(zzdon zzdon, zzeqo<zzdop> zzeqo) {
        this.zzhmk = zzdon;
        this.zzfxm = zzeqo;
    }

    public static zzdoq zza(zzdon zzdon, zzeqo<zzdop> zzeqo) {
        return new zzdoq(zzdon, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzfxm.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
