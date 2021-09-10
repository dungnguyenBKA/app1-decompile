package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.ads.zzdug;

/* access modifiers changed from: package-private */
public final class c implements zzdug {
    private final /* synthetic */ zzf a;

    c(zzf zzf) {
        this.a = zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzdug
    public final void zza(int i, long j) {
        this.a.i.zzh(i, System.currentTimeMillis() - j);
    }

    @Override // com.google.android.gms.internal.ads.zzdug
    public final void zza(int i, long j, String str) {
        this.a.i.zzb(i, System.currentTimeMillis() - j, str);
    }
}
