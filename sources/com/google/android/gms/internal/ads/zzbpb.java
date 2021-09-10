package com.google.android.gms.internal.ads;

public final class zzbpb implements zzeqb<zzbya<zzbse>> {
    private final zzbpa zzfxl;
    private final zzeqo<zzbpf> zzfxm;

    private zzbpb(zzbpa zzbpa, zzeqo<zzbpf> zzeqo) {
        this.zzfxl = zzbpa;
        this.zzfxm = zzeqo;
    }

    public static zzbpb zzb(zzbpa zzbpa, zzeqo<zzbpf> zzeqo) {
        return new zzbpb(zzbpa, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzfxm.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
