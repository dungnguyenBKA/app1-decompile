package com.google.android.gms.internal.measurement;

final class zzaj extends zzbg {
    final /* synthetic */ long zza;
    final /* synthetic */ zzbr zzb;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzaj(zzbr zzbr, long j) {
        super(zzbr, true);
        this.zzb = zzbr;
        this.zza = j;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzb.zzk.setSessionTimeoutDuration(this.zza);
    }
}
