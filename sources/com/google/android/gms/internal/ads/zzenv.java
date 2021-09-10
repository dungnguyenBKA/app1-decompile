package com.google.android.gms.internal.ads;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* access modifiers changed from: package-private */
public class zzenv extends AbstractSet<Map.Entry<K, V>> {
    private final /* synthetic */ zzeno zzius;

    private zzenv(zzeno zzeno) {
        this.zzius = zzeno;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public /* synthetic */ boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        this.zzius.put((Comparable) entry.getKey(), entry.getValue());
        return true;
    }

    public void clear() {
        this.zzius.clear();
    }

    public boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.zzius.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value) {
            return obj2 != null && obj2.equals(value);
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set, java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        return new zzenw(this.zzius, null);
    }

    public boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.zzius.remove(entry.getKey());
        return true;
    }

    public int size() {
        return this.zzius.size();
    }

    /* synthetic */ zzenv(zzeno zzeno, zzenn zzenn) {
        this(zzeno);
    }
}
