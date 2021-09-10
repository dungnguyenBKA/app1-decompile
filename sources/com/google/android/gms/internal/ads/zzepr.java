package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

public class zzepr<E> extends AbstractList<E> {
    private static final zzept zzdc = zzept.zzn(zzepr.class);
    List<E> zzjbk;
    Iterator<E> zzjbl;

    public zzepr(List<E> list, Iterator<E> it) {
        this.zzjbk = list;
        this.zzjbl = it;
    }

    @Override // java.util.List, java.util.AbstractList
    public E get(int i) {
        if (this.zzjbk.size() > i) {
            return this.zzjbk.get(i);
        }
        if (this.zzjbl.hasNext()) {
            this.zzjbk.add(this.zzjbl.next());
            return get(i);
        }
        throw new NoSuchElementException();
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, java.lang.Iterable
    public Iterator<E> iterator() {
        return new zzepu(this);
    }

    public int size() {
        zzept zzept = zzdc;
        zzept.zzio("potentially expensive size() call");
        zzept.zzio("blowup running");
        while (this.zzjbl.hasNext()) {
            this.zzjbk.add(this.zzjbl.next());
        }
        return this.zzjbk.size();
    }
}
