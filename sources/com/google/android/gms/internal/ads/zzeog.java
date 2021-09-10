package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

public final class zzeog extends AbstractList<String> implements zzelv, RandomAccess {
    private final zzelv zzive;

    public zzeog(zzelv zzelv) {
        this.zzive = zzelv;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ String get(int i) {
        return (String) this.zzive.get(i);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, java.lang.Iterable
    public final Iterator<String> iterator() {
        return new zzeoi(this);
    }

    @Override // java.util.List, java.util.AbstractList
    public final ListIterator<String> listIterator(int i) {
        return new zzeof(this, i);
    }

    public final int size() {
        return this.zzive.size();
    }

    @Override // com.google.android.gms.internal.ads.zzelv
    public final void zzak(zzejr zzejr) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzelv
    public final List<?> zzbjm() {
        return this.zzive.zzbjm();
    }

    @Override // com.google.android.gms.internal.ads.zzelv
    public final zzelv zzbjn() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzelv
    public final Object zzhj(int i) {
        return this.zzive.zzhj(i);
    }
}
