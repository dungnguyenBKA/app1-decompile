package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;

public final class zzdou implements zzeqb<zzf> {
    private final zzeqo<zzayo> zzhas;
    private final zzdor zzhml;

    private zzdou(zzdor zzdor, zzeqo<zzayo> zzeqo) {
        this.zzhml = zzdor;
        this.zzhas = zzeqo;
    }

    public static zzf zza(zzdor zzdor, zzayo zzayo) {
        return (zzf) zzeqh.zza(zzayo.zzxs(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static zzdou zzb(zzdor zzdor, zzeqo<zzayo> zzeqo) {
        return new zzdou(zzdor, zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzhml, this.zzhas.get());
    }
}
