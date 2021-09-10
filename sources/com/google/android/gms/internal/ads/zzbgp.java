package com.google.android.gms.internal.ads;

public final class zzbgp implements zzeqb<zzazn> {
    private final zzbgb zzewc;

    public zzbgp(zzbgb zzbgb) {
        this.zzewc = zzbgb;
    }

    public static zzazn zzb(zzbgb zzbgb) {
        return (zzazn) zzeqh.zza(zzbgb.zzaew(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzewc);
    }
}
