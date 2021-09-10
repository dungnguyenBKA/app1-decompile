package com.google.android.gms.internal.gtm;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class zzxt extends AbstractList<String> implements RandomAccess, zzvs {
    private final zzvs zza;

    public zzxt(zzvs zzvs) {
        this.zza = zzvs;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList
    public final /* bridge */ /* synthetic */ String get(int i) {
        return ((zzvr) this.zza).get(i);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, java.lang.Iterable
    public final Iterator<String> iterator() {
        return new zzxs(this);
    }

    @Override // java.util.List, java.util.AbstractList
    public final ListIterator<String> listIterator(int i) {
        return new zzxr(this, i);
    }

    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.gtm.zzvs
    public final zzvs zze() {
        return this;
    }

    @Override // com.google.android.gms.internal.gtm.zzvs
    public final Object zzf(int i) {
        return this.zza.zzf(i);
    }

    @Override // com.google.android.gms.internal.gtm.zzvs
    public final List<?> zzh() {
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.gtm.zzvs
    public final void zzi(zztd zztd) {
        throw new UnsupportedOperationException();
    }
}
