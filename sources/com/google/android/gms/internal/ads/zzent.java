package com.google.android.gms.internal.ads;

import java.util.Map;

/* access modifiers changed from: package-private */
public final class zzent implements Comparable<zzent>, Map.Entry<K, V> {
    private V value;
    private final /* synthetic */ zzeno zzius;
    private final K zziuw;

    zzent(zzeno zzeno, Map.Entry<K, V> entry) {
        this(zzeno, entry.getKey(), entry.getValue());
    }

    /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(zzent zzent) {
        return ((Comparable) getKey()).compareTo((Comparable) zzent.getKey());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return equals(this.zziuw, entry.getKey()) && equals(this.value, entry.getValue());
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.zziuw;
    }

    @Override // java.util.Map.Entry
    public final V getValue() {
        return this.value;
    }

    public final int hashCode() {
        K k = this.zziuw;
        int i = 0;
        int hashCode = k == null ? 0 : k.hashCode();
        V v = this.value;
        if (v != null) {
            i = v.hashCode();
        }
        return hashCode ^ i;
    }

    @Override // java.util.Map.Entry
    public final V setValue(V v) {
        this.zzius.zzbkt();
        V v2 = this.value;
        this.value = v;
        return v2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zziuw);
        String valueOf2 = String.valueOf(this.value);
        return ic.e(valueOf2.length() + valueOf.length() + 1, valueOf, "=", valueOf2);
    }

    zzent(zzeno zzeno, K k, V v) {
        this.zzius = zzeno;
        this.zziuw = k;
        this.value = v;
    }

    private static boolean equals(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }
}
