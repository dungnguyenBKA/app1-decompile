package com.google.android.gms.internal.gtm;

import java.util.Iterator;
import java.util.NoSuchElementException;

final class zzxb implements Iterator<Object> {
    zzxb() {
    }

    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
