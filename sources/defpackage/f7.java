package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import com.airbnb.lottie.b;
import com.airbnb.lottie.g;
import com.airbnb.lottie.l;
import defpackage.s7;
import java.util.ArrayList;
import java.util.List;

/* renamed from: f7  reason: default package */
public class f7 implements d7, s7.b, j7 {
    private final Path a;
    private final Paint b = new y6(1);
    private final z9 c;
    private final String d;
    private final boolean e;
    private final List<l7> f = new ArrayList();
    private final s7<Integer, Integer> g;
    private final s7<Integer, Integer> h;
    private s7<ColorFilter, ColorFilter> i;
    private final g j;

    public f7(g gVar, z9 z9Var, t9 t9Var) {
        Path path = new Path();
        this.a = path;
        this.c = z9Var;
        this.d = t9Var.d();
        this.e = t9Var.f();
        this.j = gVar;
        if (t9Var.b() == null || t9Var.e() == null) {
            this.g = null;
            this.h = null;
            return;
        }
        path.setFillType(t9Var.c());
        s7<Integer, Integer> a2 = t9Var.b().a();
        this.g = a2;
        a2.a(this);
        z9Var.i(a2);
        s7<Integer, Integer> a3 = t9Var.e().a();
        this.h = a3;
        a3.a(this);
        z9Var.i(a3);
    }

    @Override // defpackage.s7.b
    public void a() {
        this.j.invalidateSelf();
    }

    @Override // defpackage.b7
    public void b(List<b7> list, List<b7> list2) {
        for (int i2 = 0; i2 < list2.size(); i2++) {
            b7 b7Var = list2.get(i2);
            if (b7Var instanceof l7) {
                this.f.add((l7) b7Var);
            }
        }
    }

    @Override // defpackage.p8
    public void c(o8 o8Var, int i2, List<o8> list, o8 o8Var2) {
        cc.g(o8Var, i2, list, o8Var2, this);
    }

    @Override // defpackage.d7
    public void d(RectF rectF, Matrix matrix, boolean z) {
        this.a.reset();
        for (int i2 = 0; i2 < this.f.size(); i2++) {
            this.a.addPath(this.f.get(i2).getPath(), matrix);
        }
        this.a.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // defpackage.d7
    public void f(Canvas canvas, Matrix matrix, int i2) {
        if (!this.e) {
            this.b.setColor(((t7) this.g).m());
            this.b.setAlpha(cc.c((int) ((((((float) i2) / 255.0f) * ((float) this.h.g().intValue())) / 100.0f) * 255.0f), 0, 255));
            s7<ColorFilter, ColorFilter> s7Var = this.i;
            if (s7Var != null) {
                this.b.setColorFilter(s7Var.g());
            }
            this.a.reset();
            for (int i3 = 0; i3 < this.f.size(); i3++) {
                this.a.addPath(this.f.get(i3).getPath(), matrix);
            }
            canvas.drawPath(this.a, this.b);
            b.a("FillContent#draw");
        }
    }

    @Override // defpackage.p8
    public <T> void g(T t, gc<T> gcVar) {
        if (t == l.a) {
            this.g.l(gcVar);
        } else if (t == l.d) {
            this.h.l(gcVar);
        } else if (t == l.C) {
            s7<ColorFilter, ColorFilter> s7Var = this.i;
            if (s7Var != null) {
                this.c.o(s7Var);
            }
            if (gcVar == null) {
                this.i = null;
                return;
            }
            h8 h8Var = new h8(gcVar, null);
            this.i = h8Var;
            h8Var.a(this);
            this.c.i(this.i);
        }
    }

    @Override // defpackage.b7
    public String getName() {
        return this.d;
    }
}
