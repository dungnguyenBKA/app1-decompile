package defpackage;

import java.io.Serializable;

/* renamed from: ag0  reason: default package */
final class ag0<T> implements uf0<T>, Serializable {
    private fg0<? extends T> b;
    private volatile Object c = cg0.a;
    private final Object d = this;

    public ag0(fg0 fg0, Object obj, int i) {
        int i2 = i & 2;
        gg0.e(fg0, "initializer");
        this.b = fg0;
    }

    @Override // defpackage.uf0
    public T getValue() {
        T t;
        T t2 = (T) this.c;
        cg0 cg0 = cg0.a;
        if (t2 != cg0) {
            return t2;
        }
        synchronized (this.d) {
            t = (T) this.c;
            if (t == cg0) {
                fg0<? extends T> fg0 = this.b;
                gg0.c(fg0);
                t = (T) fg0.a();
                this.c = t;
                this.b = null;
            }
        }
        return t;
    }

    public String toString() {
        return this.c != cg0.a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
