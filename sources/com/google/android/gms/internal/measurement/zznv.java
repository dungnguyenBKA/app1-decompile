package com.google.android.gms.internal.measurement;

public final class zznv implements zznu {
    public static final zzfg<Boolean> zza;
    public static final zzfg<Long> zzb;

    static {
        zzfe zzfe = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfe.zzb("measurement.upload.file_lock_state_check", false);
        zzb = zzfe.zza("measurement.id.upload.file_lock_state_check", 0);
    }

    @Override // com.google.android.gms.internal.measurement.zznu
    public final boolean zza() {
        return zza.zze().booleanValue();
    }
}
