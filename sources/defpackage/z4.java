package defpackage;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.h;
import androidx.work.impl.a;
import androidx.work.impl.d;
import androidx.work.impl.i;
import androidx.work.m;
import java.util.ArrayList;
import java.util.List;

/* renamed from: z4  reason: default package */
public class z4 implements d, c5, a {
    private static final String g = h.f("GreedyScheduler");
    private i b;
    private d5 c;
    private List<c6> d = new ArrayList();
    private boolean e;
    private final Object f;

    public z4(Context context, m6 m6Var, i iVar) {
        this.b = iVar;
        this.c = new d5(context, m6Var, this);
        this.f = new Object();
    }

    @Override // androidx.work.impl.d
    public void a(c6... c6VarArr) {
        if (!this.e) {
            this.b.g().a(this);
            this.e = true;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (c6 c6Var : c6VarArr) {
            if (c6Var.b == m.ENQUEUED && !c6Var.d() && c6Var.g == 0 && !c6Var.c()) {
                if (!c6Var.b()) {
                    h.c().a(g, String.format("Starting work for %s", c6Var.a), new Throwable[0]);
                    this.b.o(c6Var.a);
                } else if (Build.VERSION.SDK_INT < 24 || !c6Var.j.e()) {
                    arrayList.add(c6Var);
                    arrayList2.add(c6Var.a);
                }
            }
        }
        synchronized (this.f) {
            if (!arrayList.isEmpty()) {
                h.c().a(g, String.format("Starting tracking for [%s]", TextUtils.join(",", arrayList2)), new Throwable[0]);
                this.d.addAll(arrayList);
                this.c.d(this.d);
            }
        }
    }

    @Override // defpackage.c5
    public void b(List<String> list) {
        for (String str : list) {
            h.c().a(g, String.format("Constraints not met: Cancelling work ID %s", str), new Throwable[0]);
            this.b.q(str);
        }
    }

    @Override // androidx.work.impl.a
    public void c(String str, boolean z) {
        synchronized (this.f) {
            int size = this.d.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                } else if (this.d.get(i).a.equals(str)) {
                    h.c().a(g, String.format("Stopping tracking for %s", str), new Throwable[0]);
                    this.d.remove(i);
                    this.c.d(this.d);
                    break;
                } else {
                    i++;
                }
            }
        }
    }

    @Override // androidx.work.impl.d
    public void cancel(String str) {
        if (!this.e) {
            this.b.g().a(this);
            this.e = true;
        }
        h.c().a(g, String.format("Cancelling work ID %s", str), new Throwable[0]);
        this.b.q(str);
    }

    @Override // defpackage.c5
    public void d(List<String> list) {
        for (String str : list) {
            h.c().a(g, String.format("Constraints met: Scheduling work ID %s", str), new Throwable[0]);
            this.b.o(str);
        }
    }
}
