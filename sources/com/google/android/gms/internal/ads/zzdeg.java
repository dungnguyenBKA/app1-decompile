package com.google.android.gms.internal.ads;

import android.os.Bundle;

public final class zzdeg implements zzdfj<Bundle> {
    private String zzdun;

    public zzdeg(String str) {
        this.zzdun = str;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        bundle.putString("request_id", this.zzdun);
    }
}
