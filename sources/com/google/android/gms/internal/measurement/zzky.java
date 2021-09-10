package com.google.android.gms.internal.measurement;

public final class zzky implements zzkx {
    public static final zzfg<Boolean> zza;
    public static final zzfg<Long> zzb;

    static {
        zzfe zzfe = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfe.zzb("measurement.service.directly_maybe_log_error_events", false);
        zzb = zzfe.zza("measurement.id.service.directly_maybe_log_error_events", 0);
    }

    @Override // com.google.android.gms.internal.measurement.zzkx
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzkx
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }
}
