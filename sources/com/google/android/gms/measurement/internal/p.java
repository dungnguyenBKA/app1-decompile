package com.google.android.gms.measurement.internal;

import java.util.Iterator;

final class p implements Iterator<String> {
    final Iterator<String> b;
    final /* synthetic */ zzaq c;

    p(zzaq zzaq) {
        this.c = zzaq;
        this.b = zzaq.b.keySet().iterator();
    }

    /* renamed from: a */
    public final String next() {
        return this.b.next();
    }

    public final boolean hasNext() {
        return this.b.hasNext();
    }

    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
