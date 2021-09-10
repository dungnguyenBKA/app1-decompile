package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

public final class zzgq<T> {
    private final Map<String, AtomicReference<T>> zzaby = new HashMap();

    public final AtomicReference<T> zzas(String str) {
        synchronized (this) {
            if (!this.zzaby.containsKey(str)) {
                this.zzaby.put(str, new AtomicReference<>());
            }
        }
        return this.zzaby.get(str);
    }
}
