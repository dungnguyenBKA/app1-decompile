package com.google.android.gms.internal.gtm;

import com.google.android.gms.analytics.q;

/* access modifiers changed from: package-private */
public final class zzby extends zzcw {
    final /* synthetic */ zzcc zza;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzby(zzcc zzcc, zzbv zzbv) {
        super(zzbv);
        this.zza = zzcc;
    }

    @Override // com.google.android.gms.internal.gtm.zzcw
    public final void zza() {
        zzcc zzcc = this.zza;
        q.h();
        if (zzcc.zzg()) {
            zzcc.zzO("Inactivity, disconnecting from device AnalyticsService");
            zzcc.zzc();
        }
    }
}
