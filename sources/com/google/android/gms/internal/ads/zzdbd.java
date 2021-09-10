package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Set;

/* access modifiers changed from: package-private */
public final class zzdbd implements zzdfi<zzdfj<Bundle>> {
    private final Set<String> zzhav;

    zzdbd(Set<String> set) {
        this.zzhav = set;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfj<Bundle>> zzasy() {
        ArrayList arrayList = new ArrayList();
        for (String str : this.zzhav) {
            arrayList.add(str);
        }
        return zzdzk.zzag(new zzdbc(arrayList));
    }
}
