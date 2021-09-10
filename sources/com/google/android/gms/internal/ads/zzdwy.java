package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.AbstractCollection;
import java.util.Arrays;
import java.util.Collection;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

public abstract class zzdwy<E> extends AbstractCollection<E> implements Serializable {
    private static final Object[] zzhxn = new Object[0];

    zzdwy() {
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean add(E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public abstract boolean contains(@NullableDecl Object obj);

    @Deprecated
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean removeAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @Deprecated
    public final boolean retainAll(Collection<?> collection) {
        throw new UnsupportedOperationException();
    }

    public final Object[] toArray() {
        return toArray(zzhxn);
    }

    /* access modifiers changed from: package-private */
    public int zza(Object[] objArr, int i) {
        zzdya zzdya = (zzdya) iterator();
        while (zzdya.hasNext()) {
            objArr[i] = zzdya.next();
            i++;
        }
        return i;
    }

    /* renamed from: zzazg */
    public abstract zzdya<E> iterator();

    /* access modifiers changed from: package-private */
    @NullableDecl
    public Object[] zzazh() {
        return null;
    }

    /* access modifiers changed from: package-private */
    public int zzazi() {
        throw new UnsupportedOperationException();
    }

    /* access modifiers changed from: package-private */
    public int zzazj() {
        throw new UnsupportedOperationException();
    }

    public zzdxd<E> zzazk() {
        return isEmpty() ? zzdxd.zzazm() : zzdxd.zzc(toArray());
    }

    /* access modifiers changed from: package-private */
    public abstract boolean zzazl();

    @Override // java.util.AbstractCollection, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        zzdwl.checkNotNull(tArr);
        int size = size();
        if (tArr.length < size) {
            Object[] zzazh = zzazh();
            if (zzazh != null) {
                return (T[]) Arrays.copyOfRange(zzazh, zzazi(), zzazj(), tArr.getClass());
            }
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        zza(tArr, 0);
        return tArr;
    }
}
