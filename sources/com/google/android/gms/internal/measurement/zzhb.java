package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzhb extends zzgc<Double> implements RandomAccess, zzhz, zzje {
    private static final zzhb zza;
    private double[] zzb;
    private int zzc;

    static {
        zzhb zzhb = new zzhb(new double[0], 0);
        zza = zzhb;
        zzhb.zzb();
    }

    zzhb() {
        this(new double[10], 0);
    }

    private final void zzf(int i) {
        if (i < 0 || i >= this.zzc) {
            throw new IndexOutOfBoundsException(zzg(i));
        }
    }

    private final String zzg(int i) {
        return ic.c(35, "Index:", i, ", Size:", this.zzc);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final /* bridge */ /* synthetic */ void add(int i, Double d) {
        int i2;
        double doubleValue = d.doubleValue();
        zzbL();
        if (i < 0 || i > (i2 = this.zzc)) {
            throw new IndexOutOfBoundsException(zzg(i));
        }
        double[] dArr = this.zzb;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[ic.b(i2, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.zzb, i, dArr2, i + 1, this.zzc - i);
            this.zzb = dArr2;
        }
        this.zzb[i] = doubleValue;
        this.zzc++;
        ((AbstractList) this).modCount++;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final /* bridge */ /* synthetic */ boolean add(Double d) {
        zzd(d.doubleValue());
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzgc
    public final boolean addAll(Collection<? extends Double> collection) {
        zzbL();
        zzia.zza(collection);
        if (!(collection instanceof zzhb)) {
            return super.addAll(collection);
        }
        zzhb zzhb = (zzhb) collection;
        int i = zzhb.zzc;
        if (i == 0) {
            return false;
        }
        int i2 = this.zzc;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.zzb;
            if (i3 > dArr.length) {
                this.zzb = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(zzhb.zzb, 0, this.zzb, this.zzc, zzhb.zzc);
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
        if (!(obj instanceof zzhb)) {
            return super.equals(obj);
        }
        zzhb zzhb = (zzhb) obj;
        if (this.zzc != zzhb.zzc) {
            return false;
        }
        double[] dArr = zzhb.zzb;
        for (int i = 0; i < this.zzc; i++) {
            if (Double.doubleToLongBits(this.zzb[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzf(i);
        return Double.valueOf(this.zzb[i]);
    }

    @Override // com.google.android.gms.internal.measurement.zzgc
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            i = (i * 31) + zzia.zze(Double.doubleToLongBits(this.zzb[i2]));
        }
        return i;
    }

    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int i = this.zzc;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.zzb[i2] == doubleValue) {
                return i2;
            }
        }
        return -1;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final /* bridge */ /* synthetic */ Double remove(int i) {
        zzbL();
        zzf(i);
        double[] dArr = this.zzb;
        double d = dArr[i];
        int i2 = this.zzc;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.zzc--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzbL();
        if (i2 >= i) {
            double[] dArr = this.zzb;
            System.arraycopy(dArr, i2, dArr, i, this.zzc - i2);
            this.zzc -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final /* bridge */ /* synthetic */ Double set(int i, Double d) {
        double doubleValue = d.doubleValue();
        zzbL();
        zzf(i);
        double[] dArr = this.zzb;
        double d2 = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d2);
    }

    public final int size() {
        return this.zzc;
    }

    public final void zzd(double d) {
        zzbL();
        int i = this.zzc;
        double[] dArr = this.zzb;
        if (i == dArr.length) {
            double[] dArr2 = new double[ic.b(i, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.zzb = dArr2;
        }
        double[] dArr3 = this.zzb;
        int i2 = this.zzc;
        this.zzc = i2 + 1;
        dArr3[i2] = d;
    }

    @Override // com.google.android.gms.internal.measurement.zzhz
    public final /* bridge */ /* synthetic */ zzhz zze(int i) {
        if (i >= this.zzc) {
            return new zzhb(Arrays.copyOf(this.zzb, i), this.zzc);
        }
        throw new IllegalArgumentException();
    }

    private zzhb(double[] dArr, int i) {
        this.zzb = dArr;
        this.zzc = i;
    }
}
