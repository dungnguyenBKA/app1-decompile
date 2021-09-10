package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;

/* access modifiers changed from: package-private */
public abstract class zzepy<K, V, V2> implements zzeqb<Map<K, V2>> {
    private final Map<K, zzeqo<V>> zzjbw;

    zzepy(Map<K, zzeqo<V>> map) {
        this.zzjbw = Collections.unmodifiableMap(map);
    }

    /* access modifiers changed from: package-private */
    public final Map<K, zzeqo<V>> zzbmm() {
        return this.zzjbw;
    }
}
