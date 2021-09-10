package com.google.android.gms.internal.ads;

public final class zzbpe implements zzeqb<zzbya<zzbtb>> {
    private final zzbpa zzfxl;
    private final zzeqo<zzbpf> zzfxm;

    private zzbpe(zzbpa zzbpa, zzeqo<zzbpf> zzeqo) {
        this.zzfxl = zzbpa;
        this.zzfxm = zzeqo;
    }

    public static zzbpe zzd(zzbpa zzbpa, zzeqo<zzbpf> zzeqo) {
        return new zzbpe(zzbpa, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzfxm.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
