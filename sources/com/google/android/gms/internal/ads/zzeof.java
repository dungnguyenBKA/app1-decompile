package com.google.android.gms.internal.ads;

import java.util.ListIterator;

final class zzeof implements ListIterator<String> {
    private final /* synthetic */ int zzhzx;
    private ListIterator<String> zzivc;
    private final /* synthetic */ zzeog zzivd;

    zzeof(zzeog zzeog, int i) {
        this.zzivd = zzeog;
        this.zzhzx = i;
        this.zzivc = zzeog.zzive.listIterator(i);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    public final boolean hasNext() {
        return this.zzivc.hasNext();
    }

    public final boolean hasPrevious() {
        return this.zzivc.hasPrevious();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator, java.util.ListIterator
    public final /* synthetic */ String next() {
        return this.zzivc.next();
    }

    public final int nextIndex() {
        return this.zzivc.nextIndex();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.zzivc.previous();
    }

    public final int previousIndex() {
        return this.zzivc.previousIndex();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
