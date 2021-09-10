package com.google.android.gms.internal.ads;

public final class zzbon implements zzeqb<zzdnl> {
    private final zzboj zzfwt;

    private zzbon(zzboj zzboj) {
        this.zzfwt = zzboj;
    }

    public static zzbon zze(zzboj zzboj) {
        return new zzbon(zzboj);
    }

    public static zzdnl zzf(zzboj zzboj) {
        return (zzdnl) zzeqh.zza(zzboj.zzakw(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzf(this.zzfwt);
    }
}
