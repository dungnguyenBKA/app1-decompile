package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;

/* access modifiers changed from: package-private */
public final class zzdxm<F, T> extends AbstractSequentialList<T> implements Serializable {
    private final List<F> zzhyb;
    final zzdvz<? super F, ? extends T> zzhyc;

    zzdxm(List<F> list, zzdvz<? super F, ? extends T> zzdvz) {
        this.zzhyb = (List) zzdwl.checkNotNull(list);
        this.zzhyc = (zzdvz) zzdwl.checkNotNull(zzdvz);
    }

    public final void clear() {
        this.zzhyb.clear();
    }

    @Override // java.util.List, java.util.AbstractList, java.util.AbstractSequentialList
    public final ListIterator<T> listIterator(int i) {
        return new zzdxp(this, this.zzhyb.listIterator(i));
    }

    public final int size() {
        return this.zzhyb.size();
    }
}
