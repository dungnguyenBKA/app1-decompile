package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzv;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcgu implements zzv {
    private final zzbsm zzgjh;

    private zzcgu(zzbsm zzbsm) {
        this.zzgjh = zzbsm;
    }

    static zzv zza(zzbsm zzbsm) {
        return new zzcgu(zzbsm);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzv
    public final void zzwg() {
        this.zzgjh.onAdLeftApplication();
    }
}
