package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import com.airbnb.lottie.b;
import com.airbnb.lottie.g;
import com.airbnb.lottie.l;
import defpackage.s7;
import java.util.ArrayList;
import java.util.List;

/* renamed from: g7  reason: default package */
public class g7 implements d7, s7.b, j7 {
    private final String a;
    private final boolean b;
    private final z9 c;
    private final b0<LinearGradient> d = new b0<>(10);
    private final b0<RadialGradient> e = new b0<>(10);
    private final Path f;
    private final Paint g;
    private final RectF h;
    private final List<l7> i;
    private final m9 j;
    private final s7<j9, j9> k;
    private final s7<Integer, Integer> l;
    private final s7<PointF, PointF> m;
    private final s7<PointF, PointF> n;
    private s7<ColorFilter, ColorFilter> o;
    private h8 p;
    private final g q;
    private final int r;

    public g7(g gVar, z9 z9Var, k9 k9Var) {
        Path path = new Path();
        this.f = path;
        this.g = new y6(1);
        this.h = new RectF();
        this.i = new ArrayList();
        this.c = z9Var;
        this.a = k9Var.f();
        this.b = k9Var.i();
        this.q = gVar;
        this.j = k9Var.e();
        path.setFillType(k9Var.c());
        this.r = (int) (gVar.l().d() / 32.0f);
        s7<j9, j9> a2 = k9Var.d().a();
        this.k = a2;
        a2.a(this);
        z9Var.i(a2);
        s7<Integer, Integer> a3 = k9Var.g().a();
        this.l = a3;
        a3.a(this);
        z9Var.i(a3);
        s7<PointF, PointF> a4 = k9Var.h().a();
        this.m = a4;
        a4.a(this);
        z9Var.i(a4);
        s7<PointF, PointF> a5 = k9Var.b().a();
        this.n = a5;
        a5.a(this);
        z9Var.i(a5);
    }

    private int[] e(int[] iArr) {
        h8 h8Var = this.p;
        if (h8Var != null) {
            Integer[] numArr = (Integer[]) h8Var.g();
            int i2 = 0;
            if (iArr.length == numArr.length) {
                while (i2 < iArr.length) {
                    iArr[i2] = numArr[i2].intValue();
                    i2++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i2 < numArr.length) {
                    iArr[i2] = numArr[i2].intValue();
                    i2++;
                }
            }
        }
        return iArr;
    }

    private int h() {
        int round = Math.round(this.m.f() * ((float) this.r));
        int round2 = Math.round(this.n.f() * ((float) this.r));
        int round3 = Math.round(this.k.f() * ((float) this.r));
        int i2 = round != 0 ? 527 * round : 17;
        if (round2 != 0) {
            i2 = i2 * 31 * round2;
        }
        return round3 != 0 ? i2 * 31 * round3 : i2;
    }

    @Override // defpackage.s7.b
    public void a() {
        this.q.invalidateSelf();
    }

    @Override // defpackage.b7
    public void b(List<b7> list, List<b7> list2) {
        for (int i2 = 0; i2 < list2.size(); i2++) {
            b7 b7Var = list2.get(i2);
            if (b7Var instanceof l7) {
                this.i.add((l7) b7Var);
            }
        }
    }

    @Override // defpackage.p8
    public void c(o8 o8Var, int i2, List<o8> list, o8 o8Var2) {
        cc.g(o8Var, i2, list, o8Var2, this);
    }

    @Override // defpackage.d7
    public void d(RectF rectF, Matrix matrix, boolean z) {
        this.f.reset();
        for (int i2 = 0; i2 < this.i.size(); i2++) {
            this.f.addPath(this.i.get(i2).getPath(), matrix);
        }
        this.f.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    /* JADX DEBUG: Multi-variable search result rejected for r4v19, resolved type: b0<android.graphics.RadialGradient> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.d7
    public void f(Canvas canvas, Matrix matrix, int i2) {
        RadialGradient radialGradient;
        if (!this.b) {
            this.f.reset();
            for (int i3 = 0; i3 < this.i.size(); i3++) {
                this.f.addPath(this.i.get(i3).getPath(), matrix);
            }
            this.f.computeBounds(this.h, false);
            if (this.j == m9.LINEAR) {
                long h2 = (long) h();
                radialGradient = this.d.g(h2);
                if (radialGradient == null) {
                    PointF g2 = this.m.g();
                    PointF g3 = this.n.g();
                    j9 g4 = this.k.g();
                    LinearGradient linearGradient = new LinearGradient(g2.x, g2.y, g3.x, g3.y, e(g4.a()), g4.b(), Shader.TileMode.CLAMP);
                    this.d.k(h2, linearGradient);
                    radialGradient = linearGradient;
                }
            } else {
                long h3 = (long) h();
                radialGradient = this.e.g(h3);
                if (radialGradient == null) {
                    PointF g5 = this.m.g();
                    PointF g6 = this.n.g();
                    j9 g7 = this.k.g();
                    int[] e2 = e(g7.a());
                    float[] b2 = g7.b();
                    float f2 = g5.x;
                    float f3 = g5.y;
                    float hypot = (float) Math.hypot((double) (g6.x - f2), (double) (g6.y - f3));
                    radialGradient = new RadialGradient(f2, f3, hypot <= 0.0f ? 0.001f : hypot, e2, b2, Shader.TileMode.CLAMP);
                    this.e.k(h3, radialGradient);
                }
            }
            radialGradient.setLocalMatrix(matrix);
            this.g.setShader(radialGradient);
            s7<ColorFilter, ColorFilter> s7Var = this.o;
            if (s7Var != null) {
                this.g.setColorFilter(s7Var.g());
            }
            this.g.setAlpha(cc.c((int) ((((((float) i2) / 255.0f) * ((float) this.l.g().intValue())) / 100.0f) * 255.0f), 0, 255));
            canvas.drawPath(this.f, this.g);
            b.a("GradientFillContent#draw");
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v2, resolved type: java.lang.Integer[] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.p8
    public <T> void g(T t, gc<T> gcVar) {
        if (t == l.d) {
            this.l.l(gcVar);
        } else if (t == l.C) {
            s7<ColorFilter, ColorFilter> s7Var = this.o;
            if (s7Var != null) {
                this.c.o(s7Var);
            }
            if (gcVar == null) {
                this.o = null;
                return;
            }
            h8 h8Var = new h8(gcVar, null);
            this.o = h8Var;
            h8Var.a(this);
            this.c.i(this.o);
        } else if (t == l.D) {
            h8 h8Var2 = this.p;
            if (h8Var2 != null) {
                this.c.o(h8Var2);
            }
            if (gcVar == null) {
                this.p = null;
                return;
            }
            h8 h8Var3 = new h8(gcVar, null);
            this.p = h8Var3;
            h8Var3.a(this);
            this.c.i(this.p);
        }
    }

    @Override // defpackage.b7
    public String getName() {
        return this.a;
    }
}
