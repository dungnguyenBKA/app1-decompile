package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Map;

final class zzdxs extends zzdxd<Map.Entry<K, V>> {
    private final /* synthetic */ zzdxt zzhyk;

    zzdxs(zzdxt zzdxt) {
        this.zzhyk = zzdxt;
    }

    @Override // java.util.List
    public final /* synthetic */ Object get(int i) {
        zzdwl.zzt(i, this.zzhyk.size);
        int i2 = i * 2;
        return new AbstractMap.SimpleImmutableEntry(this.zzhyk.zzhyh[i2], this.zzhyk.zzhyh[i2 + 1]);
    }

    public final int size() {
        return this.zzhyk.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean zzazl() {
        return true;
    }
}
