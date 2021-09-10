package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class zzkb extends AbstractList<String> implements RandomAccess, zzih {
    private final zzih zza;

    public zzkb(zzih zzih) {
        this.zza = zzih;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList
    public final /* bridge */ /* synthetic */ String get(int i) {
        return ((zzig) this.zza).get(i);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, java.lang.Iterable
    public final Iterator<String> iterator() {
        return new zzka(this);
    }

    @Override // java.util.List, java.util.AbstractList
    public final ListIterator<String> listIterator(int i) {
        return new zzjz(this, i);
    }

    public final int size() {
        return this.zza.size();
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    public final void zzf(zzgs zzgs) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    public final Object zzg(int i) {
        return this.zza.zzg(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    public final List<?> zzh() {
        return this.zza.zzh();
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    public final zzih zzi() {
        return this;
    }
}
