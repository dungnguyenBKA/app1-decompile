package com.google.android.gms.internal.measurement;

/* access modifiers changed from: package-private */
public final class zzat extends zzbg {
    final /* synthetic */ String zza;
    final /* synthetic */ Object zzb;
    final /* synthetic */ zzbr zzc;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzat(zzbr zzbr, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(zzbr, false);
        this.zzc = zzbr;
        this.zza = str;
        this.zzb = obj;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzc.zzk.logHealthData(5, this.zza, aw.Q(this.zzb), aw.Q(null), aw.Q(null));
    }
}
