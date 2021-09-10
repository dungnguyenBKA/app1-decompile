package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzdel implements zzdfj<Bundle> {
    private final String zzhcp;

    public zzdel(String str) {
        this.zzhcp = str;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        bundle.putString("rtb", this.zzhcp);
    }
}
