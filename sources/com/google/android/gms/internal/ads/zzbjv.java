package com.google.android.gms.internal.ads;

import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzbjv implements zzaif<Object> {
    final /* synthetic */ zzbju zzfrx;

    zzbjv(zzbju zzbju) {
        this.zzfrx = zzbju;
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        if (this.zzfrx.zzn(map)) {
            this.zzfrx.executor.execute(new zzbjy(this));
        }
    }
}
