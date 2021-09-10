package com.google.android.gms.internal.gtm;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;

public final class zzvr extends zzsj<String> implements RandomAccess, zzvs {
    public static final zzvs zza;
    private static final zzvr zzb;
    private final List<Object> zzc;

    static {
        zzvr zzvr = new zzvr(10);
        zzb = zzvr;
        zzvr.zzb();
        zza = zzvr;
    }

    public zzvr() {
        this(10);
    }

    private static String zzj(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zztd) {
            return ((zztd) obj).zzr(zzvi.zza);
        }
        return zzvi.zzh((byte[]) obj);
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.gtm.zzsj
    public final /* bridge */ /* synthetic */ void add(int i, String str) {
        zza();
        this.zzc.add(i, str);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.gtm.zzsj
    public final boolean addAll(int i, Collection<? extends String> collection) {
        zza();
        if (collection instanceof zzvs) {
            collection = ((zzvs) collection).zzh();
        }
        boolean addAll = this.zzc.addAll(i, collection);
        ((AbstractList) this).modCount++;
        return addAll;
    }

    @Override // com.google.android.gms.internal.gtm.zzsj
    public final void clear() {
        zza();
        this.zzc.clear();
        ((AbstractList) this).modCount++;
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.gtm.zzsj
    public final /* bridge */ /* synthetic */ String remove(int i) {
        zza();
        Object remove = this.zzc.remove(i);
        ((AbstractList) this).modCount++;
        return zzj(remove);
    }

    /* Return type fixed from 'java.lang.Object' to match base method */
    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [int, java.lang.Object] */
    @Override // java.util.List, java.util.AbstractList, com.google.android.gms.internal.gtm.zzsj
    public final /* bridge */ /* synthetic */ String set(int i, String str) {
        zza();
        return zzj(this.zzc.set(i, str));
    }

    public final int size() {
        return this.zzc.size();
    }

    @Override // com.google.android.gms.internal.gtm.zzvh
    public final /* bridge */ /* synthetic */ zzvh zzd(int i) {
        if (i >= size()) {
            ArrayList arrayList = new ArrayList(i);
            arrayList.addAll(this.zzc);
            return new zzvr(arrayList);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.gtm.zzvs
    public final zzvs zze() {
        return zzc() ? new zzxt(this) : this;
    }

    @Override // com.google.android.gms.internal.gtm.zzvs
    public final Object zzf(int i) {
        return this.zzc.get(i);
    }

    /* renamed from: zzg */
    public final String get(int i) {
        Object obj = this.zzc.get(i);
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof zztd) {
            zztd zztd = (zztd) obj;
            String zzr = zztd.zzr(zzvi.zza);
            if (zztd.zzj()) {
                this.zzc.set(i, zzr);
            }
            return zzr;
        }
        byte[] bArr = (byte[]) obj;
        String zzh = zzvi.zzh(bArr);
        if (zzvi.zzj(bArr)) {
            this.zzc.set(i, zzh);
        }
        return zzh;
    }

    @Override // com.google.android.gms.internal.gtm.zzvs
    public final List<?> zzh() {
        return Collections.unmodifiableList(this.zzc);
    }

    @Override // com.google.android.gms.internal.gtm.zzvs
    public final void zzi(zztd zztd) {
        zza();
        this.zzc.add(zztd);
        ((AbstractList) this).modCount++;
    }

    public zzvr(int i) {
        this.zzc = new ArrayList(i);
    }

    private zzvr(ArrayList<Object> arrayList) {
        this.zzc = arrayList;
    }

    @Override // java.util.AbstractCollection, java.util.List, java.util.Collection, com.google.android.gms.internal.gtm.zzsj
    public final boolean addAll(Collection<? extends String> collection) {
        return addAll(size(), collection);
    }
}
