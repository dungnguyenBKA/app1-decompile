package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;

/* access modifiers changed from: package-private */
public class zzdxb<E> extends zzdxa<E> {
    int size = 0;
    Object[] zzhxo;
    boolean zzhxp;

    zzdxb(int i) {
        zzdwx.zzh(i, "initialCapacity");
        this.zzhxo = new Object[i];
    }

    private final void zzeq(int i) {
        Object[] objArr = this.zzhxo;
        if (objArr.length < i) {
            int length = objArr.length;
            if (i >= 0) {
                int i2 = length + (length >> 1) + 1;
                if (i2 < i) {
                    i2 = Integer.highestOneBit(i - 1) << 1;
                }
                if (i2 < 0) {
                    i2 = Integer.MAX_VALUE;
                }
                this.zzhxo = Arrays.copyOf(objArr, i2);
                this.zzhxp = false;
                return;
            }
            throw new AssertionError("cannot store more than MAX_VALUE elements");
        } else if (this.zzhxp) {
            this.zzhxo = (Object[]) objArr.clone();
            this.zzhxp = false;
        }
    }

    /* renamed from: zzab */
    public zzdxb<E> zzaa(E e) {
        zzdwl.checkNotNull(e);
        zzeq(this.size + 1);
        Object[] objArr = this.zzhxo;
        int i = this.size;
        this.size = i + 1;
        objArr[i] = e;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdxa
    public zzdxa<E> zzg(Iterable<? extends E> iterable) {
        if (iterable instanceof Collection) {
            Collection collection = (Collection) iterable;
            zzeq(collection.size() + this.size);
            if (collection instanceof zzdwy) {
                this.size = ((zzdwy) collection).zza(this.zzhxo, this.size);
                return this;
            }
        }
        super.zzg(iterable);
        return this;
    }
}
