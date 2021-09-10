package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

abstract class zzdvq<T> implements Iterator<T> {
    private int zzhvl = zzdvs.zzhvo;
    @NullableDecl
    private T zzhvm;

    protected zzdvq() {
    }

    public final boolean hasNext() {
        int i = this.zzhvl;
        int i2 = zzdvs.zzhvq;
        if (i != i2) {
            int i3 = zzdvp.zzhvk[i - 1];
            if (i3 == 1) {
                return false;
            }
            if (i3 == 2) {
                return true;
            }
            this.zzhvl = i2;
            this.zzhvm = zzaza();
            if (this.zzhvl == zzdvs.zzhvp) {
                return false;
            }
            this.zzhvl = zzdvs.zzhvn;
            return true;
        }
        throw new IllegalStateException();
    }

    @Override // java.util.Iterator
    public final T next() {
        if (hasNext()) {
            this.zzhvl = zzdvs.zzhvo;
            T t = this.zzhvm;
            this.zzhvm = null;
            return t;
        }
        throw new NoSuchElementException();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* access modifiers changed from: protected */
    public abstract T zzaza();

    /* access modifiers changed from: protected */
    @NullableDecl
    public final T zzazb() {
        this.zzhvl = zzdvs.zzhvp;
        return null;
    }
}
