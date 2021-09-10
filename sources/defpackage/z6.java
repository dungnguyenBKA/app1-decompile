package defpackage;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import com.airbnb.lottie.g;
import com.airbnb.lottie.l;
import defpackage.s7;
import defpackage.x9;
import java.util.ArrayList;
import java.util.List;

/* renamed from: z6  reason: default package */
public abstract class z6 implements s7.b, j7, d7 {
    private final PathMeasure a = new PathMeasure();
    private final Path b = new Path();
    private final Path c = new Path();
    private final RectF d = new RectF();
    private final g e;
    protected final z9 f;
    private final List<b> g = new ArrayList();
    private final float[] h;
    final Paint i;
    private final s7<?, Float> j;
    private final s7<?, Integer> k;
    private final List<s7<?, Float>> l;
    private final s7<?, Float> m;
    private s7<ColorFilter, ColorFilter> n;

    /* renamed from: z6$b */
    private static final class b {
        private final List<l7> a = new ArrayList();
        private final r7 b;

        b(r7 r7Var, a aVar) {
            this.b = r7Var;
        }
    }

    z6(g gVar, z9 z9Var, Paint.Cap cap, Paint.Join join, float f2, w8 w8Var, u8 u8Var, List<u8> list, u8 u8Var2) {
        y6 y6Var = new y6(1);
        this.i = y6Var;
        this.e = gVar;
        this.f = z9Var;
        y6Var.setStyle(Paint.Style.STROKE);
        y6Var.setStrokeCap(cap);
        y6Var.setStrokeJoin(join);
        y6Var.setStrokeMiter(f2);
        this.k = w8Var.a();
        this.j = u8Var.a();
        if (u8Var2 == null) {
            this.m = null;
        } else {
            this.m = u8Var2.a();
        }
        this.l = new ArrayList(list.size());
        this.h = new float[list.size()];
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.l.add(list.get(i2).a());
        }
        z9Var.i(this.k);
        z9Var.i(this.j);
        for (int i3 = 0; i3 < this.l.size(); i3++) {
            z9Var.i(this.l.get(i3));
        }
        s7<?, Float> s7Var = this.m;
        if (s7Var != null) {
            z9Var.i(s7Var);
        }
        this.k.a(this);
        this.j.a(this);
        for (int i4 = 0; i4 < list.size(); i4++) {
            this.l.get(i4).a(this);
        }
        s7<?, Float> s7Var2 = this.m;
        if (s7Var2 != null) {
            s7Var2.a(this);
        }
    }

    @Override // defpackage.s7.b
    public void a() {
        this.e.invalidateSelf();
    }

    @Override // defpackage.b7
    public void b(List<b7> list, List<b7> list2) {
        x9.a aVar = x9.a.INDIVIDUALLY;
        r7 r7Var = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            b7 b7Var = list.get(size);
            if (b7Var instanceof r7) {
                r7 r7Var2 = (r7) b7Var;
                if (r7Var2.i() == aVar) {
                    r7Var = r7Var2;
                }
            }
        }
        if (r7Var != null) {
            r7Var.c(this);
        }
        b bVar = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            b7 b7Var2 = list2.get(size2);
            if (b7Var2 instanceof r7) {
                r7 r7Var3 = (r7) b7Var2;
                if (r7Var3.i() == aVar) {
                    if (bVar != null) {
                        this.g.add(bVar);
                    }
                    bVar = new b(r7Var3, null);
                    r7Var3.c(this);
                }
            }
            if (b7Var2 instanceof l7) {
                if (bVar == null) {
                    bVar = new b(r7Var, null);
                }
                bVar.a.add((l7) b7Var2);
            }
        }
        if (bVar != null) {
            this.g.add(bVar);
        }
    }

    @Override // defpackage.p8
    public void c(o8 o8Var, int i2, List<o8> list, o8 o8Var2) {
        cc.g(o8Var, i2, list, o8Var2, this);
    }

    @Override // defpackage.d7
    public void d(RectF rectF, Matrix matrix, boolean z) {
        this.b.reset();
        for (int i2 = 0; i2 < this.g.size(); i2++) {
            b bVar = this.g.get(i2);
            for (int i3 = 0; i3 < bVar.a.size(); i3++) {
                this.b.addPath(((l7) bVar.a.get(i3)).getPath(), matrix);
            }
        }
        this.b.computeBounds(this.d, false);
        float m2 = ((u7) this.j).m();
        RectF rectF2 = this.d;
        float f2 = m2 / 2.0f;
        rectF2.set(rectF2.left - f2, rectF2.top - f2, rectF2.right + f2, rectF2.bottom + f2);
        rectF.set(this.d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        com.airbnb.lottie.b.a("StrokeContent#getBounds");
    }

    @Override // defpackage.d7
    public void f(Canvas canvas, Matrix matrix, int i2) {
        float f2;
        if (dc.e(matrix)) {
            com.airbnb.lottie.b.a("StrokeContent#draw");
            return;
        }
        float f3 = 100.0f;
        boolean z = false;
        this.i.setAlpha(cc.c((int) ((((((float) i2) / 255.0f) * ((float) ((w7) this.k).m())) / 100.0f) * 255.0f), 0, 255));
        this.i.setStrokeWidth(dc.d(matrix) * ((u7) this.j).m());
        if (this.i.getStrokeWidth() <= 0.0f) {
            com.airbnb.lottie.b.a("StrokeContent#draw");
            return;
        }
        float f4 = 1.0f;
        if (this.l.isEmpty()) {
            com.airbnb.lottie.b.a("StrokeContent#applyDashPattern");
        } else {
            float d2 = dc.d(matrix);
            for (int i3 = 0; i3 < this.l.size(); i3++) {
                this.h[i3] = this.l.get(i3).g().floatValue();
                if (i3 % 2 == 0) {
                    float[] fArr = this.h;
                    if (fArr[i3] < 1.0f) {
                        fArr[i3] = 1.0f;
                    }
                } else {
                    float[] fArr2 = this.h;
                    if (fArr2[i3] < 0.1f) {
                        fArr2[i3] = 0.1f;
                    }
                }
                float[] fArr3 = this.h;
                fArr3[i3] = fArr3[i3] * d2;
            }
            s7<?, Float> s7Var = this.m;
            this.i.setPathEffect(new DashPathEffect(this.h, s7Var == null ? 0.0f : s7Var.g().floatValue() * d2));
            com.airbnb.lottie.b.a("StrokeContent#applyDashPattern");
        }
        s7<ColorFilter, ColorFilter> s7Var2 = this.n;
        if (s7Var2 != null) {
            this.i.setColorFilter(s7Var2.g());
        }
        int i4 = 0;
        while (i4 < this.g.size()) {
            b bVar = this.g.get(i4);
            if (bVar.b == null) {
                this.b.reset();
                for (int size = bVar.a.size() - 1; size >= 0; size--) {
                    this.b.addPath(((l7) bVar.a.get(size)).getPath(), matrix);
                }
                com.airbnb.lottie.b.a("StrokeContent#buildPath");
                canvas.drawPath(this.b, this.i);
                com.airbnb.lottie.b.a("StrokeContent#drawPath");
            } else if (bVar.b == null) {
                com.airbnb.lottie.b.a("StrokeContent#applyTrimPath");
            } else {
                this.b.reset();
                int size2 = bVar.a.size();
                while (true) {
                    size2--;
                    if (size2 < 0) {
                        break;
                    }
                    this.b.addPath(((l7) bVar.a.get(size2)).getPath(), matrix);
                }
                this.a.setPath(this.b, z);
                float length = this.a.getLength();
                while (this.a.nextContour()) {
                    length += this.a.getLength();
                }
                float floatValue = (bVar.b.g().g().floatValue() * length) / 360.0f;
                float floatValue2 = ((bVar.b.h().g().floatValue() * length) / f3) + floatValue;
                float floatValue3 = ((bVar.b.e().g().floatValue() * length) / f3) + floatValue;
                int size3 = bVar.a.size() - 1;
                float f5 = 0.0f;
                while (size3 >= 0) {
                    this.c.set(((l7) bVar.a.get(size3)).getPath());
                    this.c.transform(matrix);
                    this.a.setPath(this.c, z);
                    float length2 = this.a.getLength();
                    if (floatValue3 > length) {
                        float f6 = floatValue3 - length;
                        if (f6 < f5 + length2 && f5 < f6) {
                            f2 = length;
                            dc.a(this.c, floatValue2 > length ? (floatValue2 - length) / length2 : 0.0f, Math.min(f6 / length2, f4), 0.0f);
                            canvas.drawPath(this.c, this.i);
                            f5 += length2;
                            size3--;
                            length = f2;
                            z = false;
                            f4 = 1.0f;
                        }
                    }
                    f2 = length;
                    float f7 = f5 + length2;
                    if (f7 >= floatValue2 && f5 <= floatValue3) {
                        if (f7 > floatValue3 || floatValue2 >= f5) {
                            dc.a(this.c, floatValue2 < f5 ? 0.0f : (floatValue2 - f5) / length2, floatValue3 > f7 ? 1.0f : (floatValue3 - f5) / length2, 0.0f);
                            canvas.drawPath(this.c, this.i);
                            f5 += length2;
                            size3--;
                            length = f2;
                            z = false;
                            f4 = 1.0f;
                        } else {
                            canvas.drawPath(this.c, this.i);
                        }
                    }
                    f5 += length2;
                    size3--;
                    length = f2;
                    z = false;
                    f4 = 1.0f;
                }
                com.airbnb.lottie.b.a("StrokeContent#applyTrimPath");
            }
            i4++;
            f3 = 100.0f;
            z = false;
            f4 = 1.0f;
        }
        com.airbnb.lottie.b.a("StrokeContent#draw");
    }

    @Override // defpackage.p8
    public <T> void g(T t, gc<T> gcVar) {
        if (t == l.d) {
            this.k.l(gcVar);
        } else if (t == l.o) {
            this.j.l(gcVar);
        } else if (t == l.C) {
            s7<ColorFilter, ColorFilter> s7Var = this.n;
            if (s7Var != null) {
                this.f.o(s7Var);
            }
            if (gcVar == null) {
                this.n = null;
                return;
            }
            h8 h8Var = new h8(gcVar, null);
            this.n = h8Var;
            h8Var.a(this);
            this.f.i(this.n);
        }
    }
}
