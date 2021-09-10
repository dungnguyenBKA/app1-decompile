package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* access modifiers changed from: package-private */
public final /* synthetic */ class zzceu implements zzdvz {
    static final zzdvz zzeaj = new zzceu();

    private zzceu() {
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        ArrayList arrayList = new ArrayList();
        for (zzaed zzaed : (List) obj) {
            if (zzaed != null) {
                arrayList.add(zzaed);
            }
        }
        return arrayList;
    }
}
