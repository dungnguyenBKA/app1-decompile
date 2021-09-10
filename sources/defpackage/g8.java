package defpackage;

import android.graphics.Matrix;
import android.graphics.PointF;
import com.airbnb.lottie.l;
import defpackage.s7;
import java.util.Collections;

/* renamed from: g8  reason: default package */
public class g8 {
    private final Matrix a = new Matrix();
    private final Matrix b;
    private final Matrix c;
    private final Matrix d;
    private final float[] e;
    private s7<PointF, PointF> f;
    private s7<?, PointF> g;
    private s7<hc, hc> h;
    private s7<Float, Float> i;
    private s7<Integer, Integer> j;
    private u7 k;
    private u7 l;
    private s7<?, Float> m;
    private s7<?, Float> n;

    public g8(e9 e9Var) {
        this.f = e9Var.b() == null ? null : e9Var.b().a();
        this.g = e9Var.e() == null ? null : e9Var.e().a();
        this.h = e9Var.g() == null ? null : e9Var.g().a();
        this.i = e9Var.f() == null ? null : e9Var.f().a();
        u7 u7Var = e9Var.h() == null ? null : (u7) e9Var.h().a();
        this.k = u7Var;
        if (u7Var != null) {
            this.b = new Matrix();
            this.c = new Matrix();
            this.d = new Matrix();
            this.e = new float[9];
        } else {
            this.b = null;
            this.c = null;
            this.d = null;
            this.e = null;
        }
        this.l = e9Var.i() == null ? null : (u7) e9Var.i().a();
        if (e9Var.d() != null) {
            this.j = e9Var.d().a();
        }
        if (e9Var.j() != null) {
            this.m = e9Var.j().a();
        } else {
            this.m = null;
        }
        if (e9Var.c() != null) {
            this.n = e9Var.c().a();
        } else {
            this.n = null;
        }
    }

    private void d() {
        for (int i2 = 0; i2 < 9; i2++) {
            this.e[i2] = 0.0f;
        }
    }

    public void a(z9 z9Var) {
        z9Var.i(this.j);
        z9Var.i(this.m);
        z9Var.i(this.n);
        z9Var.i(this.f);
        z9Var.i(this.g);
        z9Var.i(this.h);
        z9Var.i(this.i);
        z9Var.i(this.k);
        z9Var.i(this.l);
    }

