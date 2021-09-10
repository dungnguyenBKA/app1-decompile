package defpackage;

/* renamed from: m2  reason: default package */
public class m2<T> extends l2<T> {
    private final Object c = new Object();

    public m2(int i) {
        super(i);
    }

    @Override // defpackage.l2, defpackage.k2
    public boolean a(T t) {
        boolean a;
        synchronized (this.c) {
            a = super.a(t);
        }
        return a;
    }

    @Override // defpackage.l2, defpackage.k2
    public T b() {
        T t;
        synchronized (this.c) {
            t = (T) super.b();
        }
        return t;
    }
}
