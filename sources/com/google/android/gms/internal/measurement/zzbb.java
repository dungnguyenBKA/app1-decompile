package com.google.android.gms.internal.measurement;

final class zzbb extends zzbg {
    final /* synthetic */ zzbh zza;
    final /* synthetic */ zzbr zzb;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzbb(zzbr zzbr, zzbh zzbh) {
        super(zzbr, true);
        this.zzb = zzbr;
        this.zza = zzbh;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzb.zzk.setEventInterceptor(this.zza);
    }
}
