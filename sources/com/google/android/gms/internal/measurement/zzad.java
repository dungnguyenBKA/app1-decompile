package com.google.android.gms.internal.measurement;

final class zzad extends zzbg {
    final /* synthetic */ String zza;
    final /* synthetic */ zzbr zzb;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzad(zzbr zzbr, String str) {
        super(zzbr, true);
        this.zzb = zzbr;
        this.zza = str;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzb.zzk.setUserId(this.zza, this.zzh);
    }
}
