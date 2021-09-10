package com.google.android.gms.internal.measurement;

import android.os.Bundle;

/* access modifiers changed from: package-private */
public final class zzab extends zzbg {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ Bundle zzc;
    final /* synthetic */ zzbr zzd;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzab(zzbr zzbr, String str, String str2, Bundle bundle) {
        super(zzbr, true);
        this.zzd = zzbr;
        this.zza = str;
        this.zzb = str2;
        this.zzc = bundle;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzd.zzk.clearConditionalUserProperty(this.zza, this.zzb, this.zzc);
    }
}
