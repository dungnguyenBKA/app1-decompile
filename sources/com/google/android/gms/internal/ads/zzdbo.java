package com.google.android.gms.internal.ads;

import java.util.ArrayList;

final /* synthetic */ class zzdbo implements zzdvz {
    static final zzdvz zzeaj = new zzdbo();

    private zzdbo() {
    }

    @Override // com.google.android.gms.internal.ads.zzdvz
    public final Object apply(Object obj) {
        ArrayList arrayList = (ArrayList) obj;
        if (arrayList.isEmpty()) {
            return null;
        }
        return new zzdbr(arrayList);
    }
}
