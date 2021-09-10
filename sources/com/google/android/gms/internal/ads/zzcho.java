package com.google.android.gms.internal.ads;

public final class zzcho implements zzeqb<String> {
    private final zzeqo<zzdnp> zzfvf;

    public zzcho(zzeqo<zzdnp> zzeqo) {
        this.zzfvf = zzeqo;
    }

    public static String zzb(zzdnp zzdnp) {
        return (String) zzeqh.zza(zzdnp.zzhle.zzhki == zzdnh.zzhkm ? "rewarded_interstitial" : "rewarded", "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzfvf.get());
    }
}
