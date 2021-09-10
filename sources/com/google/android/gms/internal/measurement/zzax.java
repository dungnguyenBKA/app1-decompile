package com.google.android.gms.internal.measurement;

final class zzax extends zzbg {
    final /* synthetic */ zzm zza;
    final /* synthetic */ zzbr zzb;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzax(zzbr zzbr, zzm zzm) {
        super(zzbr, true);
        this.zzb = zzbr;
        this.zza = zzm;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzb.zzk.getAppInstanceId(this.zza);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zzb() {
        this.zza.zzb(null);
    }
}
