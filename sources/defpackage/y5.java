package defpackage;

import android.database.Cursor;
import androidx.room.g;
import androidx.room.i;
import androidx.room.j;

/* renamed from: y5  reason: default package */
public final class y5 implements x5 {
    private final g a;
    private final androidx.room.b b;
    private final j c;

    /* renamed from: y5$a */
    class a extends androidx.room.b<w5> {
        a(y5 y5Var, g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "INSERT OR REPLACE INTO `SystemIdInfo`(`work_spec_id`,`system_id`) VALUES (?,?)";
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [l4, java.lang.Object] */
        @Override // androidx.room.b
        public void d(l4 l4Var, w5 w5Var) {
            w5 w5Var2 = w5Var;
            String str = w5Var2.a;
            if (str == null) {
                l4Var.N(1);
            } else {
                l4Var.g(1, str);
            }
            l4Var.z(2, (long) w5Var2.b);
        }
    }

    /* renamed from: y5$b */
    class b extends j {
        b(y5 y5Var, g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    public y5(g gVar) {
        this.a = gVar;
        this.b = new a(this, gVar);
        this.c = new b(this, gVar);
    }

    public w5 a(String str) {
        i L = i.L("SELECT * FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            L.N(1);
        } else {
            L.g(1, str);
        }
        this.a.b();
        Cursor a2 = e4.a(this.a, L, false);
        try {
            return a2.moveToFirst() ? new w5(a2.getString(androidx.core.app.b.I(a2, "work_spec_id")), a2.getInt(androidx.core.app.b.I(a2, "system_id"))) : null;
        } finally {
            a2.close();
            L.S();
        }
    }

    public void b(w5 w5Var) {
        this.a.b();
        this.a.c();
        try {
            this.b.e(w5Var);
            this.a.o();
        } finally {
            this.a.g();
        }
    }

    public void c(String str) {
        this.a.b();
        l4 a2 = this.c.a();
        if (str == null) {
            a2.N(1);
        } else {
            a2.g(1, str);
        }
        this.a.c();
        try {
            a2.k();
            this.a.o();
        } finally {
            this.a.g();
            this.c.c(a2);
        }
    }
}
