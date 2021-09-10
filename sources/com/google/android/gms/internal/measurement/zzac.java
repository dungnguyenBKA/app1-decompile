package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzac extends zzbg {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzm zzc;
    final /* synthetic */ zzbr zzd;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzac(zzbr zzbr, String str, String str2, zzm zzm) {
        super(zzbr, true);
        this.zzd = zzbr;
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzm;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzd.zzk.getConditionalUserProperties(this.zza, this.zzb, this.zzc);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zzb() {
        this.zzc.zzb(null);
    }
}
