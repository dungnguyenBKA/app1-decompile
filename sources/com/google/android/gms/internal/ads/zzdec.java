package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzdec implements zzdfj<Bundle> {
    private final Bundle zzfyw;

    public zzdec(Bundle bundle) {
        this.zzfyw = bundle;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle bundle3 = this.zzfyw;
        if (bundle3 != null) {
            bundle2.putAll(bundle3);
        }
    }
}
