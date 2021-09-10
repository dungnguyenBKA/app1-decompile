package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* access modifiers changed from: package-private */
public final class zzdyw<V> extends zzdyx<V, List<V>> {
    zzdyw(zzdwy<? extends zzdzw<? extends V>> zzdwy, boolean z) {
        super(zzdwy, true);
        zzazw();
    }

    @Override // com.google.android.gms.internal.ads.zzdyx
    public final /* synthetic */ Object zzl(List list) {
        ArrayList zzet = zzdxl.zzet(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            zzdyz zzdyz = (zzdyz) it.next();
            zzet.add(zzdyz != null ? zzdyz.value : null);
        }
        return Collections.unmodifiableList(zzet);
    }
}
