package com.google.android.gms.internal.measurement;

final class zzay extends zzbg {
    final /* synthetic */ zzm zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ zzbr zzc;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzay(zzbr zzbr, zzm zzm, int i) {
        super(zzbr, true);
        this.zzc = zzbr;
        this.zza = zzm;
        this.zzb = i;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzc.zzk.getTestFlag(this.zza, this.zzb);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zzb() {
        this.zza.zzb(null);
    }
}
