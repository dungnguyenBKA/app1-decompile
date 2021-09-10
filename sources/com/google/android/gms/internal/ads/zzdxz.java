package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzdxz<E> extends zzdxg<E> {
    private final transient E zzhyr;
    private transient int zzhys;

    zzdxz(E e) {
        this.zzhyr = (E) zzdwl.checkNotNull(e);
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean contains(Object obj) {
        return this.zzhyr.equals(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzdxg
    public final int hashCode() {
        int i = this.zzhys;
        if (i != 0) {
            return i;
        }
        int hashCode = this.zzhyr.hashCode();
        this.zzhys = hashCode;
        return hashCode;
    }

    public final int size() {
        return 1;
    }

    public final String toString() {
        String obj = this.zzhyr.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 2);
        sb.append('[');
        sb.append(obj);
        sb.append(']');
        return sb.toString();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final int zza(Object[] objArr, int i) {
        objArr[i] = this.zzhyr;
        return i + 1;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    /* renamed from: zzazg */
    public final zzdya<E> iterator() {
        return new zzdxi(this.zzhyr);
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean zzazl() {
        return false;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdxg
    public final boolean zzazn() {
        return this.zzhys != 0;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdxg
    public final zzdxd<E> zzazo() {
        return zzdxd.zzac(this.zzhyr);
    }

    zzdxz(E e, int i) {
        this.zzhyr = e;
        this.zzhys = i;
    }
}
