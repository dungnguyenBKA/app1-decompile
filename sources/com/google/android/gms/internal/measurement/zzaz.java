package com.google.android.gms.internal.measurement;

final class zzaz extends zzbg {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzbr zzb;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzaz(zzbr zzbr, boolean z) {
        super(zzbr, true);
        this.zzb = zzbr;
        this.zza = z;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzb.zzk.setDataCollectionEnabled(this.zza);
    }
}
