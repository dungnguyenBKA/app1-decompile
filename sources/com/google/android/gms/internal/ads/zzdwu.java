package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

abstract class zzdwu<E> extends zzdyd<E> {
    private int position;
    private final int size;

    protected zzdwu(int i, int i2) {
        zzdwl.zzu(i2, i);
        this.size = i;
        this.position = i2;
    }

    /* access modifiers changed from: protected */
    public abstract E get(int i);

    public final boolean hasNext() {
        return this.position < this.size;
    }

    public final boolean hasPrevious() {
        return this.position > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (hasNext()) {
            int i = this.position;
            this.position = i + 1;
            return get(i);
        }
        throw new NoSuchElementException();
    }

    public final int nextIndex() {
        return this.position;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (hasPrevious()) {
            int i = this.position - 1;
            this.position = i;
            return get(i);
        }
        throw new NoSuchElementException();
    }

    public final int previousIndex() {
        return this.position - 1;
    }
}
