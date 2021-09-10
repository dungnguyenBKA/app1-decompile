package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

final class zzejp extends zzejl<Boolean> implements zzell<Boolean>, zzena, RandomAccess {
    private static final zzejp zzilw;
    private int size;
    private boolean[] zzilx;

    static {
        zzejp zzejp = new zzejp(new boolean[0], 0);
        zzilw = zzejp;
        zzejp.zzbgf();
    }

    zzejp() {
        this(new boolean[10], 0);
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
    public final /* synthetic */ void add(int i, Boolean bool) {
        int i2;
        boolean booleanValue = bool.booleanValue();
        zzbgg();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
        boolean[] zArr = this.zzilx;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[ic.b(i2, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.zzilx, i, zArr2, i + 1, this.size - i);
            this.zzilx = zArr2;
        }
        this.zzilx[i] = booleanValue;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.ads.zzejl
    public final boolean addAll(Collection<? extends Boolean> collection) {
        zzbgg();
        zzeld.checkNotNull(collection);
        if (!(collection instanceof zzejp)) {
            return super.addAll(collection);
        }
        zzejp zzejp = (zzejp) collection;
        int i = zzejp.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            boolean[] zArr = this.zzilx;
            if (i3 > zArr.length) {
                this.zzilx = Arrays.copyOf(zArr, i3);
            }
            System.arraycopy(zzejp.zzilx, 0, this.zzilx, this.size, zzejp.size);
            this.size = i3;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final void addBoolean(boolean z) {
        zzbgg();
        int i = this.size;
        boolean[] zArr = this.zzilx;
        if (i == zArr.length) {
            boolean[] zArr2 = new boolean[ic.b(i, 3, 2, 1)];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            this.zzilx = zArr2;
        }
        boolean[] zArr3 = this.zzilx;
        int i2 = this.size;
        this.size = i2 + 1;
        zArr3[i2] = z;
    }

    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzejl
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzejp)) {
            return super.equals(obj);
        }
        zzejp zzejp = (zzejp) obj;
        if (this.size != zzejp.size) {
            return false;
        }
        boolean[] zArr = zzejp.zzilx;
        for (int i = 0; i < this.size; i++) {
            if (this.zzilx[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        zzfw(i);
        return Boolean.valueOf(this.zzilx[i]);
    }

    @Override // com.google.android.gms.internal.ads.zzejl
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzeld.zzbt(this.zzilx[i2]);
        }
        return i;
    }

    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        int size2 = size();
        for (int i = 0; i < size2; i++) {
            if (this.zzilx[i] == booleanValue) {
                return i;
            }
        }
        return -1;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ Boolean remove(int i) {
        zzbgg();
        zzfw(i);
        boolean[] zArr = this.zzilx;
        boolean z = zArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (i2 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzbgg();
        if (i2 >= i) {
            boolean[] zArr = this.zzilx;
            System.arraycopy(zArr, i2, zArr, i, this.size - i2);
            this.size -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ Boolean set(int i, Boolean bool) {
        boolean booleanValue = bool.booleanValue();
        zzbgg();
        zzfw(i);
        boolean[] zArr = this.zzilx;
        boolean z = zArr[i];
        zArr[i] = booleanValue;
        return Boolean.valueOf(z);
    }

    public final int size() {
        return this.size;
    }

    /* Return type fixed from 'com.google.android.gms.internal.ads.zzell' to match base method */
    @Override // com.google.android.gms.internal.ads.zzell
    public final /* synthetic */ zzell<Boolean> zzfy(int i) {
        if (i >= this.size) {
            return new zzejp(Arrays.copyOf(this.zzilx, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    private zzejp(boolean[] zArr, int i) {
        this.zzilx = zArr;
        this.size = i;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ boolean add(Boolean bool) {
        addBoolean(bool.booleanValue());
        return true;
    }
}
