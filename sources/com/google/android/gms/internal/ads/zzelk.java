package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.List;

public final class zzelk<F, T> extends AbstractList<T> {
    private final List<F> zzhyb;
    private final zzelj<F, T> zzire;

    public zzelk(List<F> list, zzelj<F, T> zzelj) {
        this.zzhyb = list;
        this.zzire = zzelj;
    }

    @Override // java.util.List, java.util.AbstractList
    public final T get(int i) {
        return this.zzire.convert(this.zzhyb.get(i));
    }

    public final int size() {
        return this.zzhyb.size();
    }
}
