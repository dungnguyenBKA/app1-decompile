package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzaxg implements zzaxv {
    private final String zzdlh;
    private final Bundle zzebn;

    zzaxg(String str, Bundle bundle) {
        this.zzdlh = str;
        this.zzebn = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzaxv
    public final void zzb(zzbfu zzbfu) {
        zzbfu.logEvent("am", this.zzdlh, this.zzebn);
    }
}
