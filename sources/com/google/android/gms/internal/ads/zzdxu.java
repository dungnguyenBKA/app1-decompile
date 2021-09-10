package com.google.android.gms.internal.ads;

final class zzdxu extends zzdxd<Object> {
    private final transient int offset;
    private final transient int size;
    private final transient Object[] zzhyh;

    zzdxu(Object[] objArr, int i, int i2) {
        this.zzhyh = objArr;
        this.offset = i;
        this.size = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        zzdwl.zzt(i, this.size);
        return this.zzhyh[(i * 2) + this.offset];
    }

    public final int size() {
        return this.size;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean zzazl() {
        return true;
    }
}
