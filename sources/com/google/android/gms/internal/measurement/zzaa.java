package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* access modifiers changed from: package-private */
public final class zzaa extends zzbg {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zzbr zzb;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzaa(zzbr zzbr, Bundle bundle) {
        super(zzbr, true);
        this.zzb = zzbr;
        this.zza = bundle;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzb.zzk.setConditionalUserProperty(this.zza, this.zzh);
    }
}
