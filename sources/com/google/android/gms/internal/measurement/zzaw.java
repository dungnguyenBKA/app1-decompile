package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzaw extends zzbg {
    final /* synthetic */ String zza;
    final /* synthetic */ zzm zzb;
    final /* synthetic */ zzbr zzc;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzaw(zzbr zzbr, String str, zzm zzm) {
        super(zzbr, true);
        this.zzc = zzbr;
        this.zza = str;
        this.zzb = zzm;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzc.zzk.getMaxUserProperties(this.zza, this.zzb);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zzb() {
        this.zzb.zzb(null);
    }
}
