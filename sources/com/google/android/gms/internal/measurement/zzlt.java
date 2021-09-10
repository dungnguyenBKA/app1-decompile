package com.google.android.gms.internal.measurement;

public final class zzlt implements zzls {
    public static final zzfg<Boolean> zza;
    public static final zzfg<Long> zzb;

    static {
        zzfe zzfe = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfe.zzb("measurement.sdk.referrer.delayed_install_referrer_api", false);
        zzb = zzfe.zza("measurement.id.sdk.referrer.delayed_install_referrer_api", 0);
    }

    @Override // com.google.android.gms.internal.measurement.zzls
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzls
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
