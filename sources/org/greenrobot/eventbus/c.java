package org.greenrobot.eventbus;

import android.os.Looper;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

public class c {
    private static final d o = new d();
    private static final Map<Class<?>, List<Class<?>>> p = new HashMap();
    private final Map<Class<?>, CopyOnWriteArrayList<n>> a = new HashMap();
    private final Map<Object, List<Class<?>>> b = new HashMap();
    private final Map<Class<?>, Object> c = new ConcurrentHashMap();
    private final ThreadLocal<b> d = new a(this);
    private final f e = new f(this, Looper.getMainLooper(), 10);
    private final b f = new b(this);
    private final a g = new a(this);
    private final m h;
    private final ExecutorService i;
    private final boolean j;
    private final boolean k;
    private final boolean l;
    private final boolean m;
    private final boolean n;

    class a extends ThreadLocal<b> {
        a(c cVar) {
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        public b initialValue() {
            return new b();
        }
    }

    /* access modifiers changed from: package-private */
    public static final class b {
        final List<Object> a = new ArrayList();
        boolean b;
        boolean c;
        Object d;

        b() {
        }
    }

    public c() {
        d dVar = o;
        Objects.requireNonNull(dVar);
        this.h = new m(null, false, false);
        this.j = true;
        this.k = true;
        this.l = true;
        this.m = true;
        this.n = true;
        this.i = dVar.a;
    }

    static void a(List<Class<?>> list, Class<?>[] clsArr) {
        for (Class<?> cls : clsArr) {
            if (!list.contains(cls)) {
                list.add(cls);
                a(list, cls.getInterfaces());
            }
        }
    }

    private void b(n nVar, Object obj) {
        if (obj != null) {
            j(nVar, obj, Looper.getMainLooper() == Looper.myLooper());
        }
    }

    private void h(Object obj, b bVar) {
        boolean z;
        ArrayList arrayList;
        Class<?> cls = obj.getClass();
        if (this.n) {
            Map<Class<?>, List<Class<?>>> map = p;
            synchronized (map) {
                List<Class<?>> list = map.get(cls);
                arrayList = list;
                if (list == null) {
                    ArrayList arrayList2 = new ArrayList();
                    for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
                        arrayList2.add(cls2);
                        a(arrayList2, cls2.getInterfaces());
                    }
                    p.put(cls, arrayList2);
                    arrayList = arrayList2;
                }
            }
            int size = arrayList.size();
            z = false;
            for (int i2 = 0; i2 < size; i2++) {
                z |= i(obj, bVar, arrayList.get(i2));
            }
        } else {
            z = i(obj, bVar, cls);
        }
        if (!z) {
            if (this.k) {
                String str = "No subscribers registered for event " + cls;
            }
            if (!(!this.m || cls == g.class || cls == k.class)) {
                g(new g(this, obj));
            }
        }
    }

    private boolean i(Object obj, b bVar, Class<?> cls) {
        CopyOnWriteArrayList<n> copyOnWriteArrayList;
        synchronized (this) {
            copyOnWriteArrayList = this.a.get(cls);
        }
        if (copyOnWriteArrayList == null || copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        Iterator<n> it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            n next = it.next();
            bVar.d = obj;
            j(next, obj, bVar.c);
        }
        return true;
    }

