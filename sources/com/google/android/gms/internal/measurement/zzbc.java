package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzbc extends zzbg {
    final /* synthetic */ zzbi zza;
    final /* synthetic */ zzbr zzb;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzbc(zzbr zzbr, zzbi zzbi) {
        super(zzbr, true);
        this.zzb = zzbr;
        this.zza = zzbi;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzb.zzk.registerOnMeasurementEventListener(this.zza);
    }
}
