package com.facebook.ads.redexgen.X;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* renamed from: com.facebook.ads.redexgen.X.2R  reason: invalid class name */
public final class AnonymousClass2R implements Set<K> {
    public final /* synthetic */ AnonymousClass2U A00;

    public AnonymousClass2R(AnonymousClass2U r1) {
        this.A00 = r1;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(K k) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection<? extends K> collection) {
        throw new UnsupportedOperationException();
    }

    public final void clear() {
        this.A00.A0E();
    }

    public final boolean contains(Object obj) {
        return this.A00.A06(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<?> collection) {
        return AnonymousClass2U.A01(this.A00.A0B(), collection);
    }

    public final boolean equals(Object obj) {
        return AnonymousClass2U.A04(this, obj);
    }

    public final int hashCode() {
        int i = 0;
        for (int A05 = this.A00.A05() - 1; A05 >= 0; A05--) {
            int i2 = 0;
            Object obj = this.A00.A08(A05, 0);
            if (obj != null) {
                i2 = obj.hashCode();
            }
            i += i2;
        }
        return i;
    }

    public final boolean isEmpty() {
        return this.A00.A05() == 0;
    }

    @Override // java.util.Collection, java.util.Set, java.lang.Iterable
    public final Iterator<K> iterator() {
        return new AnonymousClass2P(this.A00, 0);
    }

    public final boolean remove(Object obj) {
        int A06 = this.A00.A06(obj);
        if (A06 < 0) {
            return false;
        }
        this.A00.A0F(A06);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection<?> collection) {
        return AnonymousClass2U.A02(this.A00.A0B(), collection);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection<?> collection) {
        return AnonymousClass2U.A03(this.A00.A0B(), collection);
    }

    public final int size() {
        return this.A00.A05();
    }

    public final Object[] toArray() {
        return this.A00.A0H(0);
    }

    @Override // java.util.Collection, java.util.Set
    public final <T> T[] toArray(T[] tArr) {
        return (T[]) this.A00.A0I(tArr, 0);
    }
}
