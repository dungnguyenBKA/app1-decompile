package defpackage;

import android.database.Cursor;
import androidx.room.b;
import androidx.room.g;
import androidx.room.i;
import java.util.ArrayList;
import java.util.List;

/* renamed from: v5  reason: default package */
public final class v5 implements u5 {
    private final g a;
    private final b b;

    /* renamed from: v5$a */
    class a extends b<t5> {
        a(v5 v5Var, g gVar) {
            super(gVar);
        }

        @Override // androidx.room.j
        public String b() {
            return "INSERT OR IGNORE INTO `Dependency`(`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [l4, java.lang.Object] */
        @Override // androidx.room.b
        public void d(l4 l4Var, t5 t5Var) {
            t5 t5Var2 = t5Var;
            String str = t5Var2.a;
            if (str == null) {
                l4Var.N(1);
            } else {
                l4Var.g(1, str);
            }
            String str2 = t5Var2.b;
            if (str2 == null) {
                l4Var.N(2);
            } else {
                l4Var.g(2, str2);
            }
        }
    }

    public v5(g gVar) {
        this.a = gVar;
        this.b = new a(this, gVar);
    }

    public List<String> a(String str) {
        i L = i.L("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
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

    public boolean b(String str) {
        boolean z = true;
        i L = i.L("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            L.N(1);
        } else {
            L.g(1, str);
        }
        this.a.b();
        boolean z2 = false;
        Cursor a2 = e4.a(this.a, L, false);
        try {
            if (a2.moveToFirst()) {
                if (a2.getInt(0) == 0) {
                    z = false;
                }
                z2 = z;
            }
            return z2;
        } finally {
            a2.close();
            L.S();
        }
    }

    public boolean c(String str) {
        boolean z = true;
        i L = i.L("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            L.N(1);
        } else {
            L.g(1, str);
        }
        this.a.b();
        boolean z2 = false;
        Cursor a2 = e4.a(this.a, L, false);
        try {
            if (a2.moveToFirst()) {
                if (a2.getInt(0) == 0) {
                    z = false;
                }
                z2 = z;
            }
            return z2;
        } finally {
            a2.close();
            L.S();
        }
    }

    public void d(t5 t5Var) {
        this.a.b();
        this.a.c();
        try {
            this.b.e(t5Var);
            this.a.o();
        } finally {
            this.a.g();
        }
    }
}
