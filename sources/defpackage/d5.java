package defpackage;

import android.content.Context;
import androidx.work.h;
import defpackage.g5;
import java.util.ArrayList;
import java.util.List;

/* renamed from: d5  reason: default package */
public class d5 implements g5.a {
    private static final String d = h.f("WorkConstraintsTracker");
    private final c5 a;
    private final g5<?>[] b;
    private final Object c = new Object();

    public d5(Context context, m6 m6Var, c5 c5Var) {
        Context applicationContext = context.getApplicationContext();
        this.a = c5Var;
        this.b = new g5[]{new e5(applicationContext, m6Var), new f5(applicationContext, m6Var), new l5(applicationContext, m6Var), new h5(applicationContext, m6Var), new k5(applicationContext, m6Var), new j5(applicationContext, m6Var), new i5(applicationContext, m6Var)};
    }

    public boolean a(String str) {
        synchronized (this.c) {
            g5<?>[] g5VarArr = this.b;
            for (g5<?> g5Var : g5VarArr) {
                if (g5Var.d(str)) {
                    h.c().a(d, String.format("Work %s constrained by %s", str, g5Var.getClass().getSimpleName()), new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }

    public void b(List<String> list) {
        synchronized (this.c) {
            ArrayList arrayList = new ArrayList();
            for (String str : list) {
                if (a(str)) {
                    h.c().a(d, String.format("Constraints met for %s", str), new Throwable[0]);
                    arrayList.add(str);
                }
            }
            c5 c5Var = this.a;
            if (c5Var != null) {
                c5Var.d(arrayList);
            }
        }
    }

    public void c(List<String> list) {
        synchronized (this.c) {
            c5 c5Var = this.a;
            if (c5Var != null) {
                c5Var.b(list);
            }
        }
    }

    public void d(List<c6> list) {
        synchronized (this.c) {
            for (g5<?> g5Var : this.b) {
                g5Var.g(null);
            }
            for (g5<?> g5Var2 : this.b) {
                g5Var2.e(list);
            }
            for (g5<?> g5Var3 : this.b) {
                g5Var3.g(this);
            }
        }
    }

    public void e() {
        synchronized (this.c) {
            for (g5<?> g5Var : this.b) {
                g5Var.f();
            }
        }
    }
}
