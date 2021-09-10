package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import com.airbnb.lottie.g;
import com.airbnb.lottie.l;

/* renamed from: q7  reason: default package */
public class q7 extends z6 {
    private final z9 o;
    private final String p;
    private final boolean q;
    private final s7<Integer, Integer> r;
    private s7<ColorFilter, ColorFilter> s;

    public q7(g gVar, z9 z9Var, w9 w9Var) {
        super(gVar, z9Var, w9Var.b().a(), w9Var.e().a(), w9Var.g(), w9Var.i(), w9Var.j(), w9Var.f(), w9Var.d());
        this.o = z9Var;
        this.p = w9Var.h();
        this.q = w9Var.k();
        s7<Integer, Integer> a = w9Var.c().a();
        this.r = a;
        a.a(this);
        z9Var.i(a);
    }

    @Override // defpackage.d7, defpackage.z6
    public void f(Canvas canvas, Matrix matrix, int i) {
        if (!this.q) {
            this.i.setColor(((t7) this.r).m());
            s7<ColorFilter, ColorFilter> s7Var = this.s;
            if (s7Var != null) {
                this.i.setColorFilter(s7Var.g());
            }
            super.f(canvas, matrix, i);
        }
    }

    @Override // defpackage.p8, defpackage.z6
    public <T> void g(T t, gc<T> gcVar) {
        super.g(t, gcVar);
        if (t == l.b) {
            this.r.l(gcVar);
        } else if (t == l.C) {
            s7<ColorFilter, ColorFilter> s7Var = this.s;
            if (s7Var != null) {
                this.o.o(s7Var);
            }
            if (gcVar == null) {
                this.s = null;
                return;
            }
            h8 h8Var = new h8(gcVar, null);
            this.s = h8Var;
            h8Var.a(this);
            this.o.i(this.r);
        }
    }

    @Override // defpackage.b7
    public String getName() {
        return this.p;
    }
}
