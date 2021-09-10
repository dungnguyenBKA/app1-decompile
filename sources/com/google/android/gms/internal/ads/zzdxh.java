package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

public abstract class zzdxh<K, V> implements Serializable, Map<K, V> {
    private static final Map.Entry<?, ?>[] zzhxu = new Map.Entry[0];
    private transient zzdxg<Map.Entry<K, V>> zzhxv;
    private transient zzdxg<K> zzhxw;
    private transient zzdwy<V> zzhxx;

    zzdxh() {
    }

    public static <K, V> zzdxh<K, V> zza(K k, V v, K k2, V v2, K k3, V v3, K k4, V v4, K k5, V v5) {
        zzdwx.zzb(k, v);
        zzdwx.zzb(k2, v2);
        zzdwx.zzb(k3, v3);
        zzdwx.zzb(k4, v4);
        zzdwx.zzb(k5, v5);
        return zzdxq.zzc(5, new Object[]{k, v, k2, v2, k3, v3, k4, v4, k5, v5});
    }

    public static <K, V> zzdxh<K, V> zzc(K k, V v) {
        zzdwx.zzb(k, v);
        return zzdxq.zzc(1, new Object[]{k, v});
    }

    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    public boolean containsKey(@NullableDecl Object obj) {
        return get(obj) != null;
    }

    public boolean containsValue(@NullableDecl Object obj) {
        return ((zzdwy) values()).contains(obj);
    }

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        zzdxg<Map.Entry<K, V>> zzdxg = this.zzhxv;
        if (zzdxg != null) {
            return zzdxg;
        }
        zzdxg<Map.Entry<K, V>> zzazp = zzazp();
        this.zzhxv = zzazp;
        return zzazp;
    }

    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    public int hashCode() {
        return zzdxw.zzg((zzdxg) entrySet());
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        zzdxg<K> zzdxg = this.zzhxw;
        if (zzdxg != null) {
            return zzdxg;
        }
        zzdxg<K> zzazq = zzazq();
        this.zzhxw = zzazq;
        return zzazq;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        int size = size();
        zzdwx.zzh(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(((long) size) << 3, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            z = false;
            sb.append((Object) entry.getKey());
            sb.append('=');
            sb.append((Object) entry.getValue());
        }
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map
    public /* synthetic */ Collection values() {
        zzdwy<V> zzdwy = this.zzhxx;
        if (zzdwy != null) {
            return zzdwy;
        }
        zzdwy<V> zzazr = zzazr();
        this.zzhxx = zzazr;
        return zzazr;
    }

    /* access modifiers changed from: package-private */
    public abstract zzdxg<Map.Entry<K, V>> zzazp();

    /* access modifiers changed from: package-private */
    public abstract zzdxg<K> zzazq();

    /* access modifiers changed from: package-private */
    public abstract zzdwy<V> zzazr();
}
