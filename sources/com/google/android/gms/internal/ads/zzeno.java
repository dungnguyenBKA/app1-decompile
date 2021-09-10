package com.google.android.gms.internal.ads;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* access modifiers changed from: package-private */
public class zzeno<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private boolean zzinq;
    private final int zzium;
    private List<zzent> zziun;
    private Map<K, V> zziuo;
    private volatile zzenv zziup;
    private Map<K, V> zziuq;
    private volatile zzenp zziur;

    private zzeno(int i) {
        this.zzium = i;
        this.zziun = Collections.emptyList();
        this.zziuo = Collections.emptyMap();
        this.zziuq = Collections.emptyMap();
    }

    /* access modifiers changed from: private */
    public final void zzbkt() {
        if (this.zzinq) {
            throw new UnsupportedOperationException();
        }
    }

    private final SortedMap<K, V> zzbku() {
        zzbkt();
        if (this.zziuo.isEmpty() && !(this.zziuo instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.zziuo = treeMap;
            this.zziuq = treeMap.descendingMap();
        }
        return (SortedMap) this.zziuo;
    }

    static <FieldDescriptorType extends zzekw<FieldDescriptorType>> zzeno<FieldDescriptorType, Object> zzht(int i) {
        return new zzenn(i);
    }

    /* access modifiers changed from: private */
    public final V zzhv(int i) {
        zzbkt();
        V v = (V) this.zziun.remove(i).getValue();
        if (!this.zziuo.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = zzbku().entrySet().iterator();
            this.zziun.add(new zzent(this, it.next()));
            it.remove();
        }
        return v;
    }

    public void clear() {
        zzbkt();
        if (!this.zziun.isEmpty()) {
            this.zziun.clear();
        }
        if (!this.zziuo.isEmpty()) {
            this.zziuo.clear();
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.ads.zzeno<K extends java.lang.Comparable<K>, V> */
    /* JADX WARN: Multi-variable type inference failed */
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return zza(comparable) >= 0 || this.zziuo.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.zziup == null) {
            this.zziup = new zzenv(this, null);
        }
        return this.zziup;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzeno)) {
            return super.equals(obj);
        }
        zzeno zzeno = (zzeno) obj;
        int size = size();
        if (size != zzeno.size()) {
            return false;
        }
        int zzbkq = zzbkq();
        if (zzbkq != zzeno.zzbkq()) {
            return entrySet().equals(zzeno.entrySet());
        }
        for (int i = 0; i < zzbkq; i++) {
            if (!zzhu(i).equals(zzeno.zzhu(i))) {
                return false;
            }
        }
        if (zzbkq != size) {
            return this.zziuo.equals(zzeno.zziuo);
        }
        return true;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.ads.zzeno<K extends java.lang.Comparable<K>, V> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int zza = zza(comparable);
        return zza >= 0 ? (V) this.zziun.get(zza).getValue() : this.zziuo.get(comparable);
    }

    public int hashCode() {
        int zzbkq = zzbkq();
        int i = 0;
        for (int i2 = 0; i2 < zzbkq; i2++) {
            i += this.zziun.get(i2).hashCode();
        }
        return this.zziuo.size() > 0 ? i + this.zziuo.hashCode() : i;
    }

    public final boolean isImmutable() {
        return this.zzinq;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.gms.internal.ads.zzeno<K extends java.lang.Comparable<K>, V> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        zzbkt();
        Comparable comparable = (Comparable) obj;
        int zza = zza(comparable);
        if (zza >= 0) {
            return (V) zzhv(zza);
        }
        if (this.zziuo.isEmpty()) {
            return null;
        }
        return this.zziuo.remove(comparable);
    }

    public int size() {
        return this.zziuo.size() + this.zziun.size();
    }

    /* renamed from: zza */
    public final V put(K k, V v) {
        zzbkt();
        int zza = zza(k);
        if (zza >= 0) {
            return (V) this.zziun.get(zza).setValue(v);
        }
        zzbkt();
        if (this.zziun.isEmpty() && !(this.zziun instanceof ArrayList)) {
            this.zziun = new ArrayList(this.zzium);
        }
        int i = -(zza + 1);
        if (i >= this.zzium) {
            return zzbku().put(k, v);
        }
        int size = this.zziun.size();
        int i2 = this.zzium;
        if (size == i2) {
            zzent remove = this.zziun.remove(i2 - 1);
            zzbku().put((K) ((Comparable) remove.getKey()), (V) remove.getValue());
        }
        this.zziun.add(i, new zzent(this, k, v));
        return null;
    }

    public void zzbgf() {
        Map<K, V> map;
        Map<K, V> map2;
        if (!this.zzinq) {
            if (this.zziuo.isEmpty()) {
                map = Collections.emptyMap();
            } else {
                map = Collections.unmodifiableMap(this.zziuo);
            }
            this.zziuo = map;
            if (this.zziuq.isEmpty()) {
                map2 = Collections.emptyMap();
            } else {
                map2 = Collections.unmodifiableMap(this.zziuq);
            }
            this.zziuq = map2;
            this.zzinq = true;
        }
    }

    public final int zzbkq() {
        return this.zziun.size();
    }

    public final Iterable<Map.Entry<K, V>> zzbkr() {
        if (this.zziuo.isEmpty()) {
            return zzens.zzbkw();
        }
        return this.zziuo.entrySet();
    }

    /* access modifiers changed from: package-private */
    public final Set<Map.Entry<K, V>> zzbks() {
        if (this.zziur == null) {
            this.zziur = new zzenp(this, null);
        }
        return this.zziur;
    }

    public final Map.Entry<K, V> zzhu(int i) {
        return this.zziun.get(i);
    }

    /* synthetic */ zzeno(int i, zzenn zzenn) {
        this(i);
    }

    private final int zza(K k) {
        int size = this.zziun.size() - 1;
        if (size >= 0) {
            int compareTo = k.compareTo((Comparable) this.zziun.get(size).getKey());
            if (compareTo > 0) {
                return -(size + 2);
            }
            if (compareTo == 0) {
                return size;
            }
        }
        int i = 0;
        while (i <= size) {
            int i2 = (i + size) / 2;
            int compareTo2 = k.compareTo((Comparable) this.zziun.get(i2).getKey());
            if (compareTo2 < 0) {
                size = i2 - 1;
            } else if (compareTo2 <= 0) {
                return i2;
            } else {
                i = i2 + 1;
            }
        }
        return -(i + 1);
    }
}
