package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzcbe implements zzaif<Object> {
    private WeakReference<zzcbc> zzgcw;

    private zzcbe(zzcbc zzcbc) {
        this.zzgcw = new WeakReference<>(zzcbc);
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(Object obj, Map<String, String> map) {
        zzcbc zzcbc = this.zzgcw.get();
        if (zzcbc != null && "_ac".equals(map.get("eventName"))) {
            zzcbc.zzgcj.onAdClicked();
        }
    }
}
