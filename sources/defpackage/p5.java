package defpackage;

import android.content.Context;
import androidx.work.h;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* renamed from: p5  reason: default package */
public abstract class p5<T> {
    private static final String f = h.f("ConstraintTracker");
    protected final m6 a;
    protected final Context b;
    private final Object c = new Object();
    private final Set<a5<T>> d = new LinkedHashSet();
    T e;

    /* access modifiers changed from: package-private */
    /* renamed from: p5$a */
    public class a implements Runnable {
        final /* synthetic */ List b;

        a(List list) {
            this.b = list;
        }

        public void run() {
            for (a5 a5Var : this.b) {
                a5Var.a(p5.this.e);
            }
        }
    }

    p5(Context context, m6 m6Var) {
        this.b = context.getApplicationContext();
        this.a = m6Var;
    }

    public void a(a5<T> a5Var) {
        synchronized (this.c) {
            if (this.d.add(a5Var)) {
                if (this.d.size() == 1) {
                    this.e = b();
                    h.c().a(f, String.format("%s: initial state = %s", getClass().getSimpleName(), this.e), new Throwable[0]);
                    e();
                }
                ((g5) a5Var).a(this.e);
            }
        }
    }

    public abstract T b();

    public void c(a5<T> a5Var) {
        synchronized (this.c) {
            if (this.d.remove(a5Var) && this.d.isEmpty()) {
                f();
            }
        }
    }

    public void d(T t) {
        synchronized (this.c) {
            T t2 = this.e;
            if (t2 != t) {
                if (t2 == null || !t2.equals(t)) {
                    this.e = t;
                    ((n6) this.a).c().execute(new a(new ArrayList(this.d)));
                }
            }
        }
    }

    public abstract void e();

    public abstract void f();
}
