package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* access modifiers changed from: package-private */
public final class zzht extends zzgc<Integer> implements RandomAccess, zzhx, zzje {
    private static final zzht zza;
    private int[] zzb;
    private int zzc;

    static {
        zzht zzht = new zzht(new int[0], 0);
        zza = zzht;
        zzht.zzb();
    }

    zzht() {
        this(new int[10], 0);
    }

    public static zzht zzd() {
        return zza;
    }

    private final void zzi(int i) {
        if (i < 0 || i >= this.zzc) {
            throw new IndexOutOfBoundsException(zzj(i));
        }
    }

    private final String zzj(int i) {
        return ic.c(35, "Index:", i, ", Size:", this.zzc);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final /* bridge */ /* synthetic */ void add(int i, Integer num) {
        int i2;
        int intValue = num.intValue();
        zzbL();
        if (i < 0 || i > (i2 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzj(i));
        }
        int[] iArr = this.zzb;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[ic.b(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.zzb, i, iArr2, i + 1, this.zzc - i);
            this.zzb = iArr2;
        }
        this.zzb[i] = intValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final /* bridge */ /* synthetic */ boolean add(Integer num) {
        zzh(num.intValue());
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzgc
    public final boolean addAll(Collection<? extends Integer> collection) {
        zzbL();
        zzia.zza(collection);
        if (!(collection instanceof zzht)) {
            return super.addAll(collection);
        }
        zzht zzht = (zzht) collection;
        int i = zzht.zzc;
        if (i == 0) {
            return false;
        }
        int i2 = this.zzc;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.zzb;
            if (i3 > iArr.length) {
                this.zzb = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(zzht.zzb, 0, this.zzb, this.zzc, zzht.zzc);
            this.zzc = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzgc
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzht)) {
            return super.equals(obj);
        }
        zzht zzht = (zzht) obj;
        if (this.zzc != zzht.zzc) {
            return false;
        }
        int[] iArr = zzht.zzb;
        for (int i = 0; i < this.zzc; i++) {
            if (this.zzb[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzi(i);
        return Integer.valueOf(this.zzb[i]);
    }

    @Override // com.google.android.gms.internal.measurement.zzgc
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            i = (i * 31) + this.zzb[i2];
        }
        return i;
    }

    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.zzc;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.zzb[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final /* bridge */ /* synthetic */ Integer remove(int i) {
        zzbL();
        zzi(i);
        int[] iArr = this.zzb;
        int i2 = iArr[i];
        int i3 = this.zzc;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzbL();
        if (i2 >= i) {
            int[] iArr = this.zzb;
            System.arraycopy(iArr, i2, iArr, i, this.zzc - i2);
            this.zzc -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final /* bridge */ /* synthetic */ Integer set(int i, Integer num) {
        int intValue = num.intValue();
        zzbL();
        zzi(i);
        int[] iArr = this.zzb;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.measurement.zzhx
    /* renamed from: zzf */
    public final zzhx zze(int i) {
        if (i >= this.zzc) {
            return new zzht(Arrays.copyOf(this.zzb, i), this.zzc);
        }
        throw new IllegalArgumentException();
    }

    public final int zzg(int i) {
        zzi(i);
        return this.zzb[i];
    }

    public final void zzh(int i) {
        zzbL();
        int i2 = this.zzc;
        int[] iArr = this.zzb;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[ic.b(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.zzb = iArr2;
        }
        int[] iArr3 = this.zzb;
        int i3 = this.zzc;
        this.zzc = i3 + 1;
        iArr3[i3] = i;
    }

    private zzht(int[] iArr, int i) {
        this.zzb = iArr;
        this.zzc = i;
    }
}