    public void b(s7.b bVar) {
        s7<Integer, Integer> s7Var = this.j;
        if (s7Var != null) {
            s7Var.a.add(bVar);
        }
        s7<?, Float> s7Var2 = this.m;
        if (s7Var2 != null) {
            s7Var2.a.add(bVar);
        }
        s7<?, Float> s7Var3 = this.n;
        if (s7Var3 != null) {
            s7Var3.a.add(bVar);
        }
        s7<PointF, PointF> s7Var4 = this.f;
        if (s7Var4 != null) {
            s7Var4.a.add(bVar);
        }
        s7<?, PointF> s7Var5 = this.g;
        if (s7Var5 != null) {
            s7Var5.a.add(bVar);
        }
        s7<hc, hc> s7Var6 = this.h;
        if (s7Var6 != null) {
            s7Var6.a.add(bVar);
        }
        s7<Float, Float> s7Var7 = this.i;
        if (s7Var7 != null) {
            s7Var7.a.add(bVar);
        }
        u7 u7Var = this.k;
        if (u7Var != null) {
            u7Var.a.add(bVar);
        }
        u7 u7Var2 = this.l;
        if (u7Var2 != null) {
            u7Var2.a.add(bVar);
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for r5v0, resolved type: gc<T> */
    /* JADX WARN: Multi-variable type inference failed */
    public <T> boolean c(T t, gc<T> gcVar) {
        u7 u7Var;
        u7 u7Var2;
        s7<?, Float> s7Var;
        s7<?, Float> s7Var2;
        if (t == l.e) {
            s7<PointF, PointF> s7Var3 = this.f;
            if (s7Var3 == null) {
                this.f = new h8(gcVar, new PointF());
                return true;
            }
            gc<A> gcVar2 = s7Var3.e;
            s7Var3.e = gcVar;
            return true;
        } else if (t == l.f) {
            s7<?, PointF> s7Var4 = this.g;
            if (s7Var4 == null) {
                this.g = new h8(gcVar, new PointF());
                return true;
            }
            gc<A> gcVar3 = s7Var4.e;
            s7Var4.e = gcVar;
            return true;
        } else if (t == l.k) {
            s7<hc, hc> s7Var5 = this.h;
            if (s7Var5 == null) {
                this.h = new h8(gcVar, new hc());
                return true;
            }
            gc<A> gcVar4 = s7Var5.e;
            s7Var5.e = gcVar;
            return true;
        } else if (t == l.l) {
            s7<Float, Float> s7Var6 = this.i;
            if (s7Var6 == null) {
                this.i = new h8(gcVar, Float.valueOf(0.0f));
                return true;
            }
            gc<A> gcVar5 = s7Var6.e;
            s7Var6.e = gcVar;
            return true;
        } else if (t == l.c) {
            s7<Integer, Integer> s7Var7 = this.j;
            if (s7Var7 == null) {
                this.j = new h8(gcVar, 100);
                return true;
            }
            gc<A> gcVar6 = s7Var7.e;
            s7Var7.e = gcVar;
            return true;
        } else if (t != l.y || (s7Var2 = this.m) == null) {
            if (t != l.z || (s7Var = this.n) == null) {
                if (t == l.m && (u7Var2 = this.k) != null) {
                    if (u7Var2 == null) {
                        this.k = new u7(Collections.singletonList(new ec(Float.valueOf(0.0f))));
                    }
                    u7 u7Var3 = this.k;
                    gc<A> gcVar7 = u7Var3.e;
                    u7Var3.e = gcVar;
                    return true;
                } else if (t != l.n || (u7Var = this.l) == null) {
                    return false;
                } else {
                    if (u7Var == null) {
                        this.l = new u7(Collections.singletonList(new ec(Float.valueOf(0.0f))));
                    }
                    u7 u7Var4 = this.l;
                    gc<A> gcVar8 = u7Var4.e;
                    u7Var4.e = gcVar;
                    return true;
                }
            } else if (s7Var == null) {
                this.n = new h8(gcVar, 100);
                return true;
            } else {
                gc<A> gcVar9 = s7Var.e;
                s7Var.e = gcVar;
                return true;
            }
        } else if (s7Var2 == null) {
            this.m = new h8(gcVar, 100);
            return true;
        } else {
            gc<A> gcVar10 = s7Var2.e;
            s7Var2.e = gcVar;
            return true;
        }
    }

    public s7<?, Float> e() {
        return this.n;
    }

    public Matrix f() {
        float f2;
        this.a.reset();
        s7<?, PointF> s7Var = this.g;
        if (s7Var != null) {
            PointF g2 = s7Var.g();
            float f3 = g2.x;
            if (!(f3 == 0.0f && g2.y == 0.0f)) {
                this.a.preTranslate(f3, g2.y);
            }
        }
        s7<Float, Float> s7Var2 = this.i;
        if (s7Var2 != null) {
            if (s7Var2 instanceof h8) {
                f2 = s7Var2.g().floatValue();
            } else {
                f2 = ((u7) s7Var2).m();
            }
            if (f2 != 0.0f) {
                this.a.preRotate(f2);
            }
        }
        if (this.k != null) {
            u7 u7Var = this.l;
            float cos = u7Var == null ? 0.0f : (float) Math.cos(Math.toRadians((double) ((-u7Var.m()) + 90.0f)));
            u7 u7Var2 = this.l;
            float sin = u7Var2 == null ? 1.0f : (float) Math.sin(Math.toRadians((double) ((-u7Var2.m()) + 90.0f)));
            d();
            float[] fArr = this.e;
            fArr[0] = cos;
            fArr[1] = sin;
            float f4 = -sin;
            fArr[3] = f4;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            this.b.setValues(fArr);
            d();
            float[] fArr2 = this.e;
            fArr2[0] = 1.0f;
            fArr2[3] = (float) Math.tan(Math.toRadians((double) this.k.m()));
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.c.setValues(fArr2);
            d();
            float[] fArr3 = this.e;
            fArr3[0] = cos;
            fArr3[1] = f4;
            fArr3[3] = sin;
            fArr3[4] = cos;
            fArr3[8] = 1.0f;
            this.d.setValues(fArr3);
            this.c.preConcat(this.b);
            this.d.preConcat(this.c);
            this.a.preConcat(this.d);
        }
        s7<hc, hc> s7Var3 = this.h;
        if (s7Var3 != null) {
            hc g3 = s7Var3.g();
            if (!(g3.b() == 1.0f && g3.c() == 1.0f)) {
                this.a.preScale(g3.b(), g3.c());
            }
        }
        s7<PointF, PointF> s7Var4 = this.f;
        if (s7Var4 != null) {
            PointF g4 = s7Var4.g();
            float f5 = g4.x;
            if (!(f5 == 0.0f && g4.y == 0.0f)) {
                this.a.preTranslate(-f5, -g4.y);
            }
        }
        return this.a;
    }

    public Matrix g(float f2) {
        s7<?, PointF> s7Var = this.g;
        PointF pointF = null;
        PointF g2 = s7Var == null ? null : s7Var.g();
        s7<hc, hc> s7Var2 = this.h;
        hc g3 = s7Var2 == null ? null : s7Var2.g();
        this.a.reset();
        if (g2 != null) {
            this.a.preTranslate(g2.x * f2, g2.y * f2);
        }
        if (g3 != null) {
            double d2 = (double) f2;
            this.a.preScale((float) Math.pow((double) g3.b(), d2), (float) Math.pow((double) g3.c(), d2));
        }
        s7<Float, Float> s7Var3 = this.i;
        if (s7Var3 != null) {
            float floatValue = s7Var3.g().floatValue();
            s7<PointF, PointF> s7Var4 = this.f;
            if (s7Var4 != null) {
                pointF = s7Var4.g();
            }
            Matrix matrix = this.a;
            float f3 = floatValue * f2;
            float f4 = 0.0f;
            float f5 = pointF == null ? 0.0f : pointF.x;
            if (pointF != null) {
                f4 = pointF.y;
            }
            matrix.preRotate(f3, f5, f4);
        }
        return this.a;
    }

    public s7<?, Integer> h() {
        return this.j;
    }

    public s7<?, Float> i() {
        return this.m;
    }

    public void j(float f2) {
        s7<Integer, Integer> s7Var = this.j;
        if (s7Var != null) {
            s7Var.k(f2);
        }
        s7<?, Float> s7Var2 = this.m;
        if (s7Var2 != null) {
            s7Var2.k(f2);
        }
        s7<?, Float> s7Var3 = this.n;
        if (s7Var3 != null) {
            s7Var3.k(f2);
        }
        s7<PointF, PointF> s7Var4 = this.f;
        if (s7Var4 != null) {
            s7Var4.k(f2);
        }
        s7<?, PointF> s7Var5 = this.g;
        if (s7Var5 != null) {
            s7Var5.k(f2);
        }
        s7<hc, hc> s7Var6 = this.h;
        if (s7Var6 != null) {
            s7Var6.k(f2);
        }
        s7<Float, Float> s7Var7 = this.i;
        if (s7Var7 != null) {
            s7Var7.k(f2);
        }
        u7 u7Var = this.k;
        if (u7Var != null) {
            u7Var.k(f2);
        }
        u7 u7Var2 = this.l;
        if (u7Var2 != null) {
            u7Var2.k(f2);
        }
    }
}
