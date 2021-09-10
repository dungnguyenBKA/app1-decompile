package defpackage;

import defpackage.q0;
import java.util.ArrayList;

/* renamed from: a1  reason: default package */
public class a1 {
    private int a;
    private int b;
    private int c;
    private int d;
    private ArrayList<a> e = new ArrayList<>();

    /* renamed from: a1$a */
    static class a {
        private q0 a;
        private q0 b;
        private int c;
        private q0.a d;
        private int e;

        public a(q0 q0Var) {
            this.a = q0Var;
            this.b = q0Var.d;
            this.c = q0Var.c();
            this.d = q0Var.f();
            this.e = q0Var.b();
        }

        public void a(r0 r0Var) {
            r0Var.g(this.a.c).a(this.b, this.c, -1, this.d, this.e, false);
        }

        public void b(r0 r0Var) {
            q0 g = r0Var.g(this.a.c);
            this.a = g;
            if (g != null) {
                this.b = g.d;
                this.c = g.c();
                this.d = this.a.f();
                this.e = this.a.b();
                return;
            }
            this.b = null;
            this.c = 0;
            this.d = q0.a.STRONG;
            this.e = 0;
        }
    }

    public a1(r0 r0Var) {
        this.a = r0Var.I;
        this.b = r0Var.J;
        this.c = r0Var.w();
        this.d = r0Var.o();
        ArrayList<q0> arrayList = r0Var.B;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            this.e.add(new a(arrayList.get(i)));
        }
    }

    public void a(r0 r0Var) {
        r0Var.I = this.a;
        r0Var.J = this.b;
        r0Var.h0(this.c);
        r0Var.N(this.d);
        int size = this.e.size();
        for (int i = 0; i < size; i++) {
            this.e.get(i).a(r0Var);
        }
    }

    public void b(r0 r0Var) {
        this.a = r0Var.I;
        this.b = r0Var.J;
        this.c = r0Var.w();
        this.d = r0Var.o();
        int size = this.e.size();
        for (int i = 0; i < size; i++) {
            this.e.get(i).b(r0Var);
        }
    }
}
