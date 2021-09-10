package com.google.android.gms.internal.measurement;

import android.app.Activity;

final class zzbo extends zzbg {
    final /* synthetic */ Activity zza;
    final /* synthetic */ zzm zzb;
    final /* synthetic */ zzbq zzc;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzbo(zzbq zzbq, Activity activity, zzm zzm) {
        super(zzbq.zza, true);
        this.zzc = zzbq;
        this.zza = activity;
        this.zzb = zzm;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzc.zza.zzk.onActivitySaveInstanceState(aw.Q(this.zza), this.zzb, this.zzi);
    }
}
