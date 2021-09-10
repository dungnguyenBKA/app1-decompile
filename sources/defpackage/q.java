package defpackage;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: q  reason: default package */
public class q {
    final ArrayList<h3> a = new ArrayList<>();
    private long b = -1;
    private Interpolator c;
    i3 d;
    private boolean e;
    private final j3 f = new a();

    /* renamed from: q$a */
    class a extends j3 {
        private boolean a = false;
        private int b = 0;

        a() {
        }

        @Override // defpackage.i3
        public void b(View view) {
            int i = this.b + 1;
            this.b = i;
            if (i == q.this.a.size()) {
                i3 i3Var = q.this.d;
                if (i3Var != null) {
                    i3Var.b(null);
                }
                this.b = 0;
                this.a = false;
                q.this.b();
            }
        }

        @Override // defpackage.j3, defpackage.i3
        public void c(View view) {
            if (!this.a) {
                this.a = true;
                i3 i3Var = q.this.d;
                if (i3Var != null) {
                    i3Var.c(null);
                }
            }
        }
    }

    public void a() {
        if (this.e) {
            Iterator<h3> it = this.a.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
            this.e = false;
        }
    }

    /* access modifiers changed from: package-private */
    public void b() {
        this.e = false;
    }

    public q c(h3 h3Var) {
        if (!this.e) {
            this.a.add(h3Var);
        }
        return this;
    }

    public q d(h3 h3Var, h3 h3Var2) {
        this.a.add(h3Var);
        h3Var2.h(h3Var.c());
        this.a.add(h3Var2);
        return this;
    }

    public q e(long j) {
        if (!this.e) {
            this.b = j;
        }
        return this;
    }

    public q f(Interpolator interpolator) {
        if (!this.e) {
            this.c = interpolator;
        }
        return this;
    }

    public q g(i3 i3Var) {
        if (!this.e) {
            this.d = i3Var;
        }
        return this;
    }

    public void h() {
        if (!this.e) {
            Iterator<h3> it = this.a.iterator();
            while (it.hasNext()) {
                h3 next = it.next();
                long j = this.b;
                if (j >= 0) {
                    next.d(j);
                }
                Interpolator interpolator = this.c;
                if (interpolator != null) {
                    next.e(interpolator);
                }
                if (this.d != null) {
                    next.f(this.f);
                }
                next.j();
            }
            this.e = true;
        }
    }
}
