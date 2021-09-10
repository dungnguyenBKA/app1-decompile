package com.google.firebase.components;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

public final class d<T> {
    private final Set<Class<? super T>> a;
    private final Set<q> b;
    private final int c;
    private final int d;
    private final h<T> e;
    private final Set<Class<?>> f;

    public static class b<T> {
        private final Set<Class<? super T>> a;
        private final Set<q> b = new HashSet();
        private int c;
        private int d;
        private h<T> e;
        private Set<Class<?>> f;

        b(Class cls, Class[] clsArr, a aVar) {
            HashSet hashSet = new HashSet();
            this.a = hashSet;
            this.c = 0;
            this.d = 0;
            this.f = new HashSet();
            Objects.requireNonNull(cls, "Null interface");
            hashSet.add(cls);
            for (Class cls2 : clsArr) {
                Objects.requireNonNull(cls2, "Null interface");
            }
            Collections.addAll(this.a, clsArr);
        }

        static b a(b bVar) {
            bVar.d = 1;
            return bVar;
        }

        public b<T> b(q qVar) {
            if (!this.a.contains(qVar.a())) {
                this.b.add(qVar);
                return this;
            }
            throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
        }

        public d<T> c() {
            if (this.e != null) {
                return new d<>(new HashSet(this.a), new HashSet(this.b), this.c, this.d, this.e, this.f, null);
            }
            throw new IllegalStateException("Missing required property: factory.");
        }

        public b<T> d() {
            if (this.c == 0) {
                this.c = 2;
                return this;
            }
            throw new IllegalStateException("Instantiation type has already been set.");
        }

        public b<T> e(h<T> hVar) {
            this.e = hVar;
            return this;
        }
    }

    d(Set set, Set set2, int i, int i2, h hVar, Set set3, a aVar) {
        this.a = Collections.unmodifiableSet(set);
        this.b = Collections.unmodifiableSet(set2);
        this.c = i;
        this.d = i2;
        this.e = hVar;
        this.f = Collections.unmodifiableSet(set3);
    }

    public static <T> b<T> a(Class<T> cls) {
        return new b<>(cls, new Class[0], null);
    }

    public static <T> d<T> f(T t, Class<T> cls) {
        b a2 = a(cls);
        b.a(a2);
        a2.e(c.b(t));
        return a2.c();
    }

    public static <T> b<T> g(Class<T> cls) {
        b<T> a2 = a(cls);
        b.a(a2);
        return a2;
    }

    @SafeVarargs
    public static <T> d<T> k(T t, Class<T> cls, Class<? super T>... clsArr) {
        b bVar = new b(cls, clsArr, null);
        bVar.e(b.b(t));
        return bVar.c();
    }

    public Set<q> b() {
        return this.b;
    }

    public h<T> c() {
        return this.e;
    }

    public Set<Class<? super T>> d() {
        return this.a;
    }

    public Set<Class<?>> e() {
        return this.f;
    }

    public boolean h() {
        return this.c == 1;
    }

    public boolean i() {
        return this.c == 2;
    }

    public boolean j() {
        return this.d == 0;
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.a.toArray()) + ">{" + this.c + ", type=" + this.d + ", deps=" + Arrays.toString(this.b.toArray()) + "}";
    }
}
