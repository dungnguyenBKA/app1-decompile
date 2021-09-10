package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* access modifiers changed from: package-private */
public final class zzag extends zzbg {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zzbr zzb;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzag(zzbr zzbr, Bundle bundle) {
        super(zzbr, true);
        this.zzb = zzbr;
        this.zza = bundle;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzb.zzk.setConsent(this.zza, this.zzh);
    }
}
