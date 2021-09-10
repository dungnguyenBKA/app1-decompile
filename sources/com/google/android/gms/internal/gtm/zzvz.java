package com.google.android.gms.internal.gtm;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzvz extends zzsj<Long> implements RandomAccess, zzvh, zzws {
    private static final zzvz zza;
    private long[] zzb;
    private int zzc;

    static {
        zzvz zzvz = new zzvz(new long[0], 0);
        zza = zzvz;
        zzvz.zzb();
    }

    zzvz() {
        this(new long[10], 0);
    }

    private final String zzg(int i) {
        return ic.c(35, "Index:", i, ", Size:", this.zzc);
    }

    private final void zzh(int i) {
        if (i < 0 || i >= this.zzc) {
            throw new IndexOutOfBoundsException(zzg(i));
        }
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.gtm.zzsj
    public final /* bridge */ /* synthetic */ void add(int i, Long l) {
        int i2;
        long longValue = l.longValue();
        zza();
        if (i < 0 || i > (i2 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzg(i));
        }
        long[] jArr = this.zzb;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[ic.b(i2, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.zzb, i, jArr2, i + 1, this.zzc - i);
            this.zzb = jArr2;
        }
        this.zzb[i] = longValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.gtm.zzsj
    public final boolean addAll(Collection<? extends Long> collection) {
        zza();
        zzvi.zze(collection);
        if (!(collection instanceof zzvz)) {
            return super.addAll(collection);
        }
        zzvz zzvz = (zzvz) collection;
        int i = zzvz.zzc;
        if (i == 0) {
            return false;
        }
        int i2 = this.zzc;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            long[] jArr = this.zzb;
            if (i3 > jArr.length) {
                this.zzb = Arrays.copyOf(jArr, i3);
            }
            System.arraycopy(zzvz.zzb, 0, this.zzb, this.zzc, zzvz.zzc);
            this.zzc = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.gtm.zzsj
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzvz)) {
            return super.equals(obj);
        }
        zzvz zzvz = (zzvz) obj;
        if (this.zzc != zzvz.zzc) {
            return false;
        }
        long[] jArr = zzvz.zzb;
        for (int i = 0; i < this.zzc; i++) {
            if (this.zzb[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzh(i);
        return Long.valueOf(this.zzb[i]);
    }

    @Override // com.google.android.gms.internal.gtm.zzsj
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            i = (i * 31) + zzvi.zzc(this.zzb[i2]);
        }
        return i;
    }

    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.zzc;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.zzb[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.gtm.zzsj
    public final /* bridge */ /* synthetic */ Long remove(int i) {
        zza();
        zzh(i);
        long[] jArr = this.zzb;
        long j = jArr[i];
        int i2 = this.zzc;
        if (i < i2 - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (i2 - i) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zza();
        if (i2 >= i) {
            long[] jArr = this.zzb;
            System.arraycopy(jArr, i2, jArr, i, this.zzc - i2);
            this.zzc -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.gtm.zzsj
    public final /* bridge */ /* synthetic */ Long set(int i, Long l) {
        long longValue = l.longValue();
        zza();
        zzh(i);
        long[] jArr = this.zzb;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.gtm.zzvh
    public final /* bridge */ /* synthetic */ zzvh zzd(int i) {
        if (i >= this.zzc) {
            return new zzvz(Arrays.copyOf(this.zzb, i), this.zzc);
        }
        throw new IllegalArgumentException();
    }

    public final long zze(int i) {
        zzh(i);
        return this.zzb[i];
    }

    public final void zzf(long j) {
        zza();
        int i = this.zzc;
        long[] jArr = this.zzb;
        if (i == jArr.length) {
            long[] jArr2 = new long[ic.b(i, 3, 2, 1)];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.zzb = jArr2;
        }
        long[] jArr3 = this.zzb;
        int i2 = this.zzc;
        this.zzc = i2 + 1;
        jArr3[i2] = j;
    }

    private zzvz(long[] jArr, int i) {
        this.zzb = jArr;
        this.zzc = i;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, com.google.android.gms.internal.gtm.zzsj
    public final /* bridge */ /* synthetic */ boolean add(Long l) {
        zzf(l.longValue());
        return true;
    }
}
