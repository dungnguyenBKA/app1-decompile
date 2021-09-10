package com.google.android.gms.internal.ads;

public final class zzbqg implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<zzbqs> zzewe;
    private final zzbps zzfxv;

    private zzbqg(zzbps zzbps, zzeqo<zzbqs> zzeqo) {
        this.zzfxv = zzbps;
        this.zzewe = zzeqo;
    }

    public static zzbqg zzc(zzbps zzbps, zzeqo<zzbqs> zzeqo) {
        return new zzbqg(zzbps, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
