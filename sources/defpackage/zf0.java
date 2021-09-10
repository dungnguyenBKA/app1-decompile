package defpackage;

import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* access modifiers changed from: package-private */
/* renamed from: zf0  reason: default package */
public final class zf0<T> implements uf0<T>, Serializable {
    private static final AtomicReferenceFieldUpdater<zf0<?>, Object> d = AtomicReferenceFieldUpdater.newUpdater(zf0.class, Object.class, "c");
    private volatile fg0<? extends T> b;
    private volatile Object c = cg0.a;

    public zf0(fg0<? extends T> fg0) {
        gg0.e(fg0, "initializer");
        this.b = fg0;
    }

    @Override // defpackage.uf0
    public T getValue() {
        T t = (T) this.c;
        cg0 cg0 = cg0.a;
        if (t != cg0) {
            return t;
        }
        fg0<? extends T> fg0 = this.b;
        if (fg0 != null) {
            T t2 = (T) fg0.a();
            if (d.compareAndSet(this, cg0, t2)) {
                this.b = null;
                return t2;
            }
        }
        return (T) this.c;
    }

    public String toString() {
        return this.c != cg0.a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
