package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.List;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzdem implements zzdyv {
    private final String zzdjf;
    private final zzdek zzhcq;
    private final List zzhcr;
    private final Bundle zzhcs;

    zzdem(zzdek zzdek, String str, List list, Bundle bundle) {
        this.zzhcq = zzdek;
        this.zzdjf = str;
        this.zzhcr = list;
        this.zzhcs = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzdyv
    public final zzdzw zzatm() {
        return this.zzhcq.zza(this.zzdjf, this.zzhcr, this.zzhcs);
    }
}
