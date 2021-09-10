package com.google.android.gms.internal.ads;

public final class zzcik implements zzeqb<zzbya<zzbsh>> {
    private final zzeqo<zzcif> zzftr;
    private final zzcih zzgki;

    private zzcik(zzcih zzcih, zzeqo<zzcif> zzeqo) {
        this.zzgki = zzcih;
        this.zzftr = zzeqo;
    }

    public static zzcik zza(zzcih zzcih, zzeqo<zzcif> zzeqo) {
        return new zzcik(zzcih, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), zzazp.zzeig), "Cannot return null from a non-@Nullable @Provides method");
    }
}
