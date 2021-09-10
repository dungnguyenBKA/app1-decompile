package com.google.android.gms.internal.gtm;

final class zzfp extends zzbr implements zzcr<zzfr> {
    private final zzfr zza = new zzfr();

    public zzfp(zzbv zzbv) {
        super(zzbv);
    }

    /* Return type fixed from 'com.google.android.gms.internal.gtm.zzcq' to match base method */
    @Override // com.google.android.gms.internal.gtm.zzcr
    public final /* bridge */ /* synthetic */ zzfr zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.gtm.zzcr
    public final void zzb(String str, String str2) {
        this.zza.zzg.put(str, str2);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: boolean */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.gtm.zzcr
    public final void zzc(String str, boolean z) {
        if ("ga_autoActivityTracking".equals(str)) {
            this.zza.zzd = z;
        } else if ("ga_anonymizeIp".equals(str)) {
            this.zza.zze = z;
        } else if ("ga_reportUncaughtExceptions".equals(str)) {
            this.zza.zzf = z ? 1 : 0;
        } else {
            zzS("bool configuration name not recognized", str);
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzcr
    public final void zzd(String str, int i) {
        if ("ga_sessionTimeout".equals(str)) {
            this.zza.zzc = i;
        } else {
            zzS("int configuration name not recognized", str);
        }
    }

    @Override // com.google.android.gms.internal.gtm.zzcr
    public final void zze(String str, String str2) {
        if ("ga_trackingId".equals(str)) {
            this.zza.zza = str2;
        } else if ("ga_sampleFrequency".equals(str)) {
            try {
                this.zza.zzb = Double.parseDouble(str2);
            } catch (NumberFormatException e) {
                zzT("Error parsing ga_sampleFrequency value", str2, e);
            }
        } else {
            zzS("string configuration name not recognized", str);
        }
    }
}
