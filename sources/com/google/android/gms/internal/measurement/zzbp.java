package com.google.android.gms.internal.measurement;

import android.app.Activity;

final class zzbp extends zzbg {
    final /* synthetic */ Activity zza;
    final /* synthetic */ zzbq zzb;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzbp(zzbq zzbq, Activity activity) {
        super(zzbq.zza, true);
        this.zzb = zzbq;
        this.zza = activity;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzb.zza.zzk.onActivityDestroyed(aw.Q(this.zza), this.zzi);
    }
}
