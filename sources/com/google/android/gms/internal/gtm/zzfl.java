package com.google.android.gms.internal.gtm;

/* access modifiers changed from: package-private */
public final class zzfl implements zzcz {
    final /* synthetic */ Runnable zza;
    final /* synthetic */ zzfn zzb;

    zzfl(zzfn zzfn, Runnable runnable) {
        this.zzb = zzfn;
        this.zza = runnable;
    }

    @Override // com.google.android.gms.internal.gtm.zzcz
    public final void zza(Throwable th) {
        this.zzb.zzb.post(this.zza);
    }
}
