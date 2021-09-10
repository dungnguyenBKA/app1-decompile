package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzekm extends zzejl<Double> implements zzell<Double>, zzena, RandomAccess {
    private static final zzekm zzine;
    private int size;
    private double[] zzinf;

    static {
        zzekm zzekm = new zzekm(new double[0], 0);
        zzine = zzekm;
        zzekm.zzbgf();
    }

    zzekm() {
        this(new double[10], 0);
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
    public final /* synthetic */ void add(int i, Double d) {
        int i2;
        double doubleValue = d.doubleValue();
        zzbgg();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
        double[] dArr = this.zzinf;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[ic.b(i2, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.zzinf, i, dArr2, i + 1, this.size - i);
            this.zzinf = dArr2;
        }
        this.zzinf[i] = doubleValue;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.ads.zzejl
    public final boolean addAll(Collection<? extends Double> collection) {
        zzbgg();
        zzeld.checkNotNull(collection);
        if (!(collection instanceof zzekm)) {
            return super.addAll(collection);
        }
        zzekm zzekm = (zzekm) collection;
        int i = zzekm.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.zzinf;
            if (i3 > dArr.length) {
                this.zzinf = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(zzekm.zzinf, 0, this.zzinf, this.size, zzekm.size);
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
        if (!(obj instanceof zzekm)) {
            return super.equals(obj);
        }
        zzekm zzekm = (zzekm) obj;
        if (this.size != zzekm.size) {
            return false;
        }
        double[] dArr = zzekm.zzinf;
        for (int i = 0; i < this.size; i++) {
            if (Double.doubleToLongBits(this.zzinf[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        zzfw(i);
        return Double.valueOf(this.zzinf[i]);
    }

    @Override // com.google.android.gms.internal.ads.zzejl
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzeld.zzfq(Double.doubleToLongBits(this.zzinf[i2]));
        }
        return i;
    }

    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int size2 = size();
        for (int i = 0; i < size2; i++) {
            if (this.zzinf[i] == doubleValue) {
                return i;
            }
        }
        return -1;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ Double remove(int i) {
        zzbgg();
        zzfw(i);
        double[] dArr = this.zzinf;
        double d = dArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzbgg();
        if (i2 >= i) {
            double[] dArr = this.zzinf;
            System.arraycopy(dArr, i2, dArr, i, this.size - i2);
            this.size -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ Double set(int i, Double d) {
        double doubleValue = d.doubleValue();
        zzbgg();
        zzfw(i);
        double[] dArr = this.zzinf;
        double d2 = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d2);
    }

    public final int size() {
        return this.size;
    }

    public final void zze(double d) {
        zzbgg();
        int i = this.size;
        double[] dArr = this.zzinf;
        if (i == dArr.length) {
            double[] dArr2 = new double[ic.b(i, 3, 2, 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.zzinf = dArr2;
        }
        double[] dArr3 = this.zzinf;
        int i2 = this.size;
        this.size = i2 + 1;
        dArr3[i2] = d;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzell' to match base method */
    @Override // com.google.android.gms.internal.ads.zzell
    public final /* synthetic */ zzell<Double> zzfy(int i) {
        if (i >= this.size) {
            return new zzekm(Arrays.copyOf(this.zzinf, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    private zzekm(double[] dArr, int i) {
        this.zzinf = dArr;
        this.size = i;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ boolean add(Double d) {
        zze(d.doubleValue());
        return true;
    }
}
