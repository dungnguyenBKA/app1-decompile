package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* access modifiers changed from: package-private */
public final class zzele extends zzejl<Integer> implements zzelh, zzena, RandomAccess {
    private static final zzele zzirc;
    private int size;
    private int[] zzird;

    static {
        zzele zzele = new zzele(new int[0], 0);
        zzirc = zzele;
        zzele.zzbgf();
    }

    zzele() {
        this(new int[10], 0);
    }

    public static zzele zzbiz() {
        return zzirc;
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
    public final /* synthetic */ void add(int i, Integer num) {
        int i2;
        int intValue = num.intValue();
        zzbgg();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfx(i));
        }
        int[] iArr = this.zzird;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[ic.b(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.zzird, i, iArr2, i + 1, this.size - i);
            this.zzird = iArr2;
        }
        this.zzird[i] = intValue;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.ads.zzejl
    public final boolean addAll(Collection<? extends Integer> collection) {
        zzbgg();
        zzeld.checkNotNull(collection);
        if (!(collection instanceof zzele)) {
            return super.addAll(collection);
        }
        zzele zzele = (zzele) collection;
        int i = zzele.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            int[] iArr = this.zzird;
            if (i3 > iArr.length) {
                this.zzird = Arrays.copyOf(iArr, i3);
            }
            System.arraycopy(zzele.zzird, 0, this.zzird, this.size, zzele.size);
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
        if (!(obj instanceof zzele)) {
            return super.equals(obj);
        }
        zzele zzele = (zzele) obj;
        if (this.size != zzele.size) {
            return false;
        }
        int[] iArr = zzele.zzird;
        for (int i = 0; i < this.size; i++) {
            if (this.zzird[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    public final int getInt(int i) {
        zzfw(i);
        return this.zzird[i];
    }

    @Override // com.google.android.gms.internal.ads.zzejl
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + this.zzird[i2];
        }
        return i;
    }

    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int size2 = size();
        for (int i = 0; i < size2; i++) {
            if (this.zzird[i] == intValue) {
                return i;
            }
        }
        return -1;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ Integer remove(int i) {
        zzbgg();
        zzfw(i);
        int[] iArr = this.zzird;
        int i2 = iArr[i];
        int i3 = this.size;
        if (i < i3 - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (i3 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzbgg();
        if (i2 >= i) {
            int[] iArr = this.zzird;
            System.arraycopy(iArr, i2, iArr, i, this.size - i2);
            this.size -= i2 - i;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ Integer set(int i, Integer num) {
        int intValue = num.intValue();
        zzbgg();
        zzfw(i);
        int[] iArr = this.zzird;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    /* renamed from: zzhg */
    public final zzelh zzfy(int i) {
        if (i >= this.size) {
            return new zzele(Arrays.copyOf(this.zzird, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzelh
    public final void zzhh(int i) {
        zzbgg();
        int i2 = this.size;
        int[] iArr = this.zzird;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[ic.b(i2, 3, 2, 1)];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.zzird = iArr2;
        }
        int[] iArr3 = this.zzird;
        int i3 = this.size;
        this.size = i3 + 1;
        iArr3[i3] = i;
    }

    private zzele(int[] iArr, int i) {
        this.zzird = iArr;
        this.size = i;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ boolean add(Integer num) {
        zzhh(num.intValue());
        return true;
    }
}
