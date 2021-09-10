package com.google.android.gms.internal.ads;

public final class zzboo implements zzeqb<zzdnb> {
    private final zzboj zzfwt;

    private zzboo(zzboj zzboj) {
        this.zzfwt = zzboj;
    }

    public static zzboo zzg(zzboj zzboj) {
        return new zzboo(zzboj);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzdnb) zzeqh.zza(this.zzfwt.zzaky(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
