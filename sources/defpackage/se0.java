package defpackage;

/* renamed from: se0  reason: default package */
public class se0<T> extends re0<T> {
    protected final wd0<? super T> b;
    protected T c;

    public se0(wd0<? super T> wd0) {
        this.b = wd0;
    }

    public final void clear() {
        lazySet(32);
        this.c = null;
    }

    @Override // defpackage.be0
    public void e() {
        set(4);
        this.c = null;
    }

    public final T g() {
        if (get() != 16) {
            return null;
        }
        T t = this.c;
        this.c = null;
        lazySet(32);
        return t;
    }

    @Override // defpackage.pe0
    public final int h(int i) {
        if ((i & 2) == 0) {
            return 0;
        }
        lazySet(8);
        return 2;
    }

    public final void i(T t) {
        int i = get();
        if ((i & 54) == 0) {
            wd0<? super T> wd0 = this.b;
            if (i == 8) {
                this.c = t;
                lazySet(16);
                wd0.c(null);
            } else {
                lazySet(2);
                wd0.c(t);
            }
            if (get() != 4) {
                wd0.a();
            }
        }
    }

    public final boolean isEmpty() {
        return get() != 16;
    }
}
