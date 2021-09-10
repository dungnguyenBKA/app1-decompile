package com.google.android.gms.internal.measurement;

public final class zzlw implements zzlv {
    public static final zzfg<Long> zza;
    public static final zzfg<Boolean> zzb;

    static {
        zzfe zzfe = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfe.zza("measurement.id.service.use_appinfo_modified", 0);
        zzb = zzfe.zzb("measurement.service.use_appinfo_modified", false);
    }

    @Override // com.google.android.gms.internal.measurement.zzlv
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzlv
    public final boolean zzb() {
        return zzb.zze().booleanValue();
    }
}
