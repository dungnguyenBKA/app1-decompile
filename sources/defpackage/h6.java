package defpackage;

import android.database.Cursor;
import androidx.room.b;
import androidx.room.g;
import androidx.room.i;
import java.util.ArrayList;
import java.util.List;

/* renamed from: h6  reason: default package */
public final class h6 implements g6 {
    private final g a;
    private final b b;

    /* renamed from: h6$a */
    class a extends b<f6> {
        a(h6 h6Var, g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "INSERT OR IGNORE INTO `WorkTag`(`tag`,`work_spec_id`) VALUES (?,?)";
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [l4, java.lang.Object] */
        @Override // androidx.room.b
        public void d(l4 l4Var, f6 f6Var) {
            f6 f6Var2 = f6Var;
            String str = f6Var2.a;
            if (str == null) {
                l4Var.N(1);
            } else {
                l4Var.g(1, str);
            }
            String str2 = f6Var2.b;
            if (str2 == null) {
                l4Var.N(2);
            } else {
                l4Var.g(2, str2);
            }
        }
    }

    public h6(g gVar) {
        this.a = gVar;
        this.b = new a(this, gVar);
    }

    public List<String> a(String str) {
        i L = i.L("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            L.N(1);
        } else {
            L.g(1, str);
        }
        this.a.b();
        Cursor a2 = e4.a(this.a, L, false);
        try {
            ArrayList arrayList = new ArrayList(a2.getCount());
            while (a2.moveToNext()) {
                arrayList.add(a2.getString(0));
            }
            return arrayList;
        } finally {
            a2.close();
            L.S();
        }
    }

    public void b(f6 f6Var) {
        this.a.b();
        this.a.c();
        try {
            this.b.e(f6Var);
            this.a.o();
        } finally {
            this.a.g();
        }
    }
}
