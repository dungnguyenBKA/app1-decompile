package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

abstract class zzejl<E> extends AbstractList<E> implements zzell<E> {
    private boolean zzilo = true;

    zzejl() {
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList
    public boolean add(E e) {
        zzbgg();
        return super.add(e);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        zzbgg();
        return super.addAll(collection);
    }

    public void clear() {
        zzbgg();
        super.clear();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (!get(i).equals(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = (i * 31) + get(i2).hashCode();
        }
        return i;
    }

    @Override // java.util.List, java.util.AbstractList
    public E remove(int i) {
        zzbgg();
        return (E) super.remove(i);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        zzbgg();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        zzbgg();
        return super.retainAll(collection);
    }

    @Override // java.util.List, java.util.AbstractList
    public E set(int i, E e) {
        zzbgg();
        return (E) super.set(i, e);
    }

    @Override // com.google.android.gms.internal.ads.zzell
    public boolean zzbge() {
        return this.zzilo;
    }

    @Override // com.google.android.gms.internal.ads.zzell
    public final void zzbgf() {
        this.zzilo = false;
    }

    /* access modifiers changed from: protected */
    public final void zzbgg() {
        if (!this.zzilo) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.List, java.util.AbstractList
    public void add(int i, E e) {
        zzbgg();
        super.add(i, e);
    }

    @Override // java.util.List, java.util.AbstractList
    public boolean addAll(int i, Collection<? extends E> collection) {
        zzbgg();
        return super.addAll(i, collection);
    }

    @Override // java.util.List
    public boolean remove(Object obj) {
        zzbgg();
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        remove(indexOf);
        return true;
    }
}
