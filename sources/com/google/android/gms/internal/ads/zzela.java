package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzela extends zzejl<Float> implements zzell<Float>, zzena, RandomAccess {
    private static final zzela zziqi;
    private int size;
    private float[] zziqj;

    static {
        zzela zzela = new zzela(new float[0], 0);
        zziqi = zzela;
        zzela.zzbgf();
    }

    zzela() {
        this(new float[10], 0);
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
    public final /* synthetic */ void add(int i, Float f) {
        int i2;
        float floatValue = f.floatValue();
        zzbgg();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
        float[] fArr = this.zziqj;
        if (i2 < fArr.length) {
            System.arraycopy(fArr, i, fArr, i + 1, i2 - i);
        } else {
            float[] fArr2 = new float[ic.b(i2, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            System.arraycopy(this.zziqj, i, fArr2, i + 1, this.size - i);
            this.zziqj = fArr2;
        }
        this.zziqj[i] = floatValue;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.ads.zzejl
    public final boolean addAll(Collection<? extends Float> collection) {
        zzbgg();
        zzeld.checkNotNull(collection);
        if (!(collection instanceof zzela)) {
            return super.addAll(collection);
        }
        zzela zzela = (zzela) collection;
        int i = zzela.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            float[] fArr = this.zziqj;
            if (i3 > fArr.length) {
                this.zziqj = Arrays.copyOf(fArr, i3);
            }
            System.arraycopy(zzela.zziqj, 0, this.zziqj, this.size, zzela.size);
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
        if (!(obj instanceof zzela)) {
            return super.equals(obj);
        }
        zzela zzela = (zzela) obj;
        if (this.size != zzela.size) {
            return false;
        }
        float[] fArr = zzela.zziqj;
        for (int i = 0; i < this.size; i++) {
            if (Float.floatToIntBits(this.zziqj[i]) != Float.floatToIntBits(fArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        zzfw(i);
        return Float.valueOf(this.zziqj[i]);
    }

    @Override // com.google.android.gms.internal.ads.zzejl
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + Float.floatToIntBits(this.zziqj[i2]);
        }
        return i;
    }

    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float floatValue = ((Float) obj).floatValue();
        int size2 = size();
        for (int i = 0; i < size2; i++) {
            if (this.zziqj[i] == floatValue) {
                return i;
            }
        }
        return -1;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ Float remove(int i) {
        zzbgg();
        zzfw(i);
        float[] fArr = this.zziqj;
        float f = fArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(fArr, i + 1, fArr, i, (i2 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f);
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzbgg();
        if (i2 >= i) {
            float[] fArr = this.zziqj;
            System.arraycopy(fArr, i2, fArr, i, this.size - i2);
            this.size -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ Float set(int i, Float f) {
        float floatValue = f.floatValue();
        zzbgg();
        zzfw(i);
        float[] fArr = this.zziqj;
        float f2 = fArr[i];
        fArr[i] = floatValue;
        return Float.valueOf(f2);
    }

    public final int size() {
        return this.size;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzell' to match base method */
    @Override // com.google.android.gms.internal.ads.zzell
    public final /* synthetic */ zzell<Float> zzfy(int i) {
        if (i >= this.size) {
            return new zzela(Arrays.copyOf(this.zziqj, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    public final void zzh(float f) {
        zzbgg();
        int i = this.size;
        float[] fArr = this.zziqj;
        if (i == fArr.length) {
            float[] fArr2 = new float[ic.b(i, 3, 2, 1)];
            System.arraycopy(fArr, 0, fArr2, 0, i);
            this.zziqj = fArr2;
        }
        float[] fArr3 = this.zziqj;
        int i2 = this.size;
        this.size = i2 + 1;
        fArr3[i2] = f;
    }

    private zzela(float[] fArr, int i) {
        this.zziqj = fArr;
        this.size = i;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ boolean add(Float f) {
        zzh(f.floatValue());
        return true;
    }
}
