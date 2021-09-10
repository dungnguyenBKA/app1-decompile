package com.google.android.gms.internal.ads;

import java.util.Iterator;

final class zzeoi implements Iterator<String> {
    private final /* synthetic */ zzeog zzivd;
    private Iterator<String> zzivz;

    zzeoi(zzeog zzeog) {
        this.zzivd = zzeog;
        this.zzivz = zzeog.zzive.iterator();
    }

    public final boolean hasNext() {
        return this.zzivz.hasNext();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.zzivz.next();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
