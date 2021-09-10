package defpackage;

import java.io.Serializable;

/* renamed from: eg0  reason: default package */
public final class eg0<T> implements uf0<T>, Serializable {
    private fg0<? extends T> b;
    private Object c = cg0.a;

    public eg0(fg0<? extends T> fg0) {
        gg0.e(fg0, "initializer");
        this.b = fg0;
    }

    @Override // defpackage.uf0
    public T getValue() {
        if (this.c == cg0.a) {
            fg0<? extends T> fg0 = this.b;
            gg0.c(fg0);
            this.c = fg0.a();
            this.b = null;
        }
        return (T) this.c;
    }

    public String toString() {
        return this.c != cg0.a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
