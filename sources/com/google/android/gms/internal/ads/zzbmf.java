package com.google.android.gms.internal.ads;

public final class zzbmf implements zzeqb<zzdmz> {
    private final zzbmc zzfvc;

    public zzbmf(zzbmc zzbmc) {
        this.zzfvc = zzbmc;
    }

    public static zzdmz zza(zzbmc zzbmc) {
        return (zzdmz) zzeqh.zza(zzbmc.zzake(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfvc);
    }
}
