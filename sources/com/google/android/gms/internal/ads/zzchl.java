package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzug;

public final class zzchl implements zzeqb<zzug.zza.EnumC0069zza> {
    private final zzeqo<zzdnp> zzfvf;

    public zzchl(zzeqo<zzdnp> zzeqo) {
        this.zzfvf = zzeqo;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzug.zza.EnumC0069zza zza;
        if (this.zzfvf.get().zzhle.zzhki == zzdnh.zzhkm) {
            zza = zzug.zza.EnumC0069zza.REWARDED_INTERSTITIAL;
        } else {
            zza = zzug.zza.EnumC0069zza.REWARD_BASED_VIDEO_AD;
        }
        return (zzug.zza.EnumC0069zza) zzeqh.zza(zza, "Cannot return null from a non-@Nullable @Provides method");
    }
}
