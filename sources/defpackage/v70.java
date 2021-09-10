package defpackage;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* renamed from: v70  reason: default package */
public final class v70<K, V> extends AbstractMap<K, V> implements Serializable {
    private static final Comparator<Comparable> i = new a();
    Comparator<? super K> b;
    e<K, V> c;
    int d = 0;
    int e = 0;
    final e<K, V> f = new e<>();
    private v70<K, V>.b g;
    private v70<K, V>.c h;

    /* renamed from: v70$a */
    class a implements Comparator<Comparable> {
        a() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // java.util.Comparator
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: v70$b */
    public class b extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: v70$b$a */
        class a extends v70<K, V>.d {
            a(b bVar) {
                super();
            }

            @Override // java.util.Iterator
            public Object next() {
                return a();
            }
        }

        b() {
        }

        public void clear() {
            v70.this.clear();
        }

        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && v70.this.b((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a(this);
        }

        public boolean remove(Object obj) {
            e<K, V> b2;
            if (!(obj instanceof Map.Entry) || (b2 = v70.this.b((Map.Entry) obj)) == null) {
                return false;
            }
            v70.this.e(b2, true);
            return true;
        }

        public int size() {
            return v70.this.d;
        }
    }

    /* renamed from: v70$c */
    final class c extends AbstractSet<K> {

        /* renamed from: v70$c$a */
        class a extends v70<K, V>.d {
            a(c cVar) {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return a().g;
            }
        }

        c() {
        }

        public void clear() {
            v70.this.clear();
        }

