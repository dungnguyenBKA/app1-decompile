package defpackage;

import java.util.Objects;

/* renamed from: q80  reason: default package */
public final class q80<T> extends z60<T> {
    private final w60<T> a;
    private final o60<T> b;
    final j60 c;
    private final z80<T> d;
    private final q80<T>.b e = new b(this, null);
    private z60<T> f;

    /* renamed from: q80$b */
    private final class b implements v60, n60 {
        b(q80 q80, a aVar) {
        }
    }

    public q80(w60<T> w60, o60<T> o60, j60 j60, z80<T> z80, a70 a70) {
        this.a = w60;
        this.b = o60;
        this.c = j60;
        this.d = z80;
    }

    @Override // defpackage.z60
    public T b(a90 a90) {
        if (this.b == null) {
            z60<T> z60 = this.f;
            if (z60 == null) {
                z60 = this.c.f(null, this.d);
                this.f = z60;
            }
            return z60.b(a90);
        }
        p60 b2 = x70.b(a90);
        Objects.requireNonNull(b2);
        if (b2 instanceof r60) {
            return null;
        }
        return this.b.a(b2, this.d.getType(), this.e);
    }

    @Override // defpackage.z60
    public void c(c90 c90, T t) {
        w60<T> w60 = this.a;
        if (w60 == null) {
            z60<T> z60 = this.f;
            if (z60 == null) {
                z60 = this.c.f(null, this.d);
                this.f = z60;
            }
            z60.c(c90, t);
        } else if (t == null) {
            c90.n0();
        } else {
            s80.X.c(c90, w60.a(t, this.d.getType(), this.e));
        }
    }
}
