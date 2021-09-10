package defpackage;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* access modifiers changed from: package-private */
/* renamed from: d0  reason: default package */
public abstract class d0<K, V> {
    d0<K, V>.b a;
    d0<K, V>.c b;
    d0<K, V>.e c;

    /* access modifiers changed from: package-private */
    /* renamed from: d0$a */
    public final class a<T> implements Iterator<T> {
        final int b;
        int c;
        int d;
        boolean e = false;

        a(int i) {
            this.b = i;
            this.c = d0.this.d();
        }

        public boolean hasNext() {
            return this.d < this.c;
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext()) {
                T t = (T) d0.this.b(this.d, this.b);
                this.d++;
                this.e = true;
                return t;
            }
            throw new NoSuchElementException();
        }

        public void remove() {
            if (this.e) {
                int i = this.d - 1;
                this.d = i;
                this.c--;
                this.e = false;
                d0.this.h(i);
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: d0$b */
    public final class b implements Set<Map.Entry<K, V>> {
        b() {
        }

        @Override // java.util.Collection, java.util.Set
        public boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            throw new UnsupportedOperationException();
        }

        /* JADX DEBUG: Multi-variable search result rejected for r2v0, resolved type: d0 */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Collection, java.util.Set
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int d = d0.this.d();
            Iterator<? extends Map.Entry<K, V>> it = collection.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                d0.this.g(entry.getKey(), entry.getValue());
            }
            return d != d0.this.d();
        }

