package com.google.firebase.components;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* access modifiers changed from: package-private */
public class p {

    /* access modifiers changed from: private */
    public static class b {
        private final d<?> a;
        private final Set<b> b = new HashSet();
        private final Set<b> c = new HashSet();

        b(d<?> dVar) {
            this.a = dVar;
        }

        /* access modifiers changed from: package-private */
        public void a(b bVar) {
            this.b.add(bVar);
        }

        /* access modifiers changed from: package-private */
        public void b(b bVar) {
            this.c.add(bVar);
        }

        /* access modifiers changed from: package-private */
        public d<?> c() {
            return this.a;
        }

        /* access modifiers changed from: package-private */
        public Set<b> d() {
            return this.b;
        }

        /* access modifiers changed from: package-private */
        public boolean e() {
            return this.b.isEmpty();
        }

        /* access modifiers changed from: package-private */
        public boolean f() {
            return this.c.isEmpty();
        }

        /* access modifiers changed from: package-private */
        public void g(b bVar) {
            this.c.remove(bVar);
        }
    }

    /* access modifiers changed from: private */
    public static class c {
        private final Class<?> a;
        private final boolean b;

        c(Class cls, boolean z, a aVar) {
            this.a = cls;
            this.b = z;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            if (!cVar.a.equals(this.a) || cVar.b != this.b) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return ((this.a.hashCode() ^ 1000003) * 1000003) ^ Boolean.valueOf(this.b).hashCode();
        }
    }

    static void a(List<d<?>> list) {
        Set<b> set;
        HashMap hashMap = new HashMap(list.size());
        Iterator<d<?>> it = list.iterator();
        while (true) {
            int i = 0;
            if (it.hasNext()) {
                d<?> next = it.next();
                b bVar = new b(next);
                Iterator<Class<? super Object>> it2 = next.d().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        Class<? super Object> next2 = it2.next();
                        c cVar = new c(next2, !next.j(), null);
                        if (!hashMap.containsKey(cVar)) {
                            hashMap.put(cVar, new HashSet());
                        }
                        Set set2 = (Set) hashMap.get(cVar);
                        if (set2.isEmpty() || cVar.b) {
                            set2.add(bVar);
                        } else {
                            throw new IllegalArgumentException(String.format("Multiple components provide %s.", next2));
                        }
                    }
                }
            } else {
                for (Set<b> set3 : hashMap.values()) {
                    for (b bVar2 : set3) {
                        for (q qVar : bVar2.c().b()) {
                            if (qVar.c() && (set = (Set) hashMap.get(new c(qVar.a(), qVar.e(), null))) != null) {
                                for (b bVar3 : set) {
                                    bVar2.a(bVar3);
                                    bVar3.b(bVar2);
                                }
                            }
                        }
                    }
                }
                HashSet hashSet = new HashSet();
                for (Set set4 : hashMap.values()) {
                    hashSet.addAll(set4);
                }
                HashSet hashSet2 = new HashSet();
                Iterator it3 = hashSet.iterator();
                while (it3.hasNext()) {
                    b bVar4 = (b) it3.next();
                    if (bVar4.f()) {
                        hashSet2.add(bVar4);
                    }
                }
                while (!hashSet2.isEmpty()) {
                    b bVar5 = (b) hashSet2.iterator().next();
                    hashSet2.remove(bVar5);
                    i++;
                    for (b bVar6 : bVar5.d()) {
                        bVar6.g(bVar5);
                        if (bVar6.f()) {
                            hashSet2.add(bVar6);
                        }
                    }
                }
                if (i != list.size()) {
                    ArrayList arrayList = new ArrayList();
                    Iterator it4 = hashSet.iterator();
                    while (it4.hasNext()) {
                        b bVar7 = (b) it4.next();
                        if (!bVar7.f() && !bVar7.e()) {
                            arrayList.add(bVar7.c());
                        }
                    }
                    throw new r(arrayList);
                }
                return;
            }
        }
    }
}