        public boolean contains(Object obj) {
            return v70.this.c(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set, java.lang.Iterable
        public Iterator<K> iterator() {
            return new a(this);
        }

        public boolean remove(Object obj) {
            v70 v70 = v70.this;
            e<K, V> c = v70.c(obj);
            if (c != null) {
                v70.e(c, true);
            }
            if (c != null) {
                return true;
            }
            return false;
        }

        public int size() {
            return v70.this.d;
        }
    }

    /* renamed from: v70$d */
    private abstract class d<T> implements Iterator<T> {
        e<K, V> b;
        e<K, V> c = null;
        int d;

        d() {
            this.b = v70.this.f.e;
            this.d = v70.this.e;
        }

        /* access modifiers changed from: package-private */
        public final e<K, V> a() {
            e<K, V> eVar = this.b;
            v70 v70 = v70.this;
            if (eVar == v70.f) {
                throw new NoSuchElementException();
            } else if (v70.e == this.d) {
                this.b = eVar.e;
                this.c = eVar;
                return eVar;
            } else {
                throw new ConcurrentModificationException();
            }
        }

        public final boolean hasNext() {
            return this.b != v70.this.f;
        }

        public final void remove() {
            e<K, V> eVar = this.c;
            if (eVar != null) {
                v70.this.e(eVar, true);
                this.c = null;
                this.d = v70.this.e;
                return;
            }
            throw new IllegalStateException();
        }
    }

    public v70() {
        Comparator<Comparable> comparator = i;
        this.b = comparator;
    }

    private void d(e<K, V> eVar, boolean z) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.c;
            e<K, V> eVar3 = eVar.d;
            int i2 = 0;
            int i3 = eVar2 != null ? eVar2.i : 0;
            int i4 = eVar3 != null ? eVar3.i : 0;
            int i5 = i3 - i4;
            if (i5 == -2) {
                e<K, V> eVar4 = eVar3.c;
                e<K, V> eVar5 = eVar3.d;
                int i6 = eVar5 != null ? eVar5.i : 0;
                if (eVar4 != null) {
                    i2 = eVar4.i;
                }
                int i7 = i2 - i6;
                if (i7 == -1 || (i7 == 0 && !z)) {
                    g(eVar);
                } else {
                    h(eVar3);
                    g(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 2) {
                e<K, V> eVar6 = eVar2.c;
                e<K, V> eVar7 = eVar2.d;
                int i8 = eVar7 != null ? eVar7.i : 0;
                if (eVar6 != null) {
                    i2 = eVar6.i;
                }
                int i9 = i2 - i8;
                if (i9 == 1 || (i9 == 0 && !z)) {
                    h(eVar);
                } else {
                    g(eVar2);
                    h(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i5 == 0) {
                eVar.i = i3 + 1;
                if (z) {
                    return;
                }
            } else {
                eVar.i = Math.max(i3, i4) + 1;
                if (!z) {
                    return;
                }
            }
            eVar = eVar.b;
        }
    }

    private void f(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.b;
        eVar.b = null;
        if (eVar2 != null) {
            eVar2.b = eVar3;
        }
        if (eVar3 == null) {
            this.c = eVar2;
        } else if (eVar3.c == eVar) {
            eVar3.c = eVar2;
        } else {
            eVar3.d = eVar2;
        }
    }

    private void g(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.c;
        e<K, V> eVar3 = eVar.d;
        e<K, V> eVar4 = eVar3.c;
        e<K, V> eVar5 = eVar3.d;
        eVar.d = eVar4;
        if (eVar4 != null) {
            eVar4.b = eVar;
        }
        f(eVar, eVar3);
        eVar3.c = eVar;
        eVar.b = eVar3;
        int i2 = 0;
        int max = Math.max(eVar2 != null ? eVar2.i : 0, eVar4 != null ? eVar4.i : 0) + 1;
        eVar.i = max;
        if (eVar5 != null) {
            i2 = eVar5.i;
        }
        eVar3.i = Math.max(max, i2) + 1;
    }

    private void h(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.c;
        e<K, V> eVar3 = eVar.d;
        e<K, V> eVar4 = eVar2.c;
        e<K, V> eVar5 = eVar2.d;
        eVar.c = eVar5;
        if (eVar5 != null) {
            eVar5.b = eVar;
        }
        f(eVar, eVar2);
        eVar2.d = eVar;
        eVar.b = eVar2;
        int i2 = 0;
        int max = Math.max(eVar3 != null ? eVar3.i : 0, eVar5 != null ? eVar5.i : 0) + 1;
        eVar.i = max;
        if (eVar4 != null) {
            i2 = eVar4.i;
        }
        eVar2.i = Math.max(max, i2) + 1;
    }

    /* access modifiers changed from: package-private */
    public e<K, V> a(K k, boolean z) {
        int i2;
        e<K, V> eVar;
        Comparator<? super K> comparator = this.b;
        e<K, V> eVar2 = this.c;
        if (eVar2 != null) {
            K k2 = comparator == i ? k : null;
            while (true) {
                if (k2 != null) {
                    i2 = k2.compareTo(eVar2.g);
                } else {
                    i2 = comparator.compare(k, eVar2.g);
                }
                if (i2 == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = i2 < 0 ? eVar2.c : eVar2.d;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            i2 = 0;
        }
        if (!z) {
            return null;
        }
        e<K, V> eVar4 = this.f;
        if (eVar2 != null) {
            eVar = new e<>(eVar2, k, eVar4, eVar4.f);
            if (i2 < 0) {
                eVar2.c = eVar;
            } else {
                eVar2.d = eVar;
            }
            d(eVar2, true);
        } else if (comparator != i || (k instanceof Comparable)) {
            eVar = new e<>(eVar2, k, eVar4, eVar4.f);
            this.c = eVar;
        } else {
            throw new ClassCastException(k.getClass().getName() + " is not Comparable");
        }
        this.d++;
        this.e++;
        return eVar;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0020, code lost:
        if ((r3 == r5 || (r3 != null && r3.equals(r5))) != false) goto L_0x0024;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public defpackage.v70.e<K, V> b(java.util.Map.Entry<?, ?> r5) {
        /*
            r4 = this;
            java.lang.Object r0 = r5.getKey()
            v70$e r0 = r4.c(r0)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x0023
            V r3 = r0.h
            java.lang.Object r5 = r5.getValue()
            if (r3 == r5) goto L_0x001f
            if (r3 == 0) goto L_0x001d
            boolean r5 = r3.equals(r5)
            if (r5 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r5 = 0
            goto L_0x0020
        L_0x001f:
            r5 = 1
        L_0x0020:
            if (r5 == 0) goto L_0x0023
            goto L_0x0024
        L_0x0023:
            r1 = 0
        L_0x0024:
            if (r1 == 0) goto L_0x0027
            goto L_0x0028
        L_0x0027:
            r0 = 0
        L_0x0028:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.v70.b(java.util.Map$Entry):v70$e");
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v0, resolved type: java.lang.Object */
    /* JADX WARN: Multi-variable type inference failed */
    /* access modifiers changed from: package-private */
    public e<K, V> c(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return a(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    public void clear() {
        this.c = null;
        this.d = 0;
        this.e++;
        e<K, V> eVar = this.f;
        eVar.f = eVar;
        eVar.e = eVar;
    }

    public boolean containsKey(Object obj) {
        return c(obj) != null;
    }

    /* access modifiers changed from: package-private */
    public void e(e<K, V> eVar, boolean z) {
        e<K, V> eVar2;
        int i2;
        if (z) {
            e<K, V> eVar3 = eVar.f;
            eVar3.e = eVar.e;
            eVar.e.f = eVar3;
        }
        e<K, V> eVar4 = eVar.c;
        e<K, V> eVar5 = eVar.d;
        e<K, V> eVar6 = eVar.b;
        int i3 = 0;
        if (eVar4 == null || eVar5 == null) {
            if (eVar4 != null) {
                f(eVar, eVar4);
                eVar.c = null;
            } else if (eVar5 != null) {
                f(eVar, eVar5);
                eVar.d = null;
            } else {
                f(eVar, null);
            }
            d(eVar6, false);
            this.d--;
            this.e++;
            return;
        }
        if (eVar4.i > eVar5.i) {
            e<K, V> eVar7 = eVar4.d;
            while (true) {
                eVar2 = eVar4;
                eVar4 = eVar7;
                if (eVar4 == null) {
                    break;
                }
                eVar7 = eVar4.d;
            }
        } else {
            e<K, V> eVar8 = eVar5.c;
            while (true) {
                eVar5 = eVar8;
                if (eVar5 == null) {
                    break;
                }
                eVar8 = eVar5.c;
            }
            eVar2 = eVar5;
        }
        e(eVar2, false);
        e<K, V> eVar9 = eVar.c;
        if (eVar9 != null) {
            i2 = eVar9.i;
            eVar2.c = eVar9;
            eVar9.b = eVar2;
            eVar.c = null;
        } else {
            i2 = 0;
        }
        e<K, V> eVar10 = eVar.d;
        if (eVar10 != null) {
            i3 = eVar10.i;
            eVar2.d = eVar10;
            eVar10.b = eVar2;
            eVar.d = null;
        }
        eVar2.i = Math.max(i2, i3) + 1;
        f(eVar, eVar2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        v70<K, V>.b bVar = this.g;
        if (bVar != null) {
            return bVar;
        }
        v70<K, V>.b bVar2 = new b();
        this.g = bVar2;
        return bVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        e<K, V> c2 = c(obj);
        if (c2 != null) {
            return c2.h;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        v70<K, V>.c cVar = this.h;
        if (cVar != null) {
            return cVar;
        }
        v70<K, V>.c cVar2 = new c();
        this.h = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        Objects.requireNonNull(k, "key == null");
        e<K, V> a2 = a(k, true);
        V v2 = a2.h;
        a2.h = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        e<K, V> c2 = c(obj);
        if (c2 != null) {
            e(c2, true);
        }
        if (c2 != null) {
            return c2.h;
        }
        return null;
    }

    public int size() {
        return this.d;
    }

    /* access modifiers changed from: package-private */
    /* renamed from: v70$e */
    public static final class e<K, V> implements Map.Entry<K, V> {
        e<K, V> b;
        e<K, V> c;
        e<K, V> d;
        e<K, V> e;
        e<K, V> f;
        final K g;
        V h;
        int i;

        e() {
            this.g = null;
            this.f = this;
            this.e = this;
        }

        /* JADX WARNING: Removed duplicated region for block: B:14:0x0031 A[ORIG_RETURN, RETURN, SYNTHETIC] */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r4) {
            /*
                r3 = this;
                boolean r0 = r4 instanceof java.util.Map.Entry
                r1 = 0
                if (r0 == 0) goto L_0x0032
                java.util.Map$Entry r4 = (java.util.Map.Entry) r4
                K r0 = r3.g
                if (r0 != 0) goto L_0x0012
                java.lang.Object r0 = r4.getKey()
                if (r0 != 0) goto L_0x0032
                goto L_0x001c
            L_0x0012:
                java.lang.Object r2 = r4.getKey()
                boolean r0 = r0.equals(r2)
                if (r0 == 0) goto L_0x0032
            L_0x001c:
                V r0 = r3.h
                if (r0 != 0) goto L_0x0027
                java.lang.Object r4 = r4.getValue()
                if (r4 != 0) goto L_0x0032
                goto L_0x0031
            L_0x0027:
                java.lang.Object r4 = r4.getValue()
                boolean r4 = r0.equals(r4)
                if (r4 == 0) goto L_0x0032
            L_0x0031:
                r1 = 1
            L_0x0032:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: defpackage.v70.e.equals(java.lang.Object):boolean");
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.g;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.h;
        }

        public int hashCode() {
            K k = this.g;
            int i2 = 0;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.h;
            if (v != null) {
                i2 = v.hashCode();
            }
            return hashCode ^ i2;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.h;
            this.h = v;
            return v2;
        }

        public String toString() {
            return ((Object) this.g) + "=" + ((Object) this.h);
        }

        e(e<K, V> eVar, K k, e<K, V> eVar2, e<K, V> eVar3) {
            this.b = eVar;
            this.g = k;
            this.i = 1;
            this.e = eVar2;
            this.f = eVar3;
            eVar3.e = this;
            eVar2.f = this;
        }
    }
}
