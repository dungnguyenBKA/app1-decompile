package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* access modifiers changed from: package-private */
public final class zzdxk<F, T> extends AbstractList<T> implements Serializable, RandomAccess {
    private final List<F> zzhyb;
    final zzdvz<? super F, ? extends T> zzhyc;

    zzdxk(List<F> list, zzdvz<? super F, ? extends T> zzdvz) {
        this.zzhyb = (List) zzdwl.checkNotNull(list);
        this.zzhyc = (zzdvz) zzdwl.checkNotNull(zzdvz);
    }

    public final void clear() {
        this.zzhyb.clear();
    }

    @Override // java.util.List, java.util.AbstractList
    public final T get(int i) {
        return (T) this.zzhyc.apply(this.zzhyb.get(i));
    }

    public final boolean isEmpty() {
        return this.zzhyb.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, java.lang.Iterable
    public final Iterator<T> iterator() {
        return listIterator();
    }

    @Override // java.util.List, java.util.AbstractList
    public final ListIterator<T> listIterator(int i) {
        return new zzdxn(this, this.zzhyb.listIterator(i));
    }

    @Override // java.util.List, java.util.AbstractList
    public final T remove(int i) {
        return (T) this.zzhyc.apply(this.zzhyb.remove(i));
    }

    public final int size() {
        return this.zzhyb.size();
    }
}
