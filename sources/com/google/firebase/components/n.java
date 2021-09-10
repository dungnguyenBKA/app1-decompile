package com.google.firebase.components;

import android.util.Log;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

public class n extends a implements c40 {
    private static final d50<Set<Object>> g = m.a();
    public static final /* synthetic */ int h = 0;
    private final Map<d<?>, d50<?>> a;
    private final Map<Class<?>, d50<?>> b;
    private final Map<Class<?>, x<?>> c;
    private final List<d50<i>> d;
    private final u e;
    private final AtomicReference<Boolean> f;

    public static final class b {
        private final Executor a;
        private final List<d50<i>> b = new ArrayList();
        private final List<d<?>> c = new ArrayList();

        b(Executor executor) {
            this.a = executor;
        }

        public b a(d<?> dVar) {
            this.c.add(dVar);
            return this;
        }

        public b b(i iVar) {
            this.b.add(o.a(iVar));
            return this;
        }

        public b c(Collection<d50<i>> collection) {
            this.b.addAll(collection);
            return this;
        }

        public n d() {
            return new n(this.a, this.b, this.c);
        }
    }

    public static b d(Executor executor) {
        return new b(executor);
    }

    private void e(List<d<?>> list) {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<d50<i>> it = this.d.iterator();
            while (it.hasNext()) {
                try {
                    i iVar = it.next().get();
                    if (iVar != null) {
                        list.addAll(iVar.getComponents());
                        it.remove();
                    }
                } catch (v e2) {
                    it.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e2);
                }
            }
            if (this.a.isEmpty()) {
                p.a(list);
            } else {
                ArrayList arrayList2 = new ArrayList(this.a.keySet());
                arrayList2.addAll(list);
                p.a(arrayList2);
            }
            for (d<?> dVar : list) {
                this.a.put(dVar, new w(j.a(this, dVar)));
            }
            arrayList.addAll(i(list));
            arrayList.addAll(j());
            h();
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
        Boolean bool = this.f.get();
        if (bool != null) {
            f(this.a, bool.booleanValue());
        }
    }

    private void f(Map<d<?>, d50<?>> map, boolean z) {
        for (Map.Entry<d<?>, d50<?>> entry : map.entrySet()) {
            d<?> key = entry.getKey();
            d50<?> value = entry.getValue();
            if (key.h() || (key.i() && z)) {
                value.get();
            }
        }
        this.e.b();
    }

    private void h() {
        for (d<?> dVar : this.a.keySet()) {
            Iterator<q> it = dVar.b().iterator();
            while (true) {
                if (it.hasNext()) {
                    q next = it.next();
                    if (next.e() && !this.c.containsKey(next.a())) {
                        this.c.put(next.a(), x.b(Collections.emptySet()));
                    } else if (this.b.containsKey(next.a())) {
                        continue;
                    } else if (next.d()) {
                        throw new y(String.format("Unsatisfied dependency for component %s: %s", dVar, next.a()));
                    } else if (!next.e()) {
                        this.b.put(next.a(), b0.a());
                    }
                }
            }
        }
    }

    private List<Runnable> i(List<d<?>> list) {
        ArrayList arrayList = new ArrayList();
        for (d<?> dVar : list) {
            if (dVar.j()) {
                d50<?> d50 = this.a.get(dVar);
                for (Class<? super Object> cls : dVar.d()) {
                    if (!this.b.containsKey(cls)) {
                        this.b.put(cls, d50);
                    } else {
                        arrayList.add(k.a((b0) this.b.get(cls), d50));
                    }
                }
            }
        }
        return arrayList;
    }

    private List<Runnable> j() {
        ArrayList arrayList = new ArrayList();
        HashMap hashMap = new HashMap();
        for (Map.Entry<d<?>, d50<?>> entry : this.a.entrySet()) {
            d<?> key = entry.getKey();
            if (!key.j()) {
                d50<?> value = entry.getValue();
                for (Class<? super Object> cls : key.d()) {
                    if (!hashMap.containsKey(cls)) {
                        hashMap.put(cls, new HashSet());
                    }
                    ((Set) hashMap.get(cls)).add(value);
                }
            }
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            if (!this.c.containsKey(entry2.getKey())) {
                this.c.put((Class) entry2.getKey(), x.b((Collection) entry2.getValue()));
            } else {
                x<?> xVar = this.c.get(entry2.getKey());
                for (d50 d50 : (Set) entry2.getValue()) {
                    arrayList.add(l.a(xVar, d50));
                }
            }
        }
        return arrayList;
    }

    @Override // com.google.firebase.components.e
    public synchronized <T> d50<T> b(Class<T> cls) {
        Objects.requireNonNull(cls, "Null interface requested.");
        return (d50<T>) this.b.get(cls);
    }

    public void g(boolean z) {
        HashMap hashMap;
        if (this.f.compareAndSet(null, Boolean.valueOf(z))) {
            synchronized (this) {
                hashMap = new HashMap(this.a);
            }
            f(hashMap, z);
        }
    }

    public synchronized <T> d50<Set<T>> k(Class<T> cls) {
        x<?> xVar = this.c.get(cls);
        if (xVar != null) {
            return xVar;
        }
        return (d50<Set<T>>) g;
    }

    private n(Executor executor, Iterable<d50<i>> iterable, Collection<d<?>> collection) {
        this.a = new HashMap();
        this.b = new HashMap();
        this.c = new HashMap();
        this.f = new AtomicReference<>();
        u uVar = new u(executor);
        this.e = uVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(d.k(uVar, u.class, u40.class, t40.class));
        arrayList.add(d.k(this, c40.class, new Class[0]));
        for (d<?> dVar : collection) {
            if (dVar != null) {
                arrayList.add(dVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (d50<i> d50 : iterable) {
            arrayList2.add(d50);
        }
        this.d = arrayList2;
        e(arrayList);
    }
}
