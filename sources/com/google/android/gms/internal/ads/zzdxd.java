package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

public abstract class zzdxd<E> extends zzdwy<E> implements List<E>, RandomAccess {
    private static final zzdyd<Object> zzhxq = new zzdxf(zzdxr.zzhyi, 0);

    zzdxd() {
    }

    public static <E> zzdxd<E> zzac(E e) {
        Object[] objArr = {e};
        for (int i = 0; i <= 0; i++) {
            zzdxo.zzd(objArr[0], 0);
        }
        return zzb(objArr, 1);
    }

    public static <E> zzdxd<E> zzazm() {
        return (zzdxd<E>) zzdxr.zzhyi;
    }

    public static <E> zzdxd<E> zzb(Collection<? extends E> collection) {
        if (collection instanceof zzdwy) {
            zzdxd<E> zzazk = ((zzdwy) collection).zzazk();
            if (!zzazk.zzazl()) {
                return zzazk;
            }
            Object[] array = zzazk.toArray();
            return zzb(array, array.length);
        }
        Object[] array2 = collection.toArray();
        int length = array2.length;
        for (int i = 0; i < length; i++) {
            zzdxo.zzd(array2[i], i);
        }
        return zzb(array2, array2.length);
    }

    static <E> zzdxd<E> zzc(Object[] objArr) {
        return zzb(objArr, objArr.length);
    }

    public static <E> zzdxd<E> zzh(Iterable<? extends E> iterable) {
        zzdwl.checkNotNull(iterable);
        if (iterable instanceof Collection) {
            return zzb((Collection) iterable);
        }
        Iterator<? extends E> it = iterable.iterator();
        if (!it.hasNext()) {
            return (zzdxd<E>) zzdxr.zzhyi;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return zzac(next);
        }
        zzdxc zzdxc = (zzdxc) ((zzdxc) new zzdxc().zzaa(next)).zza(it);
        zzdxc.zzhxp = true;
        return zzb(zzdxc.zzhxo, zzdxc.size);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i, E e) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == zzdwl.checkNotNull(this)) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i = 0; i < size; i++) {
                        if (zzdwf.equal(get(i), list.get(i))) {
                        }
                    }
                    return true;
                }
                int size2 = size();
                Iterator<E> it = list.iterator();
                int i2 = 0;
                while (true) {
                    if (i2 < size2) {
                        if (!it.hasNext()) {
                            break;
                        }
                        E e = get(i2);
                        i2++;
                        if (!zzdwf.equal(e, it.next())) {
                            break;
                        }
                    } else if (!it.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public int hashCode() {
        int size = size();
        int i = 1;
        for (int i2 = 0; i2 < size; i2++) {
            i = ((get(i2).hashCode() + (i * 31)) ^ -1) ^ -1;
        }
        return i;
    }

    public int indexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    public int lastIndexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i) {
        zzdwl.zzu(i, size());
        if (isEmpty()) {
            return zzhxq;
        }
        return new zzdxf(this, i);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i, E e) {
        throw new UnsupportedOperationException();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public int zza(Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    /* renamed from: zzazg */
    public final zzdya<E> iterator() {
        return (zzdyd) listIterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final zzdxd<E> zzazk() {
        return this;
    }

    /* renamed from: zzv */
    public zzdxd<E> subList(int i, int i2) {
        zzdwl.zzf(i, i2, size());
        int i3 = i2 - i;
        if (i3 == size()) {
            return this;
        }
        return i3 == 0 ? (zzdxd<E>) zzdxr.zzhyi : new zzdxe(this, i, i3);
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
        return (zzdyd) listIterator(0);
    }

    public static <E> zzdxd<E> zzb(E[] eArr) {
        if (eArr.length == 0) {
            return (zzdxd<E>) zzdxr.zzhyi;
        }
        Object[] objArr = (Object[]) eArr.clone();
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            zzdxo.zzd(objArr[i], i);
        }
        return zzb(objArr, objArr.length);
    }

    static <E> zzdxd<E> zzb(Object[] objArr, int i) {
        return i == 0 ? (zzdxd<E>) zzdxr.zzhyi : new zzdxr(objArr, i);
    }
}
