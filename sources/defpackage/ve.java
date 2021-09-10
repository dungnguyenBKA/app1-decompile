package defpackage;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Objects;
import java.util.TreeMap;

/* renamed from: ve  reason: default package */
public final class ve implements oe {
    private final te<a, Object> a = new te<>();
    private final b b = new b();
    private final Map<Class<?>, NavigableMap<Integer, Integer>> c = new HashMap();
    private final Map<Class<?>, ne<?>> d = new HashMap();
    private final int e;
    private int f;

    /* access modifiers changed from: private */
    /* renamed from: ve$a */
    public static final class a implements ye {
        private final b a;
        int b;
        private Class<?> c;

        a(b bVar) {
            this.a = bVar;
        }

        @Override // defpackage.ye
        public void a() {
            this.a.c(this);
        }

        /* access modifiers changed from: package-private */
        public void b(int i, Class<?> cls) {
            this.b = i;
            this.c = cls;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.b == aVar.b && this.c == aVar.c) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            int i = this.b * 31;
            Class<?> cls = this.c;
            return i + (cls != null ? cls.hashCode() : 0);
        }

        public String toString() {
            StringBuilder q = ic.q("Key{size=");
            q.append(this.b);
            q.append("array=");
            q.append(this.c);
            q.append('}');
            return q.toString();
        }
    }

    /* renamed from: ve$b */
    private static final class b extends pe<a> {
        b() {
        }

        /* Return type fixed from 'ye' to match base method */
        /* access modifiers changed from: protected */
        @Override // defpackage.pe
        public a a() {
            return new a(this);
        }

        /* access modifiers changed from: package-private */
        public a d(int i, Class<?> cls) {
            a aVar = (a) b();
            aVar.b(i, cls);
            return aVar;
        }
    }

    public ve(int i) {
        this.e = i;
    }

    private void f(int i, Class<?> cls) {
        NavigableMap<Integer, Integer> j = j(cls);
        Integer num = (Integer) j.get(Integer.valueOf(i));
        if (num == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + i + ", this: " + this);
        } else if (num.intValue() == 1) {
            j.remove(Integer.valueOf(i));
        } else {
            j.put(Integer.valueOf(i), Integer.valueOf(num.intValue() - 1));
        }
    }

    private void g(int i) {
        while (this.f > i) {
            Object c2 = this.a.c();
            Objects.requireNonNull(c2, "Argument must not be null");
            ne h = h(c2.getClass());
            this.f -= h.b(c2) * h.a();
            f(h.b(c2), c2.getClass());
            if (Log.isLoggable(h.getTag(), 2)) {
                h.getTag();
                h.b(c2);
            }
        }
    }

    private <T> ne<T> h(Class<T> cls) {
        se seVar = (ne<T>) this.d.get(cls);
        if (seVar == null) {
            if (cls.equals(int[].class)) {
                seVar = new ue();
            } else if (cls.equals(byte[].class)) {
                seVar = new se();
            } else {
                StringBuilder q = ic.q("No array pool found for: ");
                q.append(cls.getSimpleName());
                throw new IllegalArgumentException(q.toString());
            }
            this.d.put(cls, seVar);
        }
        return seVar;
    }

    private <T> T i(a aVar, Class<T> cls) {
        ne<T> h = h(cls);
        T t = (T) this.a.a(aVar);
        if (t != null) {
            this.f -= h.b(t) * h.a();
            f(h.b(t), cls);
        }
        if (t != null) {
            return t;
        }
        if (Log.isLoggable(h.getTag(), 2)) {
            h.getTag();
        }
        return h.newArray(aVar.b);
    }

    private NavigableMap<Integer, Integer> j(Class<?> cls) {
        NavigableMap<Integer, Integer> navigableMap = this.c.get(cls);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.c.put(cls, treeMap);
        return treeMap;
    }

    @Override // defpackage.oe
    public synchronized void a(int i) {
        if (i >= 40) {
            synchronized (this) {
                g(0);
            }
        } else if (i >= 20 || i == 15) {
            g(this.e / 2);
        }
    }

    @Override // defpackage.oe
    public synchronized void b() {
        g(0);
    }

    @Override // defpackage.oe
    public synchronized <T> T c(int i, Class<T> cls) {
        a aVar;
        aVar = (a) this.b.b();
        aVar.b(i, cls);
        return (T) i(aVar, cls);
    }

    @Override // defpackage.oe
    public synchronized <T> void d(T t) {
        Class<?> cls = t.getClass();
        ne<T> h = h(cls);
        int b2 = h.b(t);
        int a2 = h.a() * b2;
        int i = 1;
        if (a2 <= this.e / 2) {
            a d2 = this.b.d(b2, cls);
            this.a.b(d2, t);
            NavigableMap<Integer, Integer> j = j(cls);
            Integer num = (Integer) j.get(Integer.valueOf(d2.b));
            Integer valueOf = Integer.valueOf(d2.b);
            if (num != null) {
                i = 1 + num.intValue();
            }
            j.put(valueOf, Integer.valueOf(i));
            this.f += a2;
            g(this.e);
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0023  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x002f  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x003a  */
    @Override // defpackage.oe
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized <T> T e(int r6, java.lang.Class<T> r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            java.util.NavigableMap r0 = r5.j(r7)     // Catch:{ all -> 0x004c }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r6)     // Catch:{ all -> 0x004c }
            java.lang.Object r0 = r0.ceilingKey(r1)     // Catch:{ all -> 0x004c }
            java.lang.Integer r0 = (java.lang.Integer) r0     // Catch:{ all -> 0x004c }
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x002c
            int r3 = r5.f     // Catch:{ all -> 0x004c }
            if (r3 == 0) goto L_0x0020
            int r4 = r5.e     // Catch:{ all -> 0x004c }
            int r4 = r4 / r3
            r3 = 2
            if (r4 < r3) goto L_0x001e
            goto L_0x0020
        L_0x001e:
            r3 = 0
            goto L_0x0021
        L_0x0020:
            r3 = 1
        L_0x0021:
            if (r3 != 0) goto L_0x002d
            int r3 = r0.intValue()     // Catch:{ all -> 0x004c }
            int r4 = r6 * 8
            if (r3 > r4) goto L_0x002c
            goto L_0x002d
        L_0x002c:
            r1 = 0
        L_0x002d:
            if (r1 == 0) goto L_0x003a
            ve$b r6 = r5.b     // Catch:{ all -> 0x004c }
            int r0 = r0.intValue()     // Catch:{ all -> 0x004c }
            ve$a r6 = r6.d(r0, r7)     // Catch:{ all -> 0x004c }
            goto L_0x0046
        L_0x003a:
            ve$b r0 = r5.b     // Catch:{ all -> 0x004c }
            ye r0 = r0.b()     // Catch:{ all -> 0x004c }
            ve$a r0 = (defpackage.ve.a) r0     // Catch:{ all -> 0x004c }
            r0.b(r6, r7)     // Catch:{ all -> 0x004c }
            r6 = r0
        L_0x0046:
            java.lang.Object r6 = r5.i(r6, r7)     // Catch:{ all -> 0x004c }
            monitor-exit(r5)
            return r6
        L_0x004c:
            r6 = move-exception
            monitor-exit(r5)
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ve.e(int, java.lang.Class):java.lang.Object");
    }
}
