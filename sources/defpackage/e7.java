package defpackage;

import android.graphics.Path;
import android.graphics.PointF;
import com.airbnb.lottie.g;
import com.airbnb.lottie.l;
import defpackage.s7;
import defpackage.x9;
import java.util.List;

/* renamed from: e7  reason: default package */
public class e7 implements l7, s7.b, j7 {
    private final Path a = new Path();
    private final String b;
    private final g c;
    private final s7<?, PointF> d;
    private final s7<?, PointF> e;
    private final h9 f;
    private a7 g = new a7();
    private boolean h;

    public e7(g gVar, z9 z9Var, h9 h9Var) {
        this.b = h9Var.b();
        this.c = gVar;
        s7<PointF, PointF> a2 = h9Var.d().a();
        this.d = a2;
        s7<PointF, PointF> a3 = h9Var.c().a();
        this.e = a3;
        this.f = h9Var;
        z9Var.i(a2);
        z9Var.i(a3);
        a2.a(this);
        a3.a(this);
    }

    @Override // defpackage.s7.b
    public void a() {
        this.h = false;
        this.c.invalidateSelf();
    }

    @Override // defpackage.b7
    public void b(List<b7> list, List<b7> list2) {
        for (int i = 0; i < list.size(); i++) {
            b7 b7Var = list.get(i);
            if (b7Var instanceof r7) {
                r7 r7Var = (r7) b7Var;
                if (r7Var.i() == x9.a.SIMULTANEOUSLY) {
                    this.g.a(r7Var);
                    r7Var.c(this);
                }
            }
        }
    }

    @Override // defpackage.p8
    public void c(o8 o8Var, int i, List<o8> list, o8 o8Var2) {
        cc.g(o8Var, i, list, o8Var2, this);
    }

    @Override // defpackage.p8
    public <T> void g(T t, gc<T> gcVar) {
        if (t == l.g) {
            this.d.l(gcVar);
        } else if (t == l.j) {
            this.e.l(gcVar);
        }
    }

    @Override // defpackage.b7
    public String getName() {
        return this.b;
    }

    @Override // defpackage.l7
    public Path getPath() {
        if (this.h) {
            return this.a;
        }
        this.a.reset();
        if (this.f.e()) {
            this.h = true;
            return this.a;
        }
        PointF g2 = this.d.g();
        float f2 = g2.x / 2.0f;
        float f3 = g2.y / 2.0f;
        float f4 = f2 * 0.55228f;
        float f5 = 0.55228f * f3;
        this.a.reset();
        if (this.f.f()) {
            float f6 = -f3;
            this.a.moveTo(0.0f, f6);
            float f7 = 0.0f - f4;
            float f8 = -f2;
            float f9 = 0.0f - f5;
            this.a.cubicTo(f7, f6, f8, f9, f8, 0.0f);
            float f10 = f5 + 0.0f;
            this.a.cubicTo(f8, f10, f7, f3, 0.0f, f3);
            float f11 = f4 + 0.0f;
            this.a.cubicTo(f11, f3, f2, f10, f2, 0.0f);
            this.a.cubicTo(f2, f9, f11, f6, 0.0f, f6);
        } else {
            float f12 = -f3;
            this.a.moveTo(0.0f, f12);
            float f13 = f4 + 0.0f;
            float f14 = 0.0f - f5;
            this.a.cubicTo(f13, f12, f2, f14, f2, 0.0f);
            float f15 = f5 + 0.0f;
            this.a.cubicTo(f2, f15, f13, f3, 0.0f, f3);
            float f16 = 0.0f - f4;
            float f17 = -f2;
            this.a.cubicTo(f16, f3, f17, f15, f17, 0.0f);
            this.a.cubicTo(f17, f14, f16, f12, 0.0f, f12);
        }
        PointF g3 = this.e.g();
        this.a.offset(g3.x, g3.y);
        this.a.close();
        this.g.b(this.a);
        this.h = true;
        return this.a;
    }
}
