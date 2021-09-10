package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

final class zzdxv<K> extends zzdxg<K> {
    private final transient zzdxd<K> zzhxs;
    private final transient zzdxh<K, ?> zzhyl;

    zzdxv(zzdxh<K, ?> zzdxh, zzdxd<K> zzdxd) {
        this.zzhyl = zzdxh;
        this.zzhxs = zzdxd;
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean contains(@NullableDecl Object obj) {
        return this.zzhyl.get(obj) != null;
    }

    public final int size() {
        return this.zzhyl.size();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final int zza(Object[] objArr, int i) {
        return zzazk().zza(objArr, i);
    }

    @Override // com.google.android.gms.internal.ads.zzdwy
    /* renamed from: zzazg */
    public final zzdya<K> iterator() {
        return (zzdya) zzazk().iterator();
    }

    @Override // com.google.android.gms.internal.ads.zzdwy, com.google.android.gms.internal.ads.zzdxg
    public final zzdxd<K> zzazk() {
        return this.zzhxs;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.zzdwy
    public final boolean zzazl() {
        return true;
    }
}
