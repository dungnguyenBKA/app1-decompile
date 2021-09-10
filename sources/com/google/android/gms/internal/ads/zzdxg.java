package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

public abstract class zzdxg<E> extends zzdwy<E> implements Set<E> {
    @NullableDecl
    private transient zzdxd<E> zzhxt;

    zzdxg() {
    }

    @SafeVarargs
    public static <E> zzdxg<E> zza(E e, E e2, E e3, E e4, E e5, E e6, E... eArr) {
        zzdwl.checkArgument(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e;
        objArr[1] = e2;
        objArr[2] = e3;
        objArr[3] = e4;
        objArr[4] = e5;
        objArr[5] = e6;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return zza(length, objArr);
    }

    public static <E> zzdxg<E> zzad(E e) {
        return new zzdxz(e);
    }

    static int zzer(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1) << 1;
            while (true) {
                double d = (double) highestOneBit;
                Double.isNaN(d);
                if (d * 0.7d >= ((double) max)) {
                    return highestOneBit;
                }
                highestOneBit <<= 1;
            }
        } else {
            if (max >= 1073741824) {
                z = false;
            }
            zzdwl.checkArgument(z, "collection too large");
            return 1073741824;
        }
    }

    public static <E> zzdxj<E> zzes(int i) {
        zzdwx.zzh(i, "expectedSize");
        return new zzdxj<>(i);
    }

    /* access modifiers changed from: private */
    public static boolean zzw(int i, int i2) {
        return i < (i2 >> 1) + (i2 >> 2);
    }

    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdxg) || !zzazn() || !((zzdxg) obj).zzazn() || hashCode() == obj.hashCode()) {
            return zzdxw.zza(this, obj);
        }
        return false;
    }

    public int hashCode() {
        return zzdxw.zzg(this);
    }

    @Override // java.util.AbstractCollection, com.google.android.gms.internal.ads.zzdwy, java.util.Collection, java.util.Set, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public zzdxd<E> zzazk() {
        zzdxd<E> zzdxd = this.zzhxt;
        if (zzdxd != null) {
            return zzdxd;
        }
        zzdxd<E> zzazo = zzazo();
        this.zzhxt = zzazo;
        return zzazo;
    }

    /* access modifiers changed from: package-private */
    public boolean zzazn() {
        return false;
    }

    /* access modifiers changed from: package-private */
    public zzdxd<E> zzazo() {
        return zzdxd.zzc(toArray());
    }

    /* access modifiers changed from: private */
    public static <E> zzdxg<E> zza(int i, Object... objArr) {
        while (i != 0) {
            if (i == 1) {
                return zzad(objArr[0]);
            }
            int zzer = zzer(i);
            Object[] objArr2 = new Object[zzer];
            int i2 = zzer - 1;
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                Object zzd = zzdxo.zzd(objArr[i5], i5);
                int hashCode = zzd.hashCode();
                int zzep = zzdwz.zzep(hashCode);
                while (true) {
                    int i6 = zzep & i2;
                    Object obj = objArr2[i6];
                    if (obj == null) {
                        objArr[i4] = zzd;
                        objArr2[i6] = zzd;
                        i3 += hashCode;
                        i4++;
                        break;
                    }
                    if (obj.equals(zzd)) {
                        break;
                    }
                    zzep++;
                }
            }
            Arrays.fill(objArr, i4, i, (Object) null);
            if (i4 == 1) {
                return new zzdxz(objArr[0], i3);
            }
            if (zzer(i4) < zzer / 2) {
                i = i4;
            } else {
                if (zzw(i4, objArr.length)) {
                    objArr = Arrays.copyOf(objArr, i4);
                }
                return new zzdxx(objArr, i3, objArr2, i2, i4);
            }
        }
        return zzdxx.zzhyn;
    }
}
