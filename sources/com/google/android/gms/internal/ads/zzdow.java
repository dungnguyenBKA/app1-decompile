package com.google.android.gms.internal.ads;

public final class zzdow implements zzeqb<zzayy> {
    private final zzeqo<zzayo> zzhas;
    private final zzdor zzhml;

    private zzdow(zzdor zzdor, zzeqo<zzayo> zzeqo) {
        this.zzhml = zzdor;
        this.zzhas = zzeqo;
    }

    public static zzdow zzc(zzdor zzdor, zzeqo<zzayo> zzeqo) {
        return new zzdow(zzdor, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzayy) zzeqh.zza(this.zzhas.get().zzxu(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
