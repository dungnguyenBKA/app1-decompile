package defpackage;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import com.airbnb.lottie.g;
import com.airbnb.lottie.l;
import defpackage.s7;
import defpackage.x9;
import java.util.List;

/* renamed from: n7  reason: default package */
public class n7 implements s7.b, j7, l7 {
    private final Path a = new Path();
    private final RectF b = new RectF();
    private final String c;
    private final boolean d;
    private final g e;
    private final s7<?, PointF> f;
    private final s7<?, PointF> g;
    private final s7<?, Float> h;
    private a7 i = new a7();
    private boolean j;

    public n7(g gVar, z9 z9Var, q9 q9Var) {
        this.c = q9Var.c();
        this.d = q9Var.f();
        this.e = gVar;
        s7<PointF, PointF> a2 = q9Var.d().a();
        this.f = a2;
        s7<PointF, PointF> a3 = q9Var.e().a();
        this.g = a3;
        s7<Float, Float> a4 = q9Var.b().a();
        this.h = a4;
        z9Var.i(a2);
        z9Var.i(a3);
        z9Var.i(a4);
        a2.a(this);
        a3.a(this);
        a4.a(this);
    }

    @Override // defpackage.s7.b
    public void a() {
        this.j = false;
        this.e.invalidateSelf();
    }

    @Override // defpackage.b7
    public void b(List<b7> list, List<b7> list2) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            b7 b7Var = list.get(i2);
            if (b7Var instanceof r7) {
                r7 r7Var = (r7) b7Var;
                if (r7Var.i() == x9.a.SIMULTANEOUSLY) {
                    this.i.a(r7Var);
                    r7Var.c(this);
                }
            }
        }
    }

    @Override // defpackage.p8
    public void c(o8 o8Var, int i2, List<o8> list, o8 o8Var2) {
        cc.g(o8Var, i2, list, o8Var2, this);
    }

    @Override // defpackage.p8
    public <T> void g(T t, gc<T> gcVar) {
        if (t == l.h) {
            this.g.l(gcVar);
        } else if (t == l.j) {
            this.f.l(gcVar);
        } else if (t == l.i) {
            this.h.l(gcVar);
        }
    }

    @Override // defpackage.b7
    public String getName() {
        return this.c;
    }

    @Override // defpackage.l7
    public Path getPath() {
        float f2;
        if (this.j) {
            return this.a;
        }
        this.a.reset();
        if (this.d) {
            this.j = true;
            return this.a;
        }
        PointF g2 = this.g.g();
        float f3 = g2.x / 2.0f;
        float f4 = g2.y / 2.0f;
        s7<?, Float> s7Var = this.h;
        if (s7Var == null) {
            f2 = 0.0f;
        } else {
            f2 = ((u7) s7Var).m();
        }
        float min = Math.min(f3, f4);
        if (f2 > min) {
            f2 = min;
        }
        PointF g3 = this.f.g();
        this.a.moveTo(g3.x + f3, (g3.y - f4) + f2);
        this.a.lineTo(g3.x + f3, (g3.y + f4) - f2);
        if (f2 > 0.0f) {
            RectF rectF = this.b;
            float f5 = g3.x;
            float f6 = f2 * 2.0f;
            float f7 = g3.y;
            rectF.set((f5 + f3) - f6, (f7 + f4) - f6, f5 + f3, f7 + f4);
            this.a.arcTo(this.b, 0.0f, 90.0f, false);
        }
        this.a.lineTo((g3.x - f3) + f2, g3.y + f4);
        if (f2 > 0.0f) {
            RectF rectF2 = this.b;
            float f8 = g3.x;
            float f9 = g3.y;
            float f10 = f2 * 2.0f;
            rectF2.set(f8 - f3, (f9 + f4) - f10, (f8 - f3) + f10, f9 + f4);
            this.a.arcTo(this.b, 90.0f, 90.0f, false);
        }
        this.a.lineTo(g3.x - f3, (g3.y - f4) + f2);
        if (f2 > 0.0f) {
            RectF rectF3 = this.b;
            float f11 = g3.x;
            float f12 = g3.y;
            float f13 = f2 * 2.0f;
            rectF3.set(f11 - f3, f12 - f4, (f11 - f3) + f13, (f12 - f4) + f13);
            this.a.arcTo(this.b, 180.0f, 90.0f, false);
        }
        this.a.lineTo((g3.x + f3) - f2, g3.y - f4);
        if (f2 > 0.0f) {
            RectF rectF4 = this.b;
            float f14 = g3.x;
            float f15 = f2 * 2.0f;
            float f16 = g3.y;
            rectF4.set((f14 + f3) - f15, f16 - f4, f14 + f3, (f16 - f4) + f15);
            this.a.arcTo(this.b, 270.0f, 90.0f, false);
        }
        this.a.close();
        this.i.b(this.a);
        this.j = true;
        return this.a;
    }
}
