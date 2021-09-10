package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* access modifiers changed from: package-private */
public final class zzau extends zzbg {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zzm zzb;
    final /* synthetic */ zzbr zzc;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzau(zzbr zzbr, Bundle bundle, zzm zzm) {
        super(zzbr, true);
        this.zzc = zzbr;
        this.zza = bundle;
        this.zzb = zzm;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzc.zzk.performAction(this.zza, this.zzb, this.zzh);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zzb() {
        this.zzb.zzb(null);
    }
}
