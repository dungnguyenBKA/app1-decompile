package com.google.android.gms.internal.gtm;

import java.util.Map;

final class zzvn<K> implements Map.Entry<K, Object> {
    private final Map.Entry<K, zzvp> zza;

    /* synthetic */ zzvn(Map.Entry entry, zzvm zzvm) {
        this.zza = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.zza.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.zza.getValue() == null) {
            return null;
        }
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzwk) {
            return this.zza.getValue().zzc((zzwk) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }

    public final zzvp zza() {
        return this.zza.getValue();
    }
}
