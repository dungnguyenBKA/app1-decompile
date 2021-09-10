package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;

final /* synthetic */ class zzdbc implements zzdfj {
    private final ArrayList zzhau;

    zzdbc(ArrayList arrayList) {
        this.zzhau = arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzdfj
    public final void zzr(Object obj) {
        ((Bundle) obj).putStringArrayList("ad_types", this.zzhau);
    }
}
