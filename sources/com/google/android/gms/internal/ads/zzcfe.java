package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzcfe implements zzdvz {
    static final zzdvz zzeaj = new zzcfe();

    private zzcfe() {
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (zzcfg zzcfg : (List) obj) {
            if (zzcfg != null) {
                arrayList.add(zzcfg);
            }
        }
        return arrayList;
    }
}
