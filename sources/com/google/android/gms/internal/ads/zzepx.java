package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;

public class zzepx<K, V, V2> {
    final LinkedHashMap<K, zzeqo<V>> zzjbv;

    zzepx(int i) {
        this.zzjbv = zzeqa.zzif(i);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: java.util.LinkedHashMap<K, com.google.android.gms.internal.ads.zzeqo<V>> */
    /* JADX WARN: Multi-variable type inference failed */
    /* access modifiers changed from: package-private */
    public zzepx<K, V, V2> zza(K k, zzeqo<V> zzeqo) {
        this.zzjbv.put(zzeqh.zza(k, "key"), zzeqh.zza(zzeqo, "provider"));
        return this;
    }
}
