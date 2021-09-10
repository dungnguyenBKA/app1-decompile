package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzal extends zzbg {
    final /* synthetic */ String zza;
    final /* synthetic */ zzbr zzb;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzal(zzbr zzbr, String str) {
        super(zzbr, true);
        this.zzb = zzbr;
        this.zza = str;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzb.zzk.beginAdUnitExposure(this.zza, this.zzi);
    }
}
