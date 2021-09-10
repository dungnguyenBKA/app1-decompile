package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzdxr<E> extends zzdxd<E> {
    static final zzdxd<Object> zzhyi = new zzdxr(new Object[0], 0);
    private final transient int size;
    private final transient Object[] zzhyj;

    zzdxr(Object[] objArr, int i) {
        this.zzhyj = objArr;
        this.size = i;
    }

    @Override // java.util.List
    public final E get(int i) {
        zzdwl.zzt(i, this.size);
        return (E) this.zzhyj[i];
    }

    public final int size() {
        return this.size;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdxd, com.google.android.gms.internal.ads.zzdwy
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzhyj, 0, objArr, i, this.size);
        return i + this.size;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final Object[] zzazh() {
        return this.zzhyj;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final int zzazi() {
        return 0;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final int zzazj() {
        return this.size;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean zzazl() {
        return false;
    }
}
