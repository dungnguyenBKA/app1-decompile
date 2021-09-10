package com.google.android.gms.internal.measurement;

import java.util.ListIterator;

final class zzjz implements ListIterator<String> {
    final ListIterator<String> zza;
    final /* synthetic */ int zzb;
    final /* synthetic */ zzkb zzc;

    zzjz(zzkb zzkb, int i) {
        this.zzc = zzkb;
        this.zzb = i;
        this.zza = zzkb.zza.listIterator(i);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    public final boolean hasPrevious() {
        return this.zza.hasPrevious();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator, java.util.ListIterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.zza.next();
    }

    public final int nextIndex() {
        return this.zza.nextIndex();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.zza.previous();
    }

    public final int previousIndex() {
        return this.zza.previousIndex();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
