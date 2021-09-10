package androidx.room;

public abstract class b<T> extends j {
    public b(g gVar) {
        super(gVar);
    }

    /* access modifiers changed from: protected */
    public abstract void d(l4 l4Var, T t);

    public final void e(T t) {
        l4 a = a();
        try {
            d(a, t);
            a.d0();
        } finally {
            c(a);
        }
    }
}
