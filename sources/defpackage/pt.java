package defpackage;

import javax.inject.Provider;

/* renamed from: pt  reason: default package */
public final class pt<T> implements Provider<T> {
    private static final Object c = new Object();
    private volatile Provider<T> a;
    private volatile Object b = c;

    private pt(Provider<T> provider) {
        this.a = provider;
    }

    public static <P extends Provider<T>, T> Provider<T> a(P p) {
        if (p instanceof pt) {
            return p;
        }
        return new pt(p);
    }

    public static Object b(Object obj, Object obj2) {
        if (!(obj != c) || obj == obj2) {
            return obj2;
        }
        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj + " & " + obj2 + ". This is likely due to a circular dependency.");
    }

    @Override // javax.inject.Provider
    public T get() {
        T t = (T) this.b;
        Object obj = c;
        if (t == obj) {
            synchronized (this) {
                t = this.b;
                if (t == obj) {
                    t = this.a.get();
                    b(this.b, t);
                    this.b = t;
                    this.a = null;
                }
            }
        }
        return t;
    }
}
