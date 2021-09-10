package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import com.airbnb.lottie.b;
import com.airbnb.lottie.g;
import defpackage.ca;
import defpackage.s7;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* renamed from: z9  reason: default package */
public abstract class z9 implements d7, s7.b, p8 {
    private final Path a = new Path();
    private final Matrix b = new Matrix();
    private final Paint c;
    private final Paint d;
    private final Paint e;
    private final Paint f;
    private final Paint g;
    private final RectF h;
    private final RectF i;
    private final RectF j;
    private final RectF k;
    private final String l;
    final Matrix m;
    final g n;
    final ca o;
    private y7 p;
    private u7 q;
    private z9 r;
    private z9 s;
    private List<z9> t;
    private final List<s7<?, ?>> u;
    final g8 v;
    private boolean w;

    z9(g gVar, ca caVar) {
        boolean z = true;
        this.c = new y6(1);
        this.d = new y6(1, PorterDuff.Mode.DST_IN);
        this.e = new y6(1, PorterDuff.Mode.DST_OUT);
        y6 y6Var = new y6(1);
        this.f = y6Var;
        this.g = new y6(PorterDuff.Mode.CLEAR);
        this.h = new RectF();
        this.i = new RectF();
        this.j = new RectF();
        this.k = new RectF();
        this.m = new Matrix();
        this.u = new ArrayList();
        this.w = true;
        this.n = gVar;
        this.o = caVar;
        this.l = ic.l(new StringBuilder(), caVar.g(), "#draw");
        if (caVar.f() == ca.b.INVERT) {
            y6Var.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        } else {
            y6Var.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
        }
        e9 u2 = caVar.u();
        Objects.requireNonNull(u2);
        g8 g8Var = new g8(u2);
        this.v = g8Var;
        g8Var.b(this);
        if (caVar.e() != null && !caVar.e().isEmpty()) {
            y7 y7Var = new y7(caVar.e());
            this.p = y7Var;
            for (s7<s9, Path> s7Var : y7Var.a()) {
                s7Var.a(this);
            }
            for (s7<Integer, Integer> s7Var2 : this.p.c()) {
                i(s7Var2);
                s7Var2.a(this);
            }
        }
        if (!this.o.c().isEmpty()) {
            u7 u7Var = new u7(this.o.c());
            this.q = u7Var;
            u7Var.j();
            this.q.a(new y9(this));
            t(((Float) this.q.g()).floatValue() != 1.0f ? false : z);
            i(this.q);
            return;
        }
        t(true);
    }

    static void h(z9 z9Var, boolean z) {
        if (z != z9Var.w) {
            z9Var.w = z;
            z9Var.n.invalidateSelf();
        }
    }

    private void j() {
        if (this.t == null) {
            if (this.s == null) {
                this.t = Collections.emptyList();
                return;
            }
            this.t = new ArrayList();
            for (z9 z9Var = this.s; z9Var != null; z9Var = z9Var.s) {
                this.t.add(z9Var);
            }
        }
    }

    private void k(Canvas canvas) {
        RectF rectF = this.h;
        canvas.drawRect(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f, this.g);
        b.a("Layer#clearLayer");
    }

    private void t(boolean z) {
        if (z != this.w) {
            this.w = z;
            this.n.invalidateSelf();
        }
    }

    @Override // defpackage.s7.b
    public void a() {
        this.n.invalidateSelf();
    }

    @Override // defpackage.b7
    public void b(List<b7> list, List<b7> list2) {
    }

    @Override // defpackage.p8
    public void c(o8 o8Var, int i2, List<o8> list, o8 o8Var2) {
        if (o8Var.f(getName(), i2)) {
            if (!"__container".equals(getName())) {
                o8Var2 = o8Var2.a(getName());
                if (o8Var.c(getName(), i2)) {
                    list.add(o8Var2.h(this));
                }
            }
            if (o8Var.g(getName(), i2)) {
                p(o8Var, o8Var.e(getName(), i2) + i2, list, o8Var2);
            }
        }
    }

    @Override // defpackage.d7
    public void d(RectF rectF, Matrix matrix, boolean z) {
        this.h.set(0.0f, 0.0f, 0.0f, 0.0f);
        j();
        this.m.set(matrix);
        if (z) {
            List<z9> list = this.t;
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    this.m.preConcat(this.t.get(size).v.f());
                }
            } else {
                z9 z9Var = this.s;
                if (z9Var != null) {
                    this.m.preConcat(z9Var.v.f());
                }
            }
        }
        this.m.preConcat(this.v.f());
    }

    /* JADX WARNING: Removed duplicated region for block: B:37:0x0152  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x015a  */
    @Override // defpackage.d7
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void f(android.graphics.Canvas r18, android.graphics.Matrix r19, int r20) {
        /*
        // Method dump skipped, instructions count: 1085
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.z9.f(android.graphics.Canvas, android.graphics.Matrix, int):void");
    }

    @Override // defpackage.p8
    public <T> void g(T t2, gc<T> gcVar) {
        this.v.c(t2, gcVar);
    }

    @Override // defpackage.b7
    public String getName() {
        return this.o.g();
    }

    public void i(s7<?, ?> s7Var) {
        if (s7Var != null) {
            this.u.add(s7Var);
        }
    }

    /* access modifiers changed from: package-private */
    public abstract void l(Canvas canvas, Matrix matrix, int i2);

    /* access modifiers changed from: package-private */
    public boolean m() {
        y7 y7Var = this.p;
        return y7Var != null && !y7Var.a().isEmpty();
    }

    /* access modifiers changed from: package-private */
    public boolean n() {
        return this.r != null;
    }

    public void o(s7<?, ?> s7Var) {
        this.u.remove(s7Var);
    }

    /* access modifiers changed from: package-private */
    public void p(o8 o8Var, int i2, List<o8> list, o8 o8Var2) {
    }

    /* access modifiers changed from: package-private */
    public void q(z9 z9Var) {
        this.r = z9Var;
    }

    /* access modifiers changed from: package-private */
    public void r(z9 z9Var) {
        this.s = z9Var;
    }

    /* access modifiers changed from: package-private */
    public void s(float f2) {
        this.v.j(f2);
        if (this.p != null) {
            for (int i2 = 0; i2 < this.p.a().size(); i2++) {
                this.p.a().get(i2).k(f2);
            }
        }
        if (this.o.t() != 0.0f) {
            f2 /= this.o.t();
        }
        u7 u7Var = this.q;
        if (u7Var != null) {
            u7Var.k(f2 / this.o.t());
        }
        z9 z9Var = this.r;
        if (z9Var != null) {
            this.r.s(z9Var.o.t() * f2);
        }
        for (int i3 = 0; i3 < this.u.size(); i3++) {
            this.u.get(i3).k(f2);
        }
    }
}
