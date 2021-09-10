package com.google.android.gms.internal.ads;

import android.os.Bundle;

final /* synthetic */ class zzdax implements zzdfj {
    private final String zzdlh;

    zzdax(String str) {
        this.zzdlh = str;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final void zzr(Object obj) {
        ((Bundle) obj).putString("ms", this.zzdlh);
    }
}
