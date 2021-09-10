package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* access modifiers changed from: package-private */
public final class zzdxi extends zzdya<T> {
    private boolean zzhxy;
    private final /* synthetic */ Object zzhxz;

    zzdxi(Object obj) {
        this.zzhxz = obj;
    }

    public final boolean hasNext() {
        return !this.zzhxy;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!this.zzhxy) {
            this.zzhxy = true;
            return (T) this.zzhxz;
        }
        throw new NoSuchElementException();
    }
}
