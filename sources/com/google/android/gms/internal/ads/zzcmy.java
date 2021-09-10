package com.google.android.gms.internal.ads;

public final class zzcmy implements zzeqb<zzdsa> {
    private final zzeqo<String> zzgle;

    private zzcmy(zzeqo<String> zzeqo) {
        this.zzgle = zzeqo;
    }

    public static zzcmy zzae(zzeqo<String> zzeqo) {
        return new zzcmy(zzeqo);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdsa) zzeqh.zza(zzdsa.zzgy(this.zzgle.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
