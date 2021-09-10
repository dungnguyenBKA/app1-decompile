package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzbf extends zzbg {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Object zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzbr zze;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzbf(zzbr zzbr, String str, String str2, Object obj, boolean z) {
        super(zzbr, true);
        this.zze = zzbr;
        this.zza = str;
        this.zzb = str2;
        this.zzc = obj;
        this.zzd = z;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zze.zzk.setUserProperty(this.zza, this.zzb, aw.Q(this.zzc), this.zzd, this.zzh);
    }
}
