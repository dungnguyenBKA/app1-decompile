package com.google.android.gms.internal.measurement;

final class zzbd extends zzbg {
    final /* synthetic */ zzbi zza;
    final /* synthetic */ zzbr zzb;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzbd(zzbr zzbr, zzbi zzbi) {
        super(zzbr, true);
        this.zzb = zzbr;
        this.zza = zzbi;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzb.zzk.unregisterOnMeasurementEventListener(this.zza);
    }
}
