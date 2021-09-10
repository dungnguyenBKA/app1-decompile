package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzddd implements zzdfj<Bundle> {
    private final Boolean zzhcc;

    public zzddd(Boolean bool) {
        this.zzhcc = bool;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        Boolean bool = this.zzhcc;
        if (bool != null) {
            bundle2.putBoolean("hw_accel", bool.booleanValue());
        }
    }
}
