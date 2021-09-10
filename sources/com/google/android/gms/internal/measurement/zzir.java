package com.google.android.gms.internal.measurement;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public final class zzir<K, V> extends LinkedHashMap<K, V> {
    private static final zzir zzb;
    private boolean zza = true;

    static {
        zzir zzir = new zzir();
        zzb = zzir;
        zzir.zza = false;
    }

    private zzir() {
    }

    public static <K, V> zzir<K, V> zza() {
        return zzb;
    }

    private static int zzf(Object obj) {
        if (obj instanceof byte[]) {
            return zzia.zzg((byte[]) obj);
        }
        if (!(obj instanceof zzhu)) {
            return obj.hashCode();
        }
        throw new UnsupportedOperationException();
    }

    private final void zzg() {
        if (!this.zza) {
            throw new UnsupportedOperationException();
        }
    }

    public final void clear() {
        zzg();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.AbstractMap, java.util.Map, java.util.HashMap
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (this == map) {
            return true;
        }
        if (size() != map.size()) {
            return false;
        }
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!map.containsKey(entry.getKey())) {
                return false;
            }
            V value = entry.getValue();
            Object obj2 = map.get(entry.getKey());
            if (!(value instanceof byte[]) || !(obj2 instanceof byte[])) {
                z = value.equals(obj2);
                continue;
            } else {
                z = Arrays.equals((byte[]) value, (byte[]) obj2);
                continue;
            }
            if (!z) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            i += zzf(entry.getValue()) ^ zzf(entry.getKey());
        }
        return i;
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.HashMap
    public final V put(K k, V v) {
        zzg();
        zzia.zza(k);
        zzia.zza(v);
        return (V) super.put(k, v);
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.HashMap
    public final void putAll(Map<? extends K, ? extends V> map) {
        zzg();
        for (Object obj : map.keySet()) {
            zzia.zza(obj);
            zzia.zza(map.get(obj));
        }
        super.putAll(map);
    }

    @Override // java.util.AbstractMap, java.util.Map, java.util.HashMap
    public final V remove(Object obj) {
        zzg();
        return (V) super.remove(obj);
    }

    public final void zzb(zzir<K, V> zzir) {
        zzg();
        if (!zzir.isEmpty()) {
            putAll(zzir);
        }
    }

    public final zzir<K, V> zzc() {
        return isEmpty() ? new zzir<>() : new zzir<>(this);
    }

    public final void zzd() {
        this.zza = false;
    }

    public final boolean zze() {
        return this.zza;
    }

    private zzir(Map<K, V> map) {
        super(map);
    }
}
