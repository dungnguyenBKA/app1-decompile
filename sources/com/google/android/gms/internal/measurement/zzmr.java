package com.google.android.gms.internal.measurement;

public final class zzmr implements zzmq {
    public static final zzfg<Boolean> zza;
    public static final zzfg<Boolean> zzb;

    static {
        zzfe zzfe = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfe.zzb("measurement.sdk.screen.manual_screen_view_logging", true);
        zzb = zzfe.zzb("measurement.sdk.screen.disabling_automatic_reporting", true);
    }

    @Override // com.google.android.gms.internal.measurement.zzmq
    public final boolean zza() {
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zzmq
    public final boolean zzb() {
        return zza.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmq
    public final boolean zzc() {
        return zzb.zze().booleanValue();
    }
}