        public void clear() {
            d0.this.a();
        }

        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int e = d0.this.e(entry.getKey());
            if (e < 0) {
                return false;
            }
            return a0.c(d0.this.b(e, 1), entry.getValue());
        }

        @Override // java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        public boolean equals(Object obj) {
            return d0.j(this, obj);
        }

        public int hashCode() {
            int i;
            int i2;
            int i3 = 0;
            for (int d = d0.this.d() - 1; d >= 0; d--) {
                Object b2 = d0.this.b(d, 0);
                Object b3 = d0.this.b(d, 1);
                if (b2 == null) {
                    i = 0;
                } else {
                    i = b2.hashCode();
                }
                if (b3 == null) {
                    i2 = 0;
                } else {
                    i2 = b3.hashCode();
                }
                i3 += i ^ i2;
            }
            return i3;
        }

        public boolean isEmpty() {
            return d0.this.d() == 0;
        }

        @Override // java.util.Collection, java.util.Set, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new d();
        }

        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        public int size() {
            return d0.this.d();
        }

        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: d0$c */
    public final class c implements Set<K> {
        c() {
        }

        @Override // java.util.Collection, java.util.Set
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        public void clear() {
            d0.this.a();
        }

        public boolean contains(Object obj) {
            return d0.this.e(obj) >= 0;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            Map<K, V> c = d0.this.c();
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!c.containsKey(it.next())) {
                    return false;
                }
            }
            return true;
        }

        public boolean equals(Object obj) {
            return d0.j(this, obj);
        }

        public int hashCode() {
            int i;
            int i2 = 0;
            for (int d = d0.this.d() - 1; d >= 0; d--) {
                Object b2 = d0.this.b(d, 0);
                if (b2 == null) {
                    i = 0;
                } else {
                    i = b2.hashCode();
                }
                i2 += i;
            }
            return i2;
        }

        public boolean isEmpty() {
            return d0.this.d() == 0;
        }

        @Override // java.util.Collection, java.util.Set, java.lang.Iterable
        public Iterator<K> iterator() {
            return new a(0);
        }

        public boolean remove(Object obj) {
            int e = d0.this.e(obj);
            if (e < 0) {
                return false;
            }
            d0.this.h(e);
            return true;
        }

        @Override // java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            Map<K, V> c = d0.this.c();
            int size = c.size();
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                c.remove(it.next());
            }
            return size != c.size();
        }

        @Override // java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            return d0.n(d0.this.c(), collection);
        }

        public int size() {
            return d0.this.d();
        }

        public Object[] toArray() {
            return d0.this.o(0);
        }

        @Override // java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            return (T[]) d0.this.p(tArr, 0);
        }
    }

    /* renamed from: d0$d */
    final class d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {
        int b;
        int c;
        boolean d = false;

        d() {
            this.b = d0.this.d() - 1;
            this.c = -1;
        }

        public boolean equals(Object obj) {
            if (!this.d) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            } else if (!(obj instanceof Map.Entry)) {
                return false;
            } else {
                Map.Entry entry = (Map.Entry) obj;
                if (!a0.c(entry.getKey(), d0.this.b(this.c, 0)) || !a0.c(entry.getValue(), d0.this.b(this.c, 1))) {
                    return false;
                }
                return true;
            }
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.d) {
                return (K) d0.this.b(this.c, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.d) {
                return (V) d0.this.b(this.c, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public boolean hasNext() {
            return this.c < this.b;
        }

        public int hashCode() {
            int i;
            if (this.d) {
                int i2 = 0;
                Object b2 = d0.this.b(this.c, 0);
                Object b3 = d0.this.b(this.c, 1);
                if (b2 == null) {
                    i = 0;
                } else {
                    i = b2.hashCode();
                }
                if (b3 != null) {
                    i2 = b3.hashCode();
                }
                return i ^ i2;
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public Object next() {
            if (hasNext()) {
                this.c++;
                this.d = true;
                return this;
            }
            throw new NoSuchElementException();
        }

        public void remove() {
            if (this.d) {
                d0.this.h(this.c);
                this.c--;
                this.b--;
                this.d = false;
                return;
            }
            throw new IllegalStateException();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.d) {
                return (V) d0.this.i(this.c, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: d0$e */
    public final class e implements Collection<V> {
        e() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        public void clear() {
            d0.this.a();
        }

        public boolean contains(Object obj) {
            return d0.this.f(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        public boolean isEmpty() {
            return d0.this.d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a(1);
        }

        public boolean remove(Object obj) {
            int f = d0.this.f(obj);
            if (f < 0) {
                return false;
            }
            d0.this.h(f);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int d = d0.this.d();
            int i = 0;
            boolean z = false;
            while (i < d) {
                if (collection.contains(d0.this.b(i, 1))) {
                    d0.this.h(i);
                    i--;
                    d--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int d = d0.this.d();
            int i = 0;
            boolean z = false;
            while (i < d) {
                if (!collection.contains(d0.this.b(i, 1))) {
                    d0.this.h(i);
                    i--;
                    d--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        public int size() {
            return d0.this.d();
        }

        public Object[] toArray() {
            return d0.this.o(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) d0.this.p(tArr, 1);
        }
    }

    d0() {
    }

    public static <T> boolean j(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() != set2.size() || !set.containsAll(set2)) {
                    return false;
                }
                return true;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public static <K, V> boolean n(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    /* access modifiers changed from: protected */
    public abstract void a();

    /* access modifiers changed from: protected */
    public abstract Object b(int i, int i2);

    /* access modifiers changed from: protected */
    public abstract Map<K, V> c();

    /* access modifiers changed from: protected */
    public abstract int d();

    /* access modifiers changed from: protected */
    public abstract int e(Object obj);

    /* access modifiers changed from: protected */
    public abstract int f(Object obj);

    /* access modifiers changed from: protected */
    public abstract void g(K k, V v);

    /* access modifiers changed from: protected */
    public abstract void h(int i);

    /* access modifiers changed from: protected */
    public abstract V i(int i, V v);

    public Set<Map.Entry<K, V>> k() {
        if (this.a == null) {
            this.a = new b();
        }
        return this.a;
    }

    public Set<K> l() {
        if (this.b == null) {
            this.b = new c();
        }
        return this.b;
    }

    public Collection<V> m() {
        if (this.c == null) {
            this.c = new e();
        }
        return this.c;
    }

    public Object[] o(int i) {
        int d2 = d();
        Object[] objArr = new Object[d2];
        for (int i2 = 0; i2 < d2; i2++) {
            objArr[i2] = b(i2, i);
        }
        return objArr;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v9, resolved type: T[] */
    /* JADX WARN: Multi-variable type inference failed */
    public <T> T[] p(T[] tArr, int i) {
        int d2 = d();
        if (tArr.length < d2) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), d2));
        }
        for (int i2 = 0; i2 < d2; i2++) {
            tArr[i2] = b(i2, i);
        }
        if (tArr.length > d2) {
            tArr[d2] = null;
        }
        return tArr;
    }
}
