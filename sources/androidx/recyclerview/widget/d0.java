package androidx.recyclerview.widget;

import androidx.recyclerview.widget.RecyclerView;

/* access modifiers changed from: package-private */
public class d0 {
    final e0<RecyclerView.b0, a> a = new e0<>();
    final b0<RecyclerView.b0> b = new b0<>(10);

    /* access modifiers changed from: package-private */
    public static class a {
        static k2<a> d = new l2(20);
        int a;
        RecyclerView.l.c b;
        RecyclerView.l.c c;

        private a() {
        }

        static a a() {
            a b2 = d.b();
            return b2 == null ? new a() : b2;
        }

        static void b(a aVar) {
            aVar.a = 0;
            aVar.b = null;
            aVar.c = null;
            d.a(aVar);
        }
    }

    interface b {
    }

    d0() {
    }

    private RecyclerView.l.c e(RecyclerView.b0 b0Var, int i) {
        a l;
        RecyclerView.l.c cVar;
        int e = this.a.e(b0Var);
        if (e >= 0 && (l = this.a.l(e)) != null) {
            int i2 = l.a;
            if ((i2 & i) != 0) {
                int i3 = (i ^ -1) & i2;
                l.a = i3;
                if (i == 4) {
                    cVar = l.b;
                } else if (i == 8) {
                    cVar = l.c;
                } else {
                    throw new IllegalArgumentException("Must provide flag PRE or POST");
                }
                if ((i3 & 12) == 0) {
                    this.a.j(e);
                    a.b(l);
                }
                return cVar;
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public void a(RecyclerView.b0 b0Var) {
        a orDefault = this.a.getOrDefault(b0Var, null);
        if (orDefault == null) {
            orDefault = a.a();
            this.a.put(b0Var, orDefault);
        }
        orDefault.a |= 1;
    }

    /* access modifiers changed from: package-private */
    public void b(RecyclerView.b0 b0Var, RecyclerView.l.c cVar) {
        a orDefault = this.a.getOrDefault(b0Var, null);
        if (orDefault == null) {
            orDefault = a.a();
            this.a.put(b0Var, orDefault);
        }
        orDefault.c = cVar;
        orDefault.a |= 8;
    }

    /* access modifiers changed from: package-private */
    public void c(RecyclerView.b0 b0Var, RecyclerView.l.c cVar) {
        a orDefault = this.a.getOrDefault(b0Var, null);
        if (orDefault == null) {
            orDefault = a.a();
            this.a.put(b0Var, orDefault);
        }
        orDefault.b = cVar;
        orDefault.a |= 4;
    }

    /* access modifiers changed from: package-private */
    public boolean d(RecyclerView.b0 b0Var) {
        a orDefault = this.a.getOrDefault(b0Var, null);
        if (orDefault == null || (orDefault.a & 1) == 0) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public RecyclerView.l.c f(RecyclerView.b0 b0Var) {
        return e(b0Var, 8);
    }

    /* access modifiers changed from: package-private */
    public RecyclerView.l.c g(RecyclerView.b0 b0Var) {
        return e(b0Var, 4);
    }

    /* access modifiers changed from: package-private */
    public void h(RecyclerView.b0 b0Var) {
        a orDefault = this.a.getOrDefault(b0Var, null);
        if (orDefault != null) {
            orDefault.a &= -2;
        }
    }

    /* access modifiers changed from: package-private */
    public void i(RecyclerView.b0 b0Var) {
        int m = this.b.m() - 1;
        while (true) {
            if (m < 0) {
                break;
            } else if (b0Var == this.b.n(m)) {
                this.b.l(m);
                break;
            } else {
                m--;
            }
        }
        a remove = this.a.remove(b0Var);
        if (remove != null) {
            a.b(remove);
        }
    }
}
