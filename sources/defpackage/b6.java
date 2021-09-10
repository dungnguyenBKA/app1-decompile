package defpackage;

import androidx.room.b;
import androidx.room.g;

/* renamed from: b6  reason: default package */
public final class b6 implements a6 {
    private final g a;
    private final b b;

    /* renamed from: b6$a */
    class a extends b<z5> {
        a(b6 b6Var, g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "INSERT OR IGNORE INTO `WorkName`(`name`,`work_spec_id`) VALUES (?,?)";
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [l4, java.lang.Object] */
        @Override // androidx.room.b
        public void d(l4 l4Var, z5 z5Var) {
            z5 z5Var2 = z5Var;
            String str = z5Var2.a;
            if (str == null) {
                l4Var.N(1);
            } else {
                l4Var.g(1, str);
            }
            String str2 = z5Var2.b;
            if (str2 == null) {
                l4Var.N(2);
            } else {
                l4Var.g(2, str2);
            }
        }
    }

    public b6(g gVar) {
        this.a = gVar;
        this.b = new a(this, gVar);
    }

    public void a(z5 z5Var) {
        this.a.b();
        this.a.c();
        try {
            this.b.e(z5Var);
            this.a.o();
        } finally {
            this.a.g();
        }
    }
}
