package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class zzig extends zzgc<String> implements RandomAccess, zzih {
    public static final zzih zza;
    private static final zzig zzb;
    private final List<Object> zzc;

    static {
        zzig zzig = new zzig(10);
        zzb = zzig;
        zzig.zzb();
        zza = zzig;
    }

    public zzig() {
        this(10);
    }

    private static String zzj(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgs) {
            return ((zzgs) obj).zzl(zzia.zza);
        }
        return zzia.zzd((byte[]) obj);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final /* bridge */ /* synthetic */ void add(int i, String str) {
        zzbL();
        this.zzc.add(i, str);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.List, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zzbL();
        if (collection instanceof zzih) {
            collection = ((zzih) collection).zzh();
        }
        boolean addAll = this.zzc.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.measurement.zzgc
    public final void clear() {
        zzbL();
        this.zzc.clear();
        ((AbstractList) this).modCount++;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final /* bridge */ /* synthetic */ String remove(int i) {
        zzbL();
        Object remove = this.zzc.remove(i);
        ((AbstractList) this).modCount++;
        return zzj(remove);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, com.google.android.gms.internal.measurement.zzgc, java.util.AbstractList
    public final /* bridge */ /* synthetic */ String set(int i, String str) {
        zzbL();
        return zzj(this.zzc.set(i, str));
    }

    public final int size() {
        return this.zzc.size();
    }

    /* renamed from: zzd */
    public final String get(int i) {
        Object obj = this.zzc.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zzgs) {
            zzgs zzgs = (zzgs) obj;
            String zzl = zzgs.zzl(zzia.zza);
            if (zzgs.zzh()) {
                this.zzc.set(i, zzl);
            }
            return zzl;
        }
        byte[] bArr = (byte[]) obj;
        String zzd = zzia.zzd(bArr);
        if (zzia.zzc(bArr)) {
            this.zzc.set(i, zzd);
        }
        return zzd;
    }

    @Override // com.google.android.gms.internal.measurement.zzhz
    public final /* bridge */ /* synthetic */ zzhz zze(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.zzc);
            return new zzig(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    public final void zzf(zzgs zzgs) {
        zzbL();
        this.zzc.add(zzgs);
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    public final Object zzg(int i) {
        return this.zzc.get(i);
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    public final List<?> zzh() {
        return Collections.unmodifiableList(this.zzc);
    }

    @Override // com.google.android.gms.internal.measurement.zzih
    public final zzih zzi() {
        return zza() ? new zzkb(this) : this;
    }

    public zzig(int i) {
        this.zzc = new ArrayList(i);
    }

    private zzig(ArrayList<Object> arrayList) {
        this.zzc = arrayList;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.measurement.zzgc
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }
}
