package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class zzelw extends zzejl<String> implements zzelv, RandomAccess {
    private static final zzelw zzirz;
    private static final zzelv zzisa;
    private final List<Object> zzisb;

    static {
        zzelw zzelw = new zzelw();
        zzirz = zzelw;
        zzelw.zzbgf();
        zzisa = zzelw;
    }

    public zzelw() {
        this(10);
    }

    private static String zzam(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzejr) {
            return ((zzejr) obj).zzbgi();
        }
        return zzeld.zzy((byte[]) obj);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ void add(int i, String str) {
        zzbgg();
        this.zzisb.add(i, str);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.ads.zzejl
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }

    @Override // com.google.android.gms.internal.ads.zzejl
    public final void clear() {
        zzbgg();
        this.zzisb.clear();
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzejl
    public final /* bridge */ /* synthetic */ boolean equals(Object obj) {
        return super.equals(obj);
    }

    @Override // java.util.List, java.util.AbstractList
    public final /* synthetic */ Object get(int i) {
        Object obj = this.zzisb.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzejr) {
            zzejr zzejr = (zzejr) obj;
            String zzbgi = zzejr.zzbgi();
            if (zzejr.zzbgj()) {
                this.zzisb.set(i, zzbgi);
            }
            return zzbgi;
        }
        byte[] bArr = (byte[]) obj;
        String zzy = zzeld.zzy(bArr);
        if (zzeld.zzx(bArr)) {
            this.zzisb.set(i, zzy);
        }
        return zzy;
    }

    @Override // com.google.android.gms.internal.ads.zzejl
    public final /* bridge */ /* synthetic */ int hashCode() {
        return super.hashCode();
    }

    @Override // java.util.List, com.google.android.gms.internal.ads.zzejl
    public final /* bridge */ /* synthetic */ boolean remove(Object obj) {
        return super.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.ads.zzejl
    public final /* bridge */ /* synthetic */ boolean removeAll(Collection collection) {
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.ads.zzejl
    public final /* bridge */ /* synthetic */ boolean retainAll(Collection collection) {
        return super.retainAll(collection);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ String set(int i, String str) {
        zzbgg();
        return zzam(this.zzisb.set(i, str));
    }

    public final int size() {
        return this.zzisb.size();
    }

    @Override // com.google.android.gms.internal.ads.zzelv
    public final void zzak(zzejr zzejr) {
        zzbgg();
        this.zzisb.add(zzejr);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzell, com.google.android.gms.internal.ads.zzejl
    public final /* bridge */ /* synthetic */ boolean zzbge() {
        return super.zzbge();
    }

    @Override // com.google.android.gms.internal.ads.zzelv
    public final List<?> zzbjm() {
        return Collections.unmodifiableList(this.zzisb);
    }

    @Override // com.google.android.gms.internal.ads.zzelv
    public final zzelv zzbjn() {
        return zzbge() ? new zzeog(this) : this;
    }

    @Override // com.google.android.gms.internal.ads.zzell
    public final /* synthetic */ zzell zzfy(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.zzisb);
            return new zzelw(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzelv
    public final Object zzhj(int i) {
        return this.zzisb.get(i);
    }

    public zzelw(int i) {
        this(new ArrayList(i));
    }

    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zzbgg();
        if (collection instanceof zzelv) {
            collection = ((zzelv) collection).zzbjm();
        }
        boolean addAll = this.zzisb.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* synthetic */ String remove(int i) {
        zzbgg();
        Object remove = this.zzisb.remove(i);
        ((AbstractList) this).modCount++;
        return zzam(remove);
    }

    private zzelw(ArrayList<Object> arrayList) {
        this.zzisb = arrayList;
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, java.util.AbstractList, com.google.android.gms.internal.ads.zzejl
    public final /* bridge */ /* synthetic */ boolean add(String str) {
        return super.add(str);
    }
}
