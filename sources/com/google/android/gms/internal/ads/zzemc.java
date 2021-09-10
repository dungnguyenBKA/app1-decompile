package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* access modifiers changed from: package-private */
public final class zzemc extends zzejl<Long> implements zzelm, zzena, RandomAccess {
    private static final zzemc zzish;
    private int size;
    private long[] zzisi;

    static {
        zzemc zzemc = new zzemc(new long[0], 0);
        zzish = zzemc;
        zzemc.zzbgf();
    }

    zzemc() {
        this(new long[10], 0);
    }

    public static zzemc zzbjr() {
        return zzish;
    }

    private final void zzfw(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
    }

    private final String zzfx(int i) {
        return ic.c(35, "Index:", i, ", Size:", this.size);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ void add(int i, Long l) {
        int i2;
        long longValue = l.longValue();
        zzbgg();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
        long[] jArr = this.zzisi;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[ic.b(i2, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.zzisi, i, jArr2, i + 1, this.size - i);
            this.zzisi = jArr2;
        }
        this.zzisi[i] = longValue;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.ads.zzejl
    public final boolean addAll(Collection<? extends Long> collection) {
        zzbgg();
        zzeld.checkNotNull(collection);
        if (!(collection instanceof zzemc)) {
            return super.addAll(collection);
        }
        zzemc zzemc = (zzemc) collection;
        int i = zzemc.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.zzisi;
            if (i3 > jArr.length) {
                this.zzisi = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(zzemc.zzisi, 0, this.zzisi, this.size, zzemc.size);
            this.size = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzejl
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzemc)) {
            return super.equals(obj);
        }
        zzemc zzemc = (zzemc) obj;
        if (this.size != zzemc.size) {
            return false;
        }
        long[] jArr = zzemc.zzisi;
        for (int i = 0; i < this.size; i++) {
            if (this.zzisi[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(getLong(i));
    }

    public final long getLong(int i) {
        zzfw(i);
        return this.zzisi[i];
    }

    @Override // com.google.android.gms.internal.ads.zzejl
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzeld.zzfq(this.zzisi[i2]);
        }
        return i;
    }

    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int size2 = size();
        for (int i = 0; i < size2; i++) {
            if (this.zzisi[i] == longValue) {
                return i;
            }
        }
        return -1;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ Long remove(int i) {
        zzbgg();
        zzfw(i);
        long[] jArr = this.zzisi;
        long j = jArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzbgg();
        if (i2 >= i) {
            long[] jArr = this.zzisi;
            System.arraycopy(jArr, i2, jArr, i, this.size - i2);
            this.size -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ Long set(int i, Long l) {
        long longValue = l.longValue();
        zzbgg();
        zzfw(i);
        long[] jArr = this.zzisi;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    public final int size() {
        return this.size;
    }

    public final void zzfr(long j) {
        zzbgg();
        int i = this.size;
        long[] jArr = this.zzisi;
        if (i == jArr.length) {
            long[] jArr2 = new long[ic.b(i, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.zzisi = jArr2;
        }
        long[] jArr3 = this.zzisi;
        int i2 = this.size;
        this.size = i2 + 1;
        jArr3[i2] = j;
    }

    @Override // com.google.android.gms.internal.ads.zzelm
    /* renamed from: zzhi */
    public final zzelm zzfy(int i) {
        if (i >= this.size) {
            return new zzemc(Arrays.copyOf(this.zzisi, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    private zzemc(long[] jArr, int i) {
        this.zzisi = jArr;
        this.size = i;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ boolean add(Long l) {
        zzfr(l.longValue());
        return true;
    }
}
