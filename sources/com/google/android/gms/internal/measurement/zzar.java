package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzar extends zzbg {
    final /* synthetic */ zzm zza;
    final /* synthetic */ zzbr zzb;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzar(zzbr zzbr, zzm zzm) {
        super(zzbr, true);
        this.zzb = zzbr;
        this.zza = zzm;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzb.zzk.getCurrentScreenClass(this.zza);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zzb() {
        this.zza.zzb(null);
    }
}
