package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* access modifiers changed from: package-private */
public final class zzdxx<E> extends zzdxg<E> {
    static final zzdxx<Object> zzhyn = new zzdxx<>(new Object[0], 0, null, 0, 0);
    private final transient int mask;
    private final transient int size;
    private final transient int zzahx;
    private final transient Object[] zzhyo;
    private final transient Object[] zzhyp;

    zzdxx(Object[] objArr, int i, Object[] objArr2, int i2, int i3) {
        this.zzhyo = objArr;
        this.zzhyp = objArr2;
        this.mask = i2;
        this.zzahx = i;
        this.size = i3;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean contains(@NullableDecl Object obj) {
        Object[] objArr = this.zzhyp;
        if (obj == null || objArr == null) {
            return false;
        }
        int zzep = zzdwz.zzep(obj.hashCode());
        while (true) {
            int i = zzep & this.mask;
            Object obj2 = objArr[i];
            if (obj2 == null) {
                return false;
            }
            if (obj2.equals(obj)) {
                return true;
            }
            zzep = i + 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdxg
    public final int hashCode() {
        return this.zzahx;
    }

    public final int size() {
        return this.size;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final int zza(Object[] objArr, int i) {
        System.arraycopy(this.zzhyo, 0, objArr, i, this.size);
        return i + this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    /* renamed from: zzazg */
    public final zzdya<E> iterator() {
        return (zzdya) zzazk().iterator();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final Object[] zzazh() {
        return this.zzhyo;
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

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdxg
    public final boolean zzazn() {
        return true;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdxg
    public final zzdxd<E> zzazo() {
        return zzdxd.zzb(this.zzhyo, this.size);
    }
}
