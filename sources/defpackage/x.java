package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* renamed from: x  reason: default package */
public class x<K, V> extends e0<K, V> implements Map<K, V> {
    d0<K, V> i;

    /* access modifiers changed from: package-private */
    /* renamed from: x$a */
    public class a extends d0<K, V> {
        a() {
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.d0
        public void a() {
            x.this.clear();
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.d0
        public Object b(int i, int i2) {
            return x.this.c[(i << 1) + i2];
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.d0
        public Map<K, V> c() {
            return x.this;
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.d0
        public int d() {
            return x.this.d;
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.d0
        public int e(Object obj) {
            return x.this.e(obj);
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.d0
        public int f(Object obj) {
            return x.this.g(obj);
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.d0
        public void g(K k, V v) {
            x.this.put(k, v);
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.d0
        public void h(int i) {
            x.this.j(i);
        }

        /* access modifiers changed from: protected */
        @Override // defpackage.d0
        public V i(int i, V v) {
            return (V) x.this.k(i, v);
        }
    }

    public x() {
    }

    private d0<K, V> m() {
        if (this.i == null) {
            this.i = new a();
        }
        return this.i;
    }

    @Override // java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return m().k();
    }

    @Override // java.util.Map
    public Set<K> keySet() {
        return m().l();
    }

    public boolean n(Collection<?> collection) {
        return d0.n(this, collection);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: x<K, V> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        b(map.size() + this.d);
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public Collection<V> values() {
        return m().m();
    }

    public x(int i2) {
        super(i2);
    }

    public x(e0 e0Var) {
        if (e0Var != null) {
            i(e0Var);
        }
    }
}
