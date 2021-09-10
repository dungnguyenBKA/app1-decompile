package com.google.android.gms.internal.measurement;

public final class zzml implements zzmk {
    public static final zzfg<Boolean> zza;
    public static final zzfg<Boolean> zzb;
    public static final zzfg<Boolean> zzc;
    public static final zzfg<Boolean> zzd;
    public static final zzfg<Long> zze;

    static {
        zzfe zzfe = new zzfe(zzex.zza("com.google.android.gms.measurement"));
        zza = zzfe.zzb("measurement.sdk.collection.enable_extend_user_property_size", true);
        zzb = zzfe.zzb("measurement.sdk.collection.last_deep_link_referrer2", true);
        zzc = zzfe.zzb("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        zzd = zzfe.zzb("measurement.sdk.collection.last_gclid_from_referrer2", false);
        zze = zzfe.zza("measurement.id.sdk.collection.last_deep_link_referrer2", 0);
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final boolean zza() {
        return zza.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final boolean zzb() {
        return zzb.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final boolean zzc() {
        return zzc.zze().booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final boolean zzd() {
        return zzd.zze().booleanValue();
    }
}