    private void j(n nVar, Object obj, boolean z) {
        int ordinal = nVar.b.b.ordinal();
        if (ordinal == 0) {
            e(nVar, obj);
        } else if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal == 3) {
                    this.g.a(nVar, obj);
                    return;
                }
                StringBuilder q = ic.q("Unknown thread mode: ");
                q.append(nVar.b.b);
                throw new IllegalStateException(q.toString());
            } else if (z) {
                this.f.a(nVar, obj);
            } else {
                e(nVar, obj);
            }
        } else if (z) {
            e(nVar, obj);
        } else {
            this.e.a(nVar, obj);
        }
    }

    private void l(Object obj, l lVar) {
        Class<?> cls = lVar.c;
        n nVar = new n(obj, lVar);
        CopyOnWriteArrayList<n> copyOnWriteArrayList = this.a.get(cls);
        if (copyOnWriteArrayList == null) {
            copyOnWriteArrayList = new CopyOnWriteArrayList<>();
            this.a.put(cls, copyOnWriteArrayList);
        } else if (copyOnWriteArrayList.contains(nVar)) {
            StringBuilder q = ic.q("Subscriber ");
            q.append(obj.getClass());
            q.append(" already registered to event ");
            q.append(cls);
            throw new e(q.toString());
        }
        int size = copyOnWriteArrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 > size) {
                break;
            } else if (i2 == size || lVar.d > copyOnWriteArrayList.get(i2).b.d) {
                copyOnWriteArrayList.add(i2, nVar);
            } else {
                i2++;
            }
        }
        copyOnWriteArrayList.add(i2, nVar);
        List<Class<?>> list = this.b.get(obj);
        if (list == null) {
            list = new ArrayList<>();
            this.b.put(obj, list);
        }
        list.add(cls);
        if (!lVar.e) {
            return;
        }
        if (this.n) {
            for (Map.Entry<Class<?>, Object> entry : this.c.entrySet()) {
                if (cls.isAssignableFrom(entry.getKey())) {
                    b(nVar, entry.getValue());
                }
            }
            return;
        }
        b(nVar, this.c.get(cls));
    }

    /* access modifiers changed from: package-private */
    public ExecutorService c() {
        return this.i;
    }

    /* access modifiers changed from: package-private */
    public void d(h hVar) {
        Object obj = hVar.a;
        n nVar = hVar.b;
        h.b(hVar);
        Objects.requireNonNull(nVar);
        e(nVar, obj);
    }

    /* access modifiers changed from: package-private */
    public void e(n nVar, Object obj) {
        try {
            nVar.b.a.invoke(nVar.a, obj);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(obj instanceof k)) {
                if (this.j) {
                    StringBuilder q = ic.q("Could not dispatch event: ");
                    q.append(obj.getClass());
                    q.append(" to subscribing class ");
                    q.append(nVar.a.getClass());
                    Log.e("EventBus", q.toString(), cause);
                }
                if (this.l) {
                    g(new k(this, cause, obj, nVar.a));
                }
            } else if (this.j) {
                StringBuilder q2 = ic.q("SubscriberExceptionEvent subscriber ");
                q2.append(nVar.a.getClass());
                q2.append(" threw an exception");
                Log.e("EventBus", q2.toString(), cause);
                k kVar = (k) obj;
                StringBuilder q3 = ic.q("Initial event ");
                q3.append(kVar.b);
                q3.append(" caused exception in ");
                q3.append(kVar.c);
                Log.e("EventBus", q3.toString(), kVar.a);
            }
        } catch (IllegalAccessException e3) {
            throw new IllegalStateException("Unexpected exception", e3);
        }
    }

    public synchronized boolean f(Object obj) {
        return this.b.containsKey(obj);
    }

    public void g(Object obj) {
        b bVar = this.d.get();
        List<Object> list = bVar.a;
        list.add(obj);
        if (!bVar.b) {
            bVar.c = Looper.getMainLooper() == Looper.myLooper();
            bVar.b = true;
            while (!list.isEmpty()) {
                try {
                    h(list.remove(0), bVar);
                } finally {
                    bVar.b = false;
                    bVar.c = false;
                }
            }
        }
    }

    public void k(Object obj) {
        List<l> a2 = this.h.a(obj.getClass());
        synchronized (this) {
            for (l lVar : a2) {
                l(obj, lVar);
            }
        }
    }

    public String toString() {
        return "EventBus[indexCount=" + 0 + ", eventInheritance=" + this.n + "]";
    }
}
