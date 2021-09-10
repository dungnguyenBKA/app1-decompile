package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;

final class zzepu implements Iterator<E> {
    private int pos = 0;
    private final /* synthetic */ zzepr zzjbm;

    zzepu(zzepr zzepr) {
        this.zzjbm = zzepr;
    }

    public final boolean hasNext() {
        return this.pos < this.zzjbm.zzjbk.size() || this.zzjbm.zzjbl.hasNext();
    }

    @Override // java.util.Iterator
    public final E next() {
        while (this.pos >= this.zzjbm.zzjbk.size()) {
            zzepr zzepr = this.zzjbm;
            zzepr.zzjbk.add(zzepr.zzjbl.next());
        }
        List<E> list = this.zzjbm.zzjbk;
        int i = this.pos;
        this.pos = i + 1;
        return list.get(i);
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
