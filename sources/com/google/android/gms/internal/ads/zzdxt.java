package com.google.android.gms.internal.ads;

import java.util.Map;

final class zzdxt<K, V> extends zzdxg<Map.Entry<K, V>> {
    private final transient int size;
    private final transient Object[] zzhyh;
    private final transient zzdxh<K, V> zzhyl;
    private final transient int zzhym = 0;

    zzdxt(zzdxh<K, V> zzdxh, Object[] objArr, int i, int i2) {
        this.zzhyl = zzdxh;
        this.zzhyh = objArr;
        this.size = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value == null || !value.equals(this.zzhyl.get(key))) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int size() {
        return this.size;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final int zza(Object[] objArr, int i) {
        return zzazk().zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    /* renamed from: zzazg */
    public final zzdya<Map.Entry<K, V>> iterator() {
        return (zzdya) zzazk().iterator();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean zzazl() {
        return true;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdxg
    public final zzdxd<Map.Entry<K, V>> zzazo() {
        return new zzdxs(this);
    }
}
