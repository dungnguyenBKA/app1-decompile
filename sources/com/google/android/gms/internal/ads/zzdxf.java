package com.google.android.gms.internal.ads;

/* access modifiers changed from: package-private */
public final class zzdxf<E> extends zzdwu<E> {
    private final zzdxd<E> zzhxs;

    zzdxf(zzdxd<E> zzdxd, int i) {
        super(zzdxd.size(), i);
        this.zzhxs = zzdxd;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzdwu
    public final E get(int i) {
        return this.zzhxs.get(i);
    }
}
