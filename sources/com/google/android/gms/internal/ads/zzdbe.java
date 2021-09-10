package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzdbe implements zzdfj<Bundle> {
    private final Bundle zzhaw;

    private zzdbe(Bundle bundle) {
        this.zzhaw = bundle;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        if (!this.zzhaw.isEmpty()) {
            bundle2.putBundle("installed_adapter_data", this.zzhaw);
        }
    }
}
