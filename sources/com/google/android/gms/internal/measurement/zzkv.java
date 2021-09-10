package com.google.android.gms.internal.measurement;

public final class zzkv implements zzku {
    public static final zzfg<Boolean> zza;
    public static final zzfg<Boolean> zzb;

    static {
        zzfe zzfe = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfe.zzb("measurement.androidId.delete_feature", true);
        zzb = zzfe.zzb("measurement.log_androidId_enabled", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzku
    public final boolean zza() {
        return zza.zze().booleanValue();
    }
}
