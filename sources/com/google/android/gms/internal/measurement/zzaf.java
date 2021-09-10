package com.google.android.gms.internal.measurement;

final class zzaf extends zzbg {
    final /* synthetic */ Boolean zza;
    final /* synthetic */ zzbr zzb;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzaf(zzbr zzbr, Boolean bool) {
        super(zzbr, true);
        this.zzb = zzbr;
        this.zza = bool;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        if (this.zza != null) {
            this.zzb.zzk.setMeasurementEnabled(this.zza.booleanValue(), this.zzh);
        } else {
            this.zzb.zzk.clearMeasurementEnabled(this.zzh);
        }
    }
}
