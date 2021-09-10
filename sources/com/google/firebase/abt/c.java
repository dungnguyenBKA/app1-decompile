package com.google.firebase.abt;

import defpackage.vy;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class c {
    private final vy a;
    private final String b;
    private Integer c = null;

    public c(vy vyVar, String str) {
        this.a = vyVar;
        this.b = str;
    }

    private List<vy.c> a() {
        return this.a.getConditionalUserProperties(this.b, "");
    }

    private void b(Collection<vy.c> collection) {
        for (vy.c cVar : collection) {
            this.a.clearConditionalUserProperty(cVar.b, null, null);
        }
    }

    public void c(List<Map<String, String>> list) {
        if (this.a != null) {
            ArrayList arrayList = new ArrayList();
            for (Map<String, String> map : list) {
                arrayList.add(b.a(map));
            }
            if (!arrayList.isEmpty()) {
                HashSet hashSet = new HashSet();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    hashSet.add(((b) it.next()).b());
                }
                List<vy.c> a2 = a();
                HashSet hashSet2 = new HashSet();
                for (vy.c cVar : a2) {
                    hashSet2.add(cVar.b);
                }
                ArrayList arrayList2 = new ArrayList();
                for (vy.c cVar2 : a2) {
                    if (!hashSet.contains(cVar2.b)) {
                        arrayList2.add(cVar2);
                    }
                }
                b(arrayList2);
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    b bVar = (b) it2.next();
                    if (!hashSet2.contains(bVar.b())) {
                        arrayList3.add(bVar);
                    }
                }
                ArrayDeque arrayDeque = new ArrayDeque(a());
                if (this.c == null) {
                    this.c = Integer.valueOf(this.a.getMaxUserProperties(this.b));
                }
                int intValue = this.c.intValue();
                Iterator it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    b bVar2 = (b) it3.next();
                    while (arrayDeque.size() >= intValue) {
                        this.a.clearConditionalUserProperty(((vy.c) arrayDeque.pollFirst()).b, null, null);
                    }
                    vy.c c2 = bVar2.c(this.b);
                    this.a.b(c2);
                    arrayDeque.offer(c2);
                }
            } else if (this.a != null) {
                b(a());
            } else {
                throw new a("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
            }
        } else {
            throw new a("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
        }
    }
}
