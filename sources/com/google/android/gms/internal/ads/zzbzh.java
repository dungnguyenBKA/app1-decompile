package com.google.android.gms.internal.ads;

public final class zzbzh implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<zzcai> zzftr;
    private final zzbyz zzgbk;

    private zzbzh(zzbyz zzbyz, zzeqo<zzcai> zzeqo) {
        this.zzgbk = zzbyz;
        this.zzftr = zzeqo;
    }

    public static zzbzh zzc(zzbyz zzbyz, zzeqo<zzcai> zzeqo) {
        return new zzbzh(zzbyz, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), zzazp.zzeig), "Cannot return null from a non-@Nullable @Provides method");
    }
}
