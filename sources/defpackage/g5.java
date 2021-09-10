package defpackage;

import java.util.ArrayList;
import java.util.List;

/* renamed from: g5  reason: default package */
public abstract class g5<T> implements a5<T> {
    private final List<String> a = new ArrayList();
    private T b;
    private p5<T> c;
    private a d;

    /* renamed from: g5$a */
    public interface a {
    }

    g5(p5<T> p5Var) {
        this.c = p5Var;
    }

    private void h() {
        if (!this.a.isEmpty() && this.d != null) {
            T t = this.b;
            if (t == null || c(t)) {
                ((d5) this.d).c(this.a);
                return;
            }
            ((d5) this.d).b(this.a);
        }
    }

    @Override // defpackage.a5
    public void a(T t) {
        this.b = t;
        h();
    }

    /* access modifiers changed from: package-private */
    public abstract boolean b(c6 c6Var);

    /* access modifiers changed from: package-private */
    public abstract boolean c(T t);

    public boolean d(String str) {
        T t = this.b;
        return t != null && c(t) && this.a.contains(str);
    }

    public void e(List<c6> list) {
        this.a.clear();
        for (c6 c6Var : list) {
            if (b(c6Var)) {
                this.a.add(c6Var.a);
            }
        }
        if (this.a.isEmpty()) {
            this.c.c(this);
        } else {
            this.c.a(this);
        }
        h();
    }

    public void f() {
        if (!this.a.isEmpty()) {
            this.a.clear();
            this.c.c(this);
        }
    }

    public void g(a aVar) {
        if (this.d != aVar) {
            this.d = aVar;
            h();
        }
    }
}
