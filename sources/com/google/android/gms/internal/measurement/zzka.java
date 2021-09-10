package com.google.android.gms.internal.measurement;

import java.util.Iterator;

final class zzka implements Iterator<String> {
    final Iterator<String> zza;
    final /* synthetic */ zzkb zzb;

    zzka(zzkb zzkb) {
        this.zzb = zzkb;
        this.zza = zzkb.zza.iterator();
    }

    public final boolean hasNext() {
        return this.zza.hasNext();
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.zza.next();
    }

    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
