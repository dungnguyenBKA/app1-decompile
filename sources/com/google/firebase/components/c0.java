package com.google.firebase.components;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

final class c0 extends a {
    private final Set<Class<?>> a;
    private final Set<Class<?>> b;
    private final Set<Class<?>> c;
    private final Set<Class<?>> d;
    private final Set<Class<?>> e;
    private final e f;

    private static class a implements t40 {
        private final t40 a;

        public a(Set<Class<?>> set, t40 t40) {
            this.a = t40;
        }
    }

    c0(d<?> dVar, e eVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (q qVar : dVar.b()) {
            if (qVar.c()) {
                if (qVar.e()) {
                    hashSet4.add(qVar.a());
                } else {
                    hashSet.add(qVar.a());
                }
            } else if (qVar.b()) {
                hashSet3.add(qVar.a());
            } else if (qVar.e()) {
                hashSet5.add(qVar.a());
            } else {
                hashSet2.add(qVar.a());
            }
        }
        if (!dVar.e().isEmpty()) {
            hashSet.add(t40.class);
        }
        this.a = Collections.unmodifiableSet(hashSet);
        this.b = Collections.unmodifiableSet(hashSet2);
        Collections.unmodifiableSet(hashSet3);
        this.c = Collections.unmodifiableSet(hashSet4);
        this.d = Collections.unmodifiableSet(hashSet5);
        this.e = dVar.e();
        this.f = eVar;
    }

    @Override // com.google.firebase.components.e, com.google.firebase.components.a
    public <T> T a(Class<T> cls) {
        if (this.a.contains(cls)) {
            T t = (T) this.f.a(cls);
            return !cls.equals(t40.class) ? t : (T) new a(this.e, t);
        }
        throw new s(String.format("Attempting to request an undeclared dependency %s.", cls));
    }

    @Override // com.google.firebase.components.e
    public <T> d50<T> b(Class<T> cls) {
        if (this.b.contains(cls)) {
            return this.f.b(cls);
        }
        throw new s(String.format("Attempting to request an undeclared dependency Provider<%s>.", cls));
    }

    @Override // com.google.firebase.components.e, com.google.firebase.components.a
    public <T> Set<T> c(Class<T> cls) {
        if (this.c.contains(cls)) {
            return this.f.c(cls);
        }
        throw new s(String.format("Attempting to request an undeclared dependency Set<%s>.", cls));
    }
}
