package com.google.android.gms.internal.ads;

public final class zzbqd implements zzeqb<zzbya<zzbsh>> {
    private final zzeqo<zzbqs> zzewe;
    private final zzbps zzfxv;

    private zzbqd(zzbps zzbps, zzeqo<zzbqs> zzeqo) {
        this.zzfxv = zzbps;
        this.zzewe = zzeqo;
    }

    public static zzbqd zzb(zzbps zzbps, zzeqo<zzbqs> zzeqo) {
        return new zzbqd(zzbps, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
