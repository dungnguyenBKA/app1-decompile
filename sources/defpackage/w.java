package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: w  reason: default package */
public class w<K, V> implements Iterable<Map.Entry<K, V>> {
    c<K, V> b;
    private c<K, V> c;
    private WeakHashMap<f<K, V>, Boolean> d = new WeakHashMap<>();
    private int e = 0;

    /* access modifiers changed from: package-private */
    /* renamed from: w$a */
    public static class a<K, V> extends e<K, V> {
        a(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.w.e
        public c<K, V> b(c<K, V> cVar) {
            return cVar.e;
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.w.e
        public c<K, V> c(c<K, V> cVar) {
            return cVar.d;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: w$b */
    public static class b<K, V> extends e<K, V> {
        b(c<K, V> cVar, c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.w.e
        public c<K, V> b(c<K, V> cVar) {
            return cVar.d;
        }

        /* access modifiers changed from: package-private */
        @Override // defpackage.w.e
        public c<K, V> c(c<K, V> cVar) {
            return cVar.e;
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: w$c */
    public static class c<K, V> implements Map.Entry<K, V> {
        final K b;
        final V c;
        c<K, V> d;
        c<K, V> e;

        c(K k, V v) {
            this.b = k;
            this.c = v;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!this.b.equals(cVar.b) || !this.c.equals(cVar.c)) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.c;
        }

        public int hashCode() {
            return this.b.hashCode() ^ this.c.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException("An entry modification is not supported");
        }

        public String toString() {
            return ((Object) this.b) + "=" + ((Object) this.c);
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: w$d */
    public class d implements Iterator<Map.Entry<K, V>>, f<K, V> {
        private c<K, V> b;
        private boolean c = true;

        d() {
        }

        @Override // defpackage.w.f
        public void a(c<K, V> cVar) {
            c<K, V> cVar2 = this.b;
            if (cVar == cVar2) {
                c<K, V> cVar3 = cVar2.e;
                this.b = cVar3;
                this.c = cVar3 == null;
            }
        }

        public boolean hasNext() {
            if (!this.c) {
                c<K, V> cVar = this.b;
                if (cVar == null || cVar.d == null) {
                    return false;
                }
                return true;
            } else if (w.this.b != null) {
                return true;
            } else {
                return false;
            }
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.c) {
                this.c = false;
                this.b = w.this.b;
            } else {
                c<K, V> cVar = this.b;
                this.b = cVar != null ? cVar.d : null;
            }
            return this.b;
        }
    }

    /* renamed from: w$e */
    private static abstract class e<K, V> implements Iterator<Map.Entry<K, V>>, f<K, V> {
        c<K, V> b;
        c<K, V> c;

        e(c<K, V> cVar, c<K, V> cVar2) {
            this.b = cVar2;
            this.c = cVar;
        }

        @Override // defpackage.w.f
        public void a(c<K, V> cVar) {
            c<K, V> cVar2 = null;
            if (this.b == cVar && cVar == this.c) {
                this.c = null;
                this.b = null;
            }
            c<K, V> cVar3 = this.b;
            if (cVar3 == cVar) {
                this.b = b(cVar3);
            }
            c<K, V> cVar4 = this.c;
            if (cVar4 == cVar) {
                c<K, V> cVar5 = this.b;
                if (!(cVar4 == cVar5 || cVar5 == null)) {
                    cVar2 = c(cVar4);
                }
                this.c = cVar2;
            }
        }

        /* access modifiers changed from: package-private */
        public abstract c<K, V> b(c<K, V> cVar);

        /* access modifiers changed from: package-private */
        public abstract c<K, V> c(c<K, V> cVar);

        public boolean hasNext() {
            return this.c != null;
        }

        @Override // java.util.Iterator
        public Object next() {
            c<K, V> cVar = this.c;
            c<K, V> cVar2 = this.b;
            this.c = (cVar == cVar2 || cVar2 == null) ? null : c(cVar);
            return cVar;
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: w$f */
    public interface f<K, V> {
        void a(c<K, V> cVar);
    }

    public Iterator<Map.Entry<K, V>> a() {
        b bVar = new b(this.c, this.b);
        this.d.put(bVar, Boolean.FALSE);
        return bVar;
    }

    public Map.Entry<K, V> b() {
        return this.b;
    }

    /* access modifiers changed from: protected */
    public c<K, V> c(K k) {
        c<K, V> cVar = this.b;
        while (cVar != null && !cVar.b.equals(k)) {
            cVar = cVar.d;
        }
        return cVar;
    }

    public w<K, V>.d d() {
        w<K, V>.d dVar = new d();
        this.d.put(dVar, Boolean.FALSE);
        return dVar;
    }

    public Map.Entry<K, V> e() {
        return this.c;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0048, code lost:
        if (r3.hasNext() != false) goto L_0x0053;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0050, code lost:
        if (((defpackage.w.e) r7).hasNext() != false) goto L_0x0053;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0053, code lost:
        return false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:?, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r7 != r6) goto L_0x0004
            return r0
        L_0x0004:
            boolean r1 = r7 instanceof defpackage.w
            r2 = 0
            if (r1 != 0) goto L_0x000a
            return r2
        L_0x000a:
            w r7 = (defpackage.w) r7
            int r1 = r6.e
            int r3 = r7.e
            if (r1 == r3) goto L_0x0013
            return r2
        L_0x0013:
            java.util.Iterator r1 = r6.iterator()
            java.util.Iterator r7 = r7.iterator()
        L_0x001b:
            r3 = r1
            w$e r3 = (defpackage.w.e) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L_0x0044
            r4 = r7
            w$e r4 = (defpackage.w.e) r4
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L_0x0044
            java.lang.Object r3 = r3.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r4.next()
            if (r3 != 0) goto L_0x003b
            if (r4 != 0) goto L_0x0043
        L_0x003b:
            if (r3 == 0) goto L_0x001b
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x001b
        L_0x0043:
            return r2
        L_0x0044:
            boolean r1 = r3.hasNext()
            if (r1 != 0) goto L_0x0053
            w$e r7 = (defpackage.w.e) r7
            boolean r7 = r7.hasNext()
            if (r7 != 0) goto L_0x0053
            goto L_0x0054
        L_0x0053:
            r0 = 0
        L_0x0054:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w.equals(java.lang.Object):boolean");
    }

    /* access modifiers changed from: protected */
    public c<K, V> f(K k, V v) {
        c<K, V> cVar = new c<>(k, v);
        this.e++;
        c<K, V> cVar2 = this.c;
        if (cVar2 == null) {
            this.b = cVar;
            this.c = cVar;
            return cVar;
        }
        cVar2.d = cVar;
        cVar.e = cVar2;
        this.c = cVar;
        return cVar;
    }

    public V g(K k) {
        c<K, V> c2 = c(k);
        if (c2 == null) {
            return null;
        }
        this.e--;
        if (!this.d.isEmpty()) {
            for (f<K, V> fVar : this.d.keySet()) {
                fVar.a(c2);
            }
        }
        c<K, V> cVar = c2.e;
        if (cVar != null) {
            cVar.d = c2.d;
        } else {
            this.b = c2.d;
        }
        c<K, V> cVar2 = c2.d;
        if (cVar2 != null) {
            cVar2.e = cVar;
        } else {
            this.c = cVar;
        }
        c2.d = null;
        c2.e = null;
        return c2.c;
    }

    public int hashCode() {
        Iterator<Map.Entry<K, V>> it = iterator();
        int i = 0;
        while (true) {
            e eVar = (e) it;
            if (!eVar.hasNext()) {
                return i;
            }
            i += ((Map.Entry) eVar.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<K, V>> iterator() {
        a aVar = new a(this.b, this.c);
        this.d.put(aVar, Boolean.FALSE);
        return aVar;
    }

    public int size() {
        return this.e;
    }

    public String toString() {
        StringBuilder q = ic.q("[");
        Iterator<Map.Entry<K, V>> it = iterator();
        while (true) {
            e eVar = (e) it;
            if (eVar.hasNext()) {
                q.append(((Map.Entry) eVar.next()).toString());
                if (eVar.hasNext()) {
                    q.append(", ");
                }
            } else {
                q.append("]");
                return q.toString();
            }
        }
    }
}
