package com.google.android.gms.internal.ads;

public final class zzbom implements zzeqb<zzdmw> {
    private final zzboj zzfwt;

    private zzbom(zzboj zzboj) {
        this.zzfwt = zzboj;
    }

    public static zzbom zzc(zzboj zzboj) {
        return new zzbom(zzboj);
    }

    public static zzdmw zzd(zzboj zzboj) {
        return (zzdmw) zzeqh.zza(zzboj.zzakx(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzd(this.zzfwt);
    }
}
