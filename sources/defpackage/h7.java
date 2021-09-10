package defpackage;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import com.airbnb.lottie.g;
import com.airbnb.lottie.l;

/* renamed from: h7  reason: default package */
public class h7 extends z6 {
    private final String o;
    private final boolean p;
    private final b0<LinearGradient> q = new b0<>(10);
    private final b0<RadialGradient> r = new b0<>(10);
    private final RectF s = new RectF();
    private final m9 t;
    private final int u;
    private final s7<j9, j9> v;
    private final s7<PointF, PointF> w;
    private final s7<PointF, PointF> x;
    private h8 y;

    public h7(g gVar, z9 z9Var, l9 l9Var) {
        super(gVar, z9Var, l9Var.b().a(), l9Var.g().a(), l9Var.i(), l9Var.k(), l9Var.m(), l9Var.h(), l9Var.c());
        this.o = l9Var.j();
        this.t = l9Var.f();
        this.p = l9Var.n();
        this.u = (int) (gVar.l().d() / 32.0f);
        s7<j9, j9> a = l9Var.e().a();
        this.v = a;
        a.a(this);
        z9Var.i(a);
        s7<PointF, PointF> a2 = l9Var.l().a();
        this.w = a2;
        a2.a(this);
        z9Var.i(a2);
        s7<PointF, PointF> a3 = l9Var.d().a();
        this.x = a3;
        a3.a(this);
        z9Var.i(a3);
    }

    private int[] e(int[] iArr) {
        h8 h8Var = this.y;
        if (h8Var != null) {
            Integer[] numArr = (Integer[]) h8Var.g();
            int i = 0;
            if (iArr.length == numArr.length) {
                while (i < iArr.length) {
                    iArr[i] = numArr[i].intValue();
                    i++;
                }
            } else {
                iArr = new int[numArr.length];
                while (i < numArr.length) {
                    iArr[i] = numArr[i].intValue();
                    i++;
                }
            }
        }
        return iArr;
    }

    private int h() {
        int round = Math.round(this.w.f() * ((float) this.u));
        int round2 = Math.round(this.x.f() * ((float) this.u));
        int round3 = Math.round(this.v.f() * ((float) this.u));
        int i = round != 0 ? 527 * round : 17;
        if (round2 != 0) {
            i = i * 31 * round2;
        }
        return round3 != 0 ? i * 31 * round3 : i;
    }

    /* JADX DEBUG: Multi-variable search result rejected for r3v9, resolved type: b0<android.graphics.RadialGradient> */
    /* JADX DEBUG: Multi-variable search result rejected for r3v14, resolved type: b0<android.graphics.LinearGradient> */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.d7, defpackage.z6
    public void f(Canvas canvas, Matrix matrix, int i) {
        RadialGradient radialGradient;
        if (!this.p) {
            d(this.s, matrix, false);
            if (this.t == m9.LINEAR) {
                long h = (long) h();
                radialGradient = this.q.g(h);
                if (radialGradient == null) {
                    PointF g = this.w.g();
                    PointF g2 = this.x.g();
                    j9 g3 = this.v.g();
                    radialGradient = new LinearGradient(g.x, g.y, g2.x, g2.y, e(g3.a()), g3.b(), Shader.TileMode.CLAMP);
                    this.q.k(h, radialGradient);
                }
            } else {
                long h2 = (long) h();
                radialGradient = this.r.g(h2);
                if (radialGradient == null) {
                    PointF g4 = this.w.g();
                    PointF g5 = this.x.g();
                    j9 g6 = this.v.g();
                    int[] e = e(g6.a());
                    float[] b = g6.b();
                    float f = g4.x;
                    float f2 = g4.y;
                    radialGradient = new RadialGradient(f, f2, (float) Math.hypot((double) (g5.x - f), (double) (g5.y - f2)), e, b, Shader.TileMode.CLAMP);
                    this.r.k(h2, radialGradient);
                }
            }
            radialGradient.setLocalMatrix(matrix);
            this.i.setShader(radialGradient);
            super.f(canvas, matrix, i);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: java.lang.Integer[] */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.p8, defpackage.z6
    public <T> void g(T t2, gc<T> gcVar) {
        super.g(t2, gcVar);
        if (t2 == l.D) {
            h8 h8Var = this.y;
            if (h8Var != null) {
                this.f.o(h8Var);
            }
            if (gcVar == null) {
                this.y = null;
                return;
            }
            h8 h8Var2 = new h8(gcVar, null);
            this.y = h8Var2;
            h8Var2.a(this);
            this.f.i(this.y);
        }
    }

    @Override // defpackage.b7
    public String getName() {
        return this.o;
    }
}
