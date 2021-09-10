package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* access modifiers changed from: package-private */
public final class zzjg<E> extends zzgc<E> implements RandomAccess {
    private static final zzjg<Object> zza;
    private E[] zzb;
    private int zzc;

    static {
        zzjg<Object> zzjg = new zzjg<>(new Object[0], 0);
        zza = zzjg;
        zzjg.zzb();
    }

    zzjg() {
        this(new Object[10], 0);
    }

    public static <E> zzjg<E> zzd() {
        return (zzjg<E>) zza;
    }

    private final void zzf(int i) {
        if (i < 0 || i >= this.zzc) {
            throw new IndexOutOfBoundsException(zzg(i));
        }
    }

    private final String zzg(int i) {
        return ic.c(35, "Index:", i, ", Size:", this.zzc);
    }

    @Override // java.util.List, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final void add(int i, E e) {
        int i2;
        zzbL();
        if (i < 0 || i > (i2 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzg(i));
        }
        E[] eArr = this.zzb;
        if (i2 < eArr.length) {
            System.arraycopy(eArr, i, eArr, i + 1, i2 - i);
        } else {
            E[] eArr2 = (E[]) new Object[ic.b(i2, 3, 2, 1)];
            System.arraycopy(eArr, 0, eArr2, 0, i);
            System.arraycopy(this.zzb, i, eArr2, i + 1, this.zzc - i);
            this.zzb = eArr2;
        }
        this.zzb[i] = e;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.List, java.util.AbstractList
    public final E get(int i) {
        zzf(i);
        return this.zzb[i];
    }

    @Override // java.util.List, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final E remove(int i) {
        zzbL();
        zzf(i);
        E[] eArr = this.zzb;
        E e = eArr[i];
        int i2 = this.zzc;
        if (i < i2 - 1) {
            System.arraycopy(eArr, i + 1, eArr, i, (i2 - i) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // java.util.List, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final E set(int i, E e) {
        zzbL();
        zzf(i);
        E[] eArr = this.zzb;
        E e2 = eArr[i];
        eArr[i] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzhz
    public final /* bridge */ /* synthetic */ zzhz zze(int i) {
        if (i >= this.zzc) {
            return new zzjg(Arrays.copyOf(this.zzb, i), this.zzc);
        }
        throw new IllegalArgumentException();
    }

    private zzjg(E[] eArr, int i) {
        this.zzb = eArr;
        this.zzc = i;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final boolean add(E e) {
        zzbL();
        int i = this.zzc;
        E[] eArr = this.zzb;
        if (i == eArr.length) {
            this.zzb = (E[]) Arrays.copyOf(eArr, ((i * 3) / 2) + 1);
        }
        E[] eArr2 = this.zzb;
        int i2 = this.zzc;
        this.zzc = i2 + 1;
        eArr2[i2] = e;
        ((AbstractList) this).modCount++;
        return true;
    }
}
