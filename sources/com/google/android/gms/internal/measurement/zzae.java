package com.google.android.gms.internal.measurement;

import android.app.Activity;

/* access modifiers changed from: package-private */
public final class zzae extends zzbg {
    final /* synthetic */ Activity zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzbr zzd;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    zzae(zzbr zzbr, Activity activity, String str, String str2) {
        super(zzbr, true);
        this.zzd = zzbr;
        this.zza = activity;
        this.zzb = str;
        this.zzc = str2;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.zzbg
    public final void zza() {
        this.zzd.zzk.setCurrentScreen(aw.Q(this.zza), this.zzb, this.zzc, this.zzh);
    }
}
