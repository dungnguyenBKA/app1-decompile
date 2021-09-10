package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* access modifiers changed from: package-private */
public final class zzdct implements zzdfj<Bundle> {
    private final String zzdvs;
    private final String zzhbw;
    private final Bundle zzhbx;

    private zzdct(String str, String str2, Bundle bundle) {
        this.zzdvs = str;
        this.zzhbw = str2;
        this.zzhbx = bundle;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzdfj
    public final /* synthetic */ void zzr(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("consent_string", this.zzdvs);
        bundle2.putString("fc_consent", this.zzhbw);
        bundle2.putBundle("iab_consent_info", this.zzhbx);
    }
}
