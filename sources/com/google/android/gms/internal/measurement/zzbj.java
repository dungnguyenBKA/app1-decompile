package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;

final class zzbj extends zzbg {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ Activity zzb;
    final /* synthetic */ zzbq zzc;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzbj(zzbq zzbq, Bundle bundle, Activity activity) {
        super(zzbq.zza, true);
        this.zzc = zzbq;
        this.zza = bundle;
        this.zzb = activity;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        Bundle bundle;
        if (this.zza != null) {
            bundle = new Bundle();
            if (this.zza.containsKey("com.google.app_measurement.screen_service")) {
                Object obj = this.zza.get("com.google.app_measurement.screen_service");
                if (obj instanceof Bundle) {
                    bundle.putBundle("com.google.app_measurement.screen_service", (Bundle) obj);
                }
            }
        } else {
            bundle = null;
        }
        this.zzc.zza.zzk.onActivityCreated(aw.Q(this.zzb), bundle, this.zzi);
    }
}
