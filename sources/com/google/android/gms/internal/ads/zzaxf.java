package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzaxf implements zzaxv {
    private final Bundle zzebm;

    zzaxf(Bundle bundle) {
        this.zzebm = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzaxv
    public final void zzb(zzbfu zzbfu) {
        zzbfu.setConsent(this.zzebm);
    }
}
