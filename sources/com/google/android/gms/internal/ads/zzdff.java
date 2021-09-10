package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdff implements zzdfj {
    private final Bundle zzebm;

    zzdff(Bundle bundle) {
        this.zzebm = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final void zzr(Object obj) {
        ((Bundle) obj).putBundle("shared_pref", this.zzebm);
    }
}
