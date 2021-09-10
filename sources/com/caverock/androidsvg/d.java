package com.caverock.androidsvg;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.Typeface;
import android.support.v4.media.session.PlaybackStateCompat;
import android.util.Base64;
import android.util.Log;
import com.caverock.androidsvg.a;
import com.caverock.androidsvg.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Set;
import java.util.Stack;

public class d {
    private static /* synthetic */ int[] k;
    private static /* synthetic */ int[] l;
    private static /* synthetic */ int[] m;
    private static /* synthetic */ int[] n;
    private Canvas a;
    private c.a b;
    private boolean c;
    private c d;
    private g e;
    private Stack<g> f;
    private Stack<c.i0> g;
    private Stack<Matrix> h;
    private Stack<Canvas> i;
    private Stack<Bitmap> j;

    /* access modifiers changed from: private */
    public class a implements c.w {
        private List<b> a = new ArrayList();
        private float b;
        private float c;
        private b d = null;
        private boolean e = false;
        private boolean f = true;
        private int g = -1;
        private boolean h;

        public a(c.v vVar) {
            vVar.f(this);
            if (this.h) {
                this.d.b(this.a.get(this.g));
                this.a.set(this.g, this.d);
                this.h = false;
            }
            b bVar = this.d;
            if (bVar != null) {
                this.a.add(bVar);
            }
        }

        @Override // com.caverock.androidsvg.c.w
        public void a(float f2, float f3, float f4, float f5) {
            this.d.a(f2, f3);
            this.a.add(this.d);
            this.d = new b(d.this, f4, f5, f4 - f2, f5 - f3);
            this.h = false;
        }

        @Override // com.caverock.androidsvg.c.w
        public void b(float f2, float f3) {
            if (this.h) {
                this.d.b(this.a.get(this.g));
                this.a.set(this.g, this.d);
                this.h = false;
            }
            b bVar = this.d;
            if (bVar != null) {
                this.a.add(bVar);
            }
            this.b = f2;
            this.c = f3;
            this.d = new b(d.this, f2, f3, 0.0f, 0.0f);
            this.g = this.a.size();
        }

        @Override // com.caverock.androidsvg.c.w
        public void c(float f2, float f3, float f4, float f5, float f6, float f7) {
            if (this.f || this.e) {
                this.d.a(f2, f3);
                this.a.add(this.d);
                this.e = false;
            }
            this.d = new b(d.this, f6, f7, f6 - f4, f7 - f5);
            this.h = false;
        }

        @Override // com.caverock.androidsvg.c.w
        public void close() {
            this.a.add(this.d);
            e(this.b, this.c);
            this.h = true;
        }

        @Override // com.caverock.androidsvg.c.w
        public void d(float f2, float f3, float f4, boolean z, boolean z2, float f5, float f6) {
            this.e = true;
            this.f = false;
            b bVar = this.d;
            d.g(bVar.a, bVar.b, f2, f3, f4, z, z2, f5, f6, this);
            this.f = true;
            this.h = false;
        }

        @Override // com.caverock.androidsvg.c.w
        public void e(float f2, float f3) {
            this.d.a(f2, f3);
            this.a.add(this.d);
            d dVar = d.this;
            b bVar = this.d;
            this.d = new b(dVar, f2, f3, f2 - bVar.a, f3 - bVar.b);
            this.h = false;
        }

        public List<b> f() {
            return this.a;
        }
    }

    /* access modifiers changed from: private */
    public class b {
        public float a;
        public float b;
        public float c = 0.0f;
        public float d = 0.0f;

        public b(d dVar, float f, float f2, float f3, float f4) {
            this.a = f;
            this.b = f2;
            double sqrt = Math.sqrt((double) ((f4 * f4) + (f3 * f3)));
            if (sqrt != 0.0d) {
                double d2 = (double) f3;
                Double.isNaN(d2);
                this.c = (float) (d2 / sqrt);
                double d3 = (double) f4;
                Double.isNaN(d3);
                this.d = (float) (d3 / sqrt);
            }
        }

        public void a(float f, float f2) {
            float f3 = f - this.a;
            float f4 = f2 - this.b;
            double sqrt = Math.sqrt((double) ((f4 * f4) + (f3 * f3)));
            if (sqrt != 0.0d) {
                float f5 = this.c;
                double d2 = (double) f3;
                Double.isNaN(d2);
                this.c = f5 + ((float) (d2 / sqrt));
                float f6 = this.d;
                double d3 = (double) f4;
                Double.isNaN(d3);
                this.d = f6 + ((float) (d3 / sqrt));
            }
        }

        public void b(b bVar) {
            this.c += bVar.c;
            this.d += bVar.d;
        }

        public String toString() {
            return "(" + this.a + "," + this.b + " " + this.c + "," + this.d + ")";
        }
    }

    /* access modifiers changed from: private */
    public class c implements c.w {
        Path a = new Path();
        float b;
        float c;

        public c(d dVar, c.v vVar) {
            vVar.f(this);
        }

        @Override // com.caverock.androidsvg.c.w
        public void a(float f, float f2, float f3, float f4) {
            this.a.quadTo(f, f2, f3, f4);
            this.b = f3;
            this.c = f4;
        }

        @Override // com.caverock.androidsvg.c.w
        public void b(float f, float f2) {
            this.a.moveTo(f, f2);
            this.b = f;
            this.c = f2;
        }

        @Override // com.caverock.androidsvg.c.w
        public void c(float f, float f2, float f3, float f4, float f5, float f6) {
            this.a.cubicTo(f, f2, f3, f4, f5, f6);
            this.b = f5;
            this.c = f6;
        }

        @Override // com.caverock.androidsvg.c.w
        public void close() {
            this.a.close();
        }

        @Override // com.caverock.androidsvg.c.w
        public void d(float f, float f2, float f3, boolean z, boolean z2, float f4, float f5) {
            d.g(this.b, this.c, f, f2, f3, z, z2, f4, f5, this);
            this.b = f4;
            this.c = f5;
        }

        @Override // com.caverock.androidsvg.c.w
        public void e(float f, float f2) {
            this.a.lineTo(f, f2);
            this.b = f;
            this.c = f2;
        }
    }

    /* access modifiers changed from: private */
    /* renamed from: com.caverock.androidsvg.d$d  reason: collision with other inner class name */
    public class C0039d extends e {
        private Path d;

        public C0039d(Path path, float f, float f2) {
            super(f, f2);
            this.d = path;
        }

        @Override // com.caverock.androidsvg.d.e, com.caverock.androidsvg.d.i
        public void b(String str) {
            if (d.this.h0()) {
                if (d.this.e.c) {
                    d.this.a.drawTextOnPath(str, this.d, this.a, this.b, d.this.e.e);
                }
                if (d.this.e.d) {
                    d.this.a.drawTextOnPath(str, this.d, this.a, this.b, d.this.e.f);
                }
            }
            this.a = d.this.e.e.measureText(str) + this.a;
        }
    }

    /* access modifiers changed from: private */
    public class e extends i {
        public float a;
        public float b;

        public e(float f, float f2) {
            super(d.this, null);
            this.a = f;
            this.b = f2;
        }

        @Override // com.caverock.androidsvg.d.i
        public void b(String str) {
            if (d.this.h0()) {
                if (d.this.e.c) {
                    d.this.a.drawText(str, this.a, this.b, d.this.e.e);
                }
                if (d.this.e.d) {
                    d.this.a.drawText(str, this.a, this.b, d.this.e.f);
                }
            }
            this.a = d.this.e.e.measureText(str) + this.a;
        }
    }

    /* access modifiers changed from: private */
    public class f extends i {
        public float a;
        public float b;
        public Path c;

        public f(float f, float f2, Path path) {
            super(d.this, null);
            this.a = f;
            this.b = f2;
            this.c = path;
        }

        @Override // com.caverock.androidsvg.d.i
        public boolean a(c.x0 x0Var) {
            if (!(x0Var instanceof c.y0)) {
                return true;
            }
            d.i0("Using <textPath> elements in a clip path is not supported.", new Object[0]);
            return false;
        }

        @Override // com.caverock.androidsvg.d.i
        public void b(String str) {
            if (d.this.h0()) {
                Path path = new Path();
                d.this.e.e.getTextPath(str, 0, str.length(), this.a, this.b, path);
                this.c.addPath(path);
            }
            this.a = d.this.e.e.measureText(str) + this.a;
        }
    }

    /* access modifiers changed from: private */
    public class g implements Cloneable {
        public c.d0 b = c.d0.a();
        public boolean c;
        public boolean d;
        public Paint e;
        public Paint f;
        public c.a g;
        public c.a h;
        public boolean i;
        public boolean j;

        public g(d dVar) {
            Paint paint = new Paint();
            this.e = paint;
            paint.setFlags(385);
            this.e.setStyle(Paint.Style.FILL);
            this.e.setTypeface(Typeface.DEFAULT);
            Paint paint2 = new Paint();
            this.f = paint2;
            paint2.setFlags(385);
            this.f.setStyle(Paint.Style.STROKE);
            this.f.setTypeface(Typeface.DEFAULT);
        }

        /* access modifiers changed from: protected */
        @Override // java.lang.Object
        public Object clone() {
            try {
                g gVar = (g) super.clone();
                gVar.b = (c.d0) this.b.clone();
                gVar.e = new Paint(this.e);
                gVar.f = new Paint(this.f);
                return gVar;
            } catch (CloneNotSupportedException e2) {
                throw new InternalError(e2.toString());
            }
        }
    }

    /* access modifiers changed from: private */
    public class h extends i {
        float a;
        float b;
        RectF c = new RectF();

        public h(float f, float f2) {
            super(d.this, null);
            this.a = f;
            this.b = f2;
        }

        @Override // com.caverock.androidsvg.d.i
        public boolean a(c.x0 x0Var) {
            if (!(x0Var instanceof c.y0)) {
                return true;
            }
            c.y0 y0Var = (c.y0) x0Var;
            c.m0 k = x0Var.a.k(y0Var.n);
            if (k == null) {
                d.y("TextPath path reference '%s' not found", new Object[]{y0Var.n});
                return false;
            }
            c.u uVar = (c.u) k;
            Path path = new c(d.this, uVar.o).a;
            Matrix matrix = uVar.n;
            if (matrix != null) {
                path.transform(matrix);
            }
            RectF rectF = new RectF();
            path.computeBounds(rectF, true);
            this.c.union(rectF);
            return false;
        }

        @Override // com.caverock.androidsvg.d.i
        public void b(String str) {
            if (d.this.h0()) {
                Rect rect = new Rect();
                d.this.e.e.getTextBounds(str, 0, str.length(), rect);
                RectF rectF = new RectF(rect);
                rectF.offset(this.a, this.b);
                this.c.union(rectF);
            }
            this.a = d.this.e.e.measureText(str) + this.a;
        }
    }

    /* access modifiers changed from: private */
    public abstract class i {
        i(d dVar, i iVar) {
        }

        public boolean a(c.x0 x0Var) {
            return true;
        }

        public abstract void b(String str);
    }

    /* access modifiers changed from: private */
    public class j extends i {
        public float a = 0.0f;

        j(j jVar) {
            super(d.this, null);
        }

        @Override // com.caverock.androidsvg.d.i
        public void b(String str) {
            this.a = d.this.e.e.measureText(str) + this.a;
        }
    }

    protected d(Canvas canvas, c.a aVar, float f2) {
        this.a = canvas;
        this.b = aVar;
    }

    private void A(c.i iVar, String str) {
        c.m0 k2 = iVar.a.k(str);
        if (k2 == null) {
            i0("Gradient reference '%s' not found", str);
        } else if (!(k2 instanceof c.i)) {
            y("Gradient href attributes must point to other gradient elements", new Object[0]);
        } else if (k2 == iVar) {
            y("Circular reference in gradient href attribute '%s'", str);
        } else {
            c.i iVar2 = (c.i) k2;
            if (iVar.i == null) {
                iVar.i = iVar2.i;
            }
            if (iVar.j == null) {
                iVar.j = iVar2.j;
            }
            if (iVar.k == null) {
                iVar.k = iVar2.k;
            }
            if (iVar.h.isEmpty()) {
                iVar.h = iVar2.h;
            }
            try {
                if (iVar instanceof c.l0) {
                    c.l0 l0Var = (c.l0) iVar;
                    c.l0 l0Var2 = (c.l0) k2;
                    if (l0Var.m == null) {
                        l0Var.m = l0Var2.m;
                    }
                    if (l0Var.n == null) {
                        l0Var.n = l0Var2.n;
                    }
                    if (l0Var.o == null) {
                        l0Var.o = l0Var2.o;
                    }
                    if (l0Var.p == null) {
                        l0Var.p = l0Var2.p;
                    }
                } else {
                    B((c.p0) iVar, (c.p0) k2);
                }
            } catch (ClassCastException unused) {
            }
            String str2 = iVar2.l;
            if (str2 != null) {
                A(iVar, str2);
            }
        }
    }

    private void B(c.p0 p0Var, c.p0 p0Var2) {
        if (p0Var.m == null) {
            p0Var.m = p0Var2.m;
        }
        if (p0Var.n == null) {
            p0Var.n = p0Var2.n;
        }
        if (p0Var.o == null) {
            p0Var.o = p0Var2.o;
        }
        if (p0Var.p == null) {
            p0Var.p = p0Var2.p;
        }
        if (p0Var.q == null) {
            p0Var.q = p0Var2.q;
        }
    }

    private void C(c.x xVar, String str) {
        c.m0 k2 = xVar.a.k(str);
        if (k2 == null) {
            i0("Pattern reference '%s' not found", str);
        } else if (!(k2 instanceof c.x)) {
            y("Pattern href attributes must point to other pattern elements", new Object[0]);
        } else if (k2 == xVar) {
            y("Circular reference in pattern href attribute '%s'", str);
        } else {
            c.x xVar2 = (c.x) k2;
            if (xVar.p == null) {
                xVar.p = xVar2.p;
            }
            if (xVar.q == null) {
                xVar.q = xVar2.q;
            }
            if (xVar.r == null) {
                xVar.r = xVar2.r;
            }
            if (xVar.s == null) {
                xVar.s = xVar2.s;
            }
            if (xVar.t == null) {
                xVar.t = xVar2.t;
            }
            if (xVar.u == null) {
                xVar.u = xVar2.u;
            }
            if (xVar.v == null) {
                xVar.v = xVar2.v;
            }
            if (xVar.i.isEmpty()) {
                xVar.i = xVar2.i;
            }
            if (xVar.o == null) {
                xVar.o = xVar2.o;
            }
            if (xVar.n == null) {
                xVar.n = xVar2.n;
            }
            String str2 = xVar2.w;
            if (str2 != null) {
                C(xVar, str2);
            }
        }
    }

    private g D(c.m0 m0Var) {
        g gVar = new g(this);
        e0(gVar, c.d0.a());
        E(m0Var, gVar);
        return gVar;
    }

    private g E(c.m0 m0Var, g gVar) {
        ArrayList arrayList = new ArrayList();
        while (true) {
            if (m0Var instanceof c.k0) {
                arrayList.add(0, (c.k0) m0Var);
            }
            c.i0 i0Var = m0Var.b;
            if (i0Var == null) {
                break;
            }
            m0Var = (c.m0) i0Var;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            f0(gVar, (c.k0) it.next());
        }
        c.a aVar = this.d.g().o;
        gVar.h = aVar;
        if (aVar == null) {
            gVar.h = this.b;
        }
        gVar.g = this.b;
        gVar.j = this.e.j;
        return gVar;
    }

    private c.d0.e F() {
        c.d0.e eVar;
        c.d0 d0Var = this.e.b;
        if (d0Var.u == c.d0.g.LTR || (eVar = d0Var.v) == c.d0.e.Middle) {
            return d0Var.v;
        }
        c.d0.e eVar2 = c.d0.e.Start;
        return eVar == eVar2 ? c.d0.e.End : eVar2;
    }

    private Path.FillType G() {
        if (this.e.b.G == null) {
            return Path.FillType.WINDING;
        }
        if (b()[this.e.b.G.ordinal()] != 2) {
            return Path.FillType.WINDING;
        }
        return Path.FillType.EVEN_ODD;
    }

    private boolean L(c.d0 d0Var, long j2) {
        return (j2 & d0Var.b) != 0;
    }

    private Path M(c.C0037c cVar) {
        c.o oVar = cVar.o;
        float f2 = 0.0f;
        float e2 = oVar != null ? oVar.e(this) : 0.0f;
        c.o oVar2 = cVar.p;
        if (oVar2 != null) {
            f2 = oVar2.f(this);
        }
        float c2 = cVar.q.c(this);
        float f3 = e2 - c2;
        float f4 = f2 - c2;
        float f5 = e2 + c2;
        float f6 = f2 + c2;
        if (cVar.h == null) {
            float f7 = 2.0f * c2;
            cVar.h = new c.a(f3, f4, f7, f7);
        }
        float f8 = 0.5522848f * c2;
        Path path = new Path();
        path.moveTo(e2, f4);
        float f9 = e2 + f8;
        float f10 = f2 - f8;
        path.cubicTo(f9, f4, f5, f10, f5, f2);
        float f11 = f2 + f8;
        path.cubicTo(f5, f11, f9, f6, e2, f6);
        float f12 = e2 - f8;
        path.cubicTo(f12, f6, f3, f11, f3, f2);
        path.cubicTo(f3, f10, f12, f4, e2, f4);
        path.close();
        return path;
    }

    private Path N(c.h hVar) {
        c.o oVar = hVar.o;
        float f2 = 0.0f;
        float e2 = oVar != null ? oVar.e(this) : 0.0f;
        c.o oVar2 = hVar.p;
        if (oVar2 != null) {
            f2 = oVar2.f(this);
        }
        float e3 = hVar.q.e(this);
        float f3 = hVar.r.f(this);
        float f4 = e2 - e3;
        float f5 = f2 - f3;
        float f6 = e2 + e3;
        float f7 = f2 + f3;
        if (hVar.h == null) {
            hVar.h = new c.a(f4, f5, e3 * 2.0f, 2.0f * f3);
        }
        float f8 = e3 * 0.5522848f;
        float f9 = 0.5522848f * f3;
        Path path = new Path();
        path.moveTo(e2, f5);
        float f10 = e2 + f8;
        float f11 = f2 - f9;
        path.cubicTo(f10, f5, f6, f11, f6, f2);
        float f12 = f9 + f2;
        path.cubicTo(f6, f12, f10, f7, e2, f7);
        float f13 = e2 - f8;
        path.cubicTo(f13, f7, f4, f12, f4, f2);
        path.cubicTo(f4, f11, f13, f5, e2, f5);
        path.close();
        return path;
    }

    private Path O(c.y yVar) {
        Path path = new Path();
        float[] fArr = yVar.o;
        path.moveTo(fArr[0], fArr[1]);
        int i2 = 2;
        while (true) {
            float[] fArr2 = yVar.o;
            if (i2 >= fArr2.length) {
                break;
            }
            path.lineTo(fArr2[i2], fArr2[i2 + 1]);
            i2 += 2;
        }
        if (yVar instanceof c.z) {
            path.close();
        }
        if (yVar.h == null) {
            yVar.h = j(path);
        }
        path.setFillType(G());
        return path;
    }

    private Path P(c.a0 a0Var) {
        float f2;
        float f3;
        Path path;
        c.o oVar = a0Var.s;
        if (oVar == null && a0Var.t == null) {
            f3 = 0.0f;
            f2 = 0.0f;
        } else {
            if (oVar == null) {
                f3 = a0Var.t.f(this);
            } else if (a0Var.t == null) {
                f3 = oVar.e(this);
            } else {
                f3 = oVar.e(this);
                f2 = a0Var.t.f(this);
            }
            f2 = f3;
        }
        float min = Math.min(f3, a0Var.q.e(this) / 2.0f);
        float min2 = Math.min(f2, a0Var.r.f(this) / 2.0f);
        c.o oVar2 = a0Var.o;
        float e2 = oVar2 != null ? oVar2.e(this) : 0.0f;
        c.o oVar3 = a0Var.p;
        float f4 = oVar3 != null ? oVar3.f(this) : 0.0f;
        float e3 = a0Var.q.e(this);
        float f5 = a0Var.r.f(this);
        if (a0Var.h == null) {
            a0Var.h = new c.a(e2, f4, e3, f5);
        }
        float f6 = e2 + e3;
        float f7 = f4 + f5;
        Path path2 = new Path();
        if (min == 0.0f || min2 == 0.0f) {
            path = path2;
            path.moveTo(e2, f4);
            path.lineTo(f6, f4);
            path.lineTo(f6, f7);
            path.lineTo(e2, f7);
            path.lineTo(e2, f4);
        } else {
            float f8 = min * 0.5522848f;
            float f9 = 0.5522848f * min2;
            float f10 = f4 + min2;
            path2.moveTo(e2, f10);
            float f11 = f10 - f9;
            float f12 = e2 + min;
            float f13 = f12 - f8;
            path2.cubicTo(e2, f11, f13, f4, f12, f4);
            float f14 = f6 - min;
            path2.lineTo(f14, f4);
            float f15 = f14 + f8;
            path2.cubicTo(f15, f4, f6, f11, f6, f10);
            float f16 = f7 - min2;
            path2.lineTo(f6, f16);
            float f17 = f16 + f9;
            path = path2;
            path2.cubicTo(f6, f17, f15, f7, f14, f7);
            path.lineTo(f12, f7);
            path.cubicTo(f13, f7, e2, f17, e2, f16);
            path.lineTo(e2, f10);
        }
        path.close();
        return path;
    }

    private void Q(c.j0 j0Var) {
        float f2;
        float f3;
        g gVar = this.e;
        String str = gVar.b.H;
        if (str != null && gVar.j) {
            c.m0 k2 = this.d.k(str);
            w();
            c.r rVar = (c.r) k2;
            Boolean bool = rVar.n;
            boolean z = true;
            if (bool != null && bool.booleanValue()) {
                c.o oVar = rVar.r;
                f3 = oVar != null ? oVar.e(this) : j0Var.h.d;
                c.o oVar2 = rVar.s;
                f2 = oVar2 != null ? oVar2.f(this) : j0Var.h.e;
                c.o oVar3 = rVar.p;
                if (oVar3 != null) {
                    oVar3.e(this);
                } else {
                    float f4 = j0Var.h.b;
                }
                c.o oVar4 = rVar.q;
                if (oVar4 != null) {
                    oVar4.f(this);
                } else {
                    float f5 = j0Var.h.c;
                }
            } else {
                c.o oVar5 = rVar.p;
                if (oVar5 != null) {
                    oVar5.d(this, 1.0f);
                }
                c.o oVar6 = rVar.q;
                if (oVar6 != null) {
                    oVar6.d(this, 1.0f);
                }
                c.o oVar7 = rVar.r;
                float f6 = 1.2f;
                float d2 = oVar7 != null ? oVar7.d(this, 1.0f) : 1.2f;
                c.o oVar8 = rVar.s;
                if (oVar8 != null) {
                    f6 = oVar8.d(this, 1.0f);
                }
                c.a aVar = j0Var.h;
                float f7 = aVar.b;
                f3 = d2 * aVar.d;
                f2 = f6 * aVar.e;
            }
            if (!(f3 == 0.0f || f2 == 0.0f)) {
                b0();
                g D = D(rVar);
                this.e = D;
                D.b.n = Float.valueOf(1.0f);
                Boolean bool2 = rVar.o;
                if (bool2 != null && !bool2.booleanValue()) {
                    z = false;
                }
                if (!z) {
                    Canvas canvas = this.a;
                    c.a aVar2 = j0Var.h;
                    canvas.translate(aVar2.b, aVar2.c);
                    Canvas canvas2 = this.a;
                    c.a aVar3 = j0Var.h;
                    canvas2.scale(aVar3.d, aVar3.e);
                }
                U(rVar, false);
                a0();
            }
            Bitmap pop = this.j.pop();
            Bitmap pop2 = this.j.pop();
            int width = pop.getWidth();
            int height = pop.getHeight();
            int[] iArr = new int[width];
            int[] iArr2 = new int[width];
            for (int i2 = 0; i2 < height; i2++) {
                pop.getPixels(iArr, 0, width, 0, i2, width, 1);
                pop2.getPixels(iArr2, 0, width, 0, i2, width, 1);
                for (int i3 = 0; i3 < width; i3++) {
                    int i4 = iArr[i3];
                    int i5 = i4 & 255;
                    int i6 = (i4 >> 8) & 255;
                    int i7 = (i4 >> 16) & 255;
                    int i8 = (i4 >> 24) & 255;
                    if (i8 == 0) {
                        iArr2[i3] = 0;
                    } else {
                        int i9 = iArr2[i3];
                        iArr2[i3] = (i9 & 16777215) | (((((i9 >> 24) & 255) * ((((i5 * 2362) + ((i6 * 23442) + (i7 * 6963))) * i8) / 8355840)) / 255) << 24);
                    }
                }
                pop2.setPixels(iArr2, 0, width, 0, i2, width, 1);
            }
            pop.recycle();
            Canvas pop3 = this.i.pop();
            this.a = pop3;
            pop3.save();
            this.a.setMatrix(new Matrix());
            this.a.drawBitmap(pop2, 0.0f, 0.0f, this.e.e);
            pop2.recycle();
            this.a.restore();
        }
        a0();
    }

    /* JADX WARNING: Removed duplicated region for block: B:14:0x0036 A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0037  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean R() {
        /*
        // Method dump skipped, instructions count: 149
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.d.R():boolean");
    }

    private void S(c.e0 e0Var, c.o oVar, c.o oVar2, c.a aVar, b bVar) {
        float f2;
        if (oVar != null && oVar.h()) {
            return;
        }
        if (oVar2 == null || !oVar2.h()) {
            if (bVar == null && (bVar = e0Var.n) == null) {
                bVar = b.d;
            }
            f0(this.e, e0Var);
            if (t()) {
                float f3 = 0.0f;
                if (e0Var.b != null) {
                    c.o oVar3 = e0Var.p;
                    float e2 = oVar3 != null ? oVar3.e(this) : 0.0f;
                    c.o oVar4 = e0Var.q;
                    if (oVar4 != null) {
                        f3 = oVar4.f(this);
                    }
                    f3 = e2;
                    f2 = f3;
                } else {
                    f2 = 0.0f;
                }
                c.a J = J();
                float e3 = oVar != null ? oVar.e(this) : J.d;
                float f4 = oVar2 != null ? oVar2.f(this) : J.e;
                g gVar = this.e;
                gVar.g = new c.a(f3, f2, e3, f4);
                if (!gVar.b.w.booleanValue()) {
                    c.a aVar2 = this.e.g;
                    Y(aVar2.b, aVar2.c, aVar2.d, aVar2.e);
                }
                m(e0Var, this.e.g);
                if (aVar != null) {
                    this.a.concat(l(this.e.g, aVar, bVar));
                    this.e.h = e0Var.o;
                } else {
                    this.a.translate(f3, f2);
                }
                boolean R = R();
                g0();
                U(e0Var, true);
                if (R) {
                    Q(e0Var);
                }
                d0(e0Var);
            }
        }
    }

    private void T(c.m0 m0Var) {
        Path.FillType fillType;
        c.o oVar;
        String str;
        int indexOf;
        Set<String> b2;
        c.o oVar2;
        if (!(m0Var instanceof c.s)) {
            b0();
            p(m0Var);
            if (m0Var instanceof c.e0) {
                c.e0 e0Var = (c.e0) m0Var;
                S(e0Var, e0Var.r, e0Var.s, e0Var.o, e0Var.n);
            } else {
                float f2 = 0.0f;
                if (m0Var instanceof c.d1) {
                    c.d1 d1Var = (c.d1) m0Var;
                    c.c1 c1Var = c.c1.percent;
                    c.o oVar3 = d1Var.r;
                    if ((oVar3 == null || !oVar3.h()) && ((oVar2 = d1Var.s) == null || !oVar2.h())) {
                        f0(this.e, d1Var);
                        if (t()) {
                            c.m0 k2 = d1Var.a.k(d1Var.o);
                            if (k2 == null) {
                                y("Use reference '%s' not found", d1Var.o);
                            } else {
                                Matrix matrix = d1Var.n;
                                if (matrix != null) {
                                    this.a.concat(matrix);
                                }
                                Matrix matrix2 = new Matrix();
                                c.o oVar4 = d1Var.p;
                                float e2 = oVar4 != null ? oVar4.e(this) : 0.0f;
                                c.o oVar5 = d1Var.q;
                                matrix2.preTranslate(e2, oVar5 != null ? oVar5.f(this) : 0.0f);
                                this.a.concat(matrix2);
                                m(d1Var, d1Var.h);
                                boolean R = R();
                                this.g.push(d1Var);
                                this.h.push(this.a.getMatrix());
                                if (k2 instanceof c.e0) {
                                    b0();
                                    c.e0 e0Var2 = (c.e0) k2;
                                    c.o oVar6 = d1Var.r;
                                    if (oVar6 == null) {
                                        oVar6 = e0Var2.r;
                                    }
                                    c.o oVar7 = d1Var.s;
                                    if (oVar7 == null) {
                                        oVar7 = e0Var2.s;
                                    }
                                    S(e0Var2, oVar6, oVar7, e0Var2.o, e0Var2.n);
                                    a0();
                                } else if (k2 instanceof c.s0) {
                                    c.o oVar8 = d1Var.r;
                                    if (oVar8 == null) {
                                        oVar8 = new c.o(100.0f, c1Var);
                                    }
                                    c.o oVar9 = d1Var.s;
                                    if (oVar9 == null) {
                                        oVar9 = new c.o(100.0f, c1Var);
                                    }
                                    b0();
                                    c.s0 s0Var = (c.s0) k2;
                                    if (!oVar8.h() && !oVar9.h()) {
                                        b bVar = s0Var.n;
                                        if (bVar == null) {
                                            bVar = b.d;
                                        }
                                        f0(this.e, s0Var);
                                        float e3 = oVar8.e(this);
                                        float e4 = oVar9.e(this);
                                        g gVar = this.e;
                                        gVar.g = new c.a(0.0f, 0.0f, e3, e4);
                                        if (!gVar.b.w.booleanValue()) {
                                            c.a aVar = this.e.g;
                                            Y(aVar.b, aVar.c, aVar.d, aVar.e);
                                        }
                                        c.a aVar2 = s0Var.o;
                                        if (aVar2 != null) {
                                            this.a.concat(l(this.e.g, aVar2, bVar));
                                            this.e.h = s0Var.o;
                                        }
                                        boolean R2 = R();
                                        U(s0Var, true);
                                        if (R2) {
                                            Q(s0Var);
                                        }
                                        d0(s0Var);
                                    }
                                    a0();
                                } else {
                                    T(k2);
                                }
                                this.g.pop();
                                this.h.pop();
                                if (R) {
                                    Q(d1Var);
                                }
                                d0(d1Var);
                            }
                        }
                    }
                } else if (m0Var instanceof c.r0) {
                    c.r0 r0Var = (c.r0) m0Var;
                    f0(this.e, r0Var);
                    if (t()) {
                        Matrix matrix3 = r0Var.n;
                        if (matrix3 != null) {
                            this.a.concat(matrix3);
                        }
                        m(r0Var, r0Var.h);
                        boolean R3 = R();
                        String language = Locale.getDefault().getLanguage();
                        Objects.requireNonNull(this.d);
                        Iterator<c.m0> it = r0Var.i.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                c.m0 next = it.next();
                                if (next instanceof c.f0) {
                                    c.f0 f0Var = (c.f0) next;
                                    if (f0Var.e() == null && ((b2 = f0Var.b()) == null || (!b2.isEmpty() && b2.contains(language)))) {
                                        Set<String> i2 = f0Var.i();
                                        if (i2 == null || (!i2.isEmpty() && f.o.containsAll(i2))) {
                                            Set<String> m2 = f0Var.m();
                                            if (m2 == null) {
                                                Set<String> n2 = f0Var.n();
                                                if (n2 == null) {
                                                    T(next);
                                                    break;
                                                }
                                                n2.isEmpty();
                                            } else {
                                                m2.isEmpty();
                                            }
                                        }
                                    }
                                }
                            } else {
                                break;
                            }
                        }
                        if (R3) {
                            Q(r0Var);
                        }
                        d0(r0Var);
                    }
                } else if (m0Var instanceof c.l) {
                    c.l lVar = (c.l) m0Var;
                    f0(this.e, lVar);
                    if (t()) {
                        Matrix matrix4 = lVar.n;
                        if (matrix4 != null) {
                            this.a.concat(matrix4);
                        }
                        m(lVar, lVar.h);
                        boolean R4 = R();
                        U(lVar, true);
                        if (R4) {
                            Q(lVar);
                        }
                        d0(lVar);
                    }
                } else if (m0Var instanceof c.n) {
                    c.n nVar = (c.n) m0Var;
                    c.o oVar10 = nVar.r;
                    if (!(oVar10 == null || oVar10.h() || (oVar = nVar.s) == null || oVar.h() || (str = nVar.o) == null)) {
                        b bVar2 = nVar.n;
                        if (bVar2 == null) {
                            bVar2 = b.d;
                        }
                        Bitmap bitmap = null;
                        if (str.startsWith("data:") && str.length() >= 14 && (indexOf = str.indexOf(44)) != -1 && indexOf >= 12 && ";base64".equals(str.substring(indexOf - 7, indexOf))) {
                            byte[] decode = Base64.decode(str.substring(indexOf + 1), 0);
                            bitmap = BitmapFactory.decodeByteArray(decode, 0, decode.length);
                        }
                        if (bitmap == null) {
                            Objects.requireNonNull(this.d);
                        } else {
                            f0(this.e, nVar);
                            if (t() && h0()) {
                                Matrix matrix5 = nVar.t;
                                if (matrix5 != null) {
                                    this.a.concat(matrix5);
                                }
                                c.o oVar11 = nVar.p;
                                float e5 = oVar11 != null ? oVar11.e(this) : 0.0f;
                                c.o oVar12 = nVar.q;
                                float f3 = oVar12 != null ? oVar12.f(this) : 0.0f;
                                float e6 = nVar.r.e(this);
                                float e7 = nVar.s.e(this);
                                g gVar2 = this.e;
                                gVar2.g = new c.a(e5, f3, e6, e7);
                                if (!gVar2.b.w.booleanValue()) {
                                    c.a aVar3 = this.e.g;
                                    Y(aVar3.b, aVar3.c, aVar3.d, aVar3.e);
                                }
                                c.a aVar4 = new c.a(0.0f, 0.0f, (float) bitmap.getWidth(), (float) bitmap.getHeight());
                                nVar.h = aVar4;
                                this.a.concat(l(this.e.g, aVar4, bVar2));
                                d0(nVar);
                                m(nVar, nVar.h);
                                boolean R5 = R();
                                g0();
                                this.a.drawBitmap(bitmap, 0.0f, 0.0f, this.e.e);
                                if (R5) {
                                    Q(nVar);
                                }
                            }
                        }
                    }
                } else if (m0Var instanceof c.u) {
                    c.u uVar = (c.u) m0Var;
                    f0(this.e, uVar);
                    if (t() && h0()) {
                        g gVar3 = this.e;
                        if (gVar3.d || gVar3.c) {
                            Matrix matrix6 = uVar.n;
                            if (matrix6 != null) {
                                this.a.concat(matrix6);
                            }
                            Path path = new c(this, uVar.o).a;
                            if (uVar.h == null) {
                                uVar.h = j(path);
                            }
                            d0(uVar);
                            n(uVar);
                            m(uVar, uVar.h);
                            boolean R6 = R();
                            g gVar4 = this.e;
                            if (gVar4.c) {
                                if (gVar4.b.d == null) {
                                    fillType = Path.FillType.WINDING;
                                } else if (b()[this.e.b.d.ordinal()] != 2) {
                                    fillType = Path.FillType.WINDING;
                                } else {
                                    fillType = Path.FillType.EVEN_ODD;
                                }
                                path.setFillType(fillType);
                                u(uVar, path);
                            }
                            if (this.e.d) {
                                v(path);
                            }
                            X(uVar);
                            if (R6) {
                                Q(uVar);
                            }
                        }
                    }
                } else if (m0Var instanceof c.a0) {
                    c.a0 a0Var = (c.a0) m0Var;
                    c.o oVar13 = a0Var.q;
                    if (oVar13 != null && a0Var.r != null && !oVar13.h() && !a0Var.r.h()) {
                        f0(this.e, a0Var);
                        if (t() && h0()) {
                            Matrix matrix7 = a0Var.n;
                            if (matrix7 != null) {
                                this.a.concat(matrix7);
                            }
                            Path P = P(a0Var);
                            d0(a0Var);
                            n(a0Var);
                            m(a0Var, a0Var.h);
                            boolean R7 = R();
                            if (this.e.c) {
                                u(a0Var, P);
                            }
                            if (this.e.d) {
                                v(P);
                            }
                            if (R7) {
                                Q(a0Var);
                            }
                        }
                    }
                } else if (m0Var instanceof c.C0037c) {
                    c.C0037c cVar = (c.C0037c) m0Var;
                    c.o oVar14 = cVar.q;
                    if (oVar14 != null && !oVar14.h()) {
                        f0(this.e, cVar);
                        if (t() && h0()) {
                            Matrix matrix8 = cVar.n;
                            if (matrix8 != null) {
                                this.a.concat(matrix8);
                            }
                            Path M = M(cVar);
                            d0(cVar);
                            n(cVar);
                            m(cVar, cVar.h);
                            boolean R8 = R();
                            if (this.e.c) {
                                u(cVar, M);
                            }
                            if (this.e.d) {
                                v(M);
                            }
                            if (R8) {
                                Q(cVar);
                            }
                        }
                    }
                } else if (m0Var instanceof c.h) {
                    c.h hVar = (c.h) m0Var;
                    c.o oVar15 = hVar.q;
                    if (oVar15 != null && hVar.r != null && !oVar15.h() && !hVar.r.h()) {
                        f0(this.e, hVar);
                        if (t() && h0()) {
                            Matrix matrix9 = hVar.n;
                            if (matrix9 != null) {
                                this.a.concat(matrix9);
                            }
                            Path N = N(hVar);
                            d0(hVar);
                            n(hVar);
                            m(hVar, hVar.h);
                            boolean R9 = R();
                            if (this.e.c) {
                                u(hVar, N);
                            }
                            if (this.e.d) {
                                v(N);
                            }
                            if (R9) {
                                Q(hVar);
                            }
                        }
                    }
                } else if (m0Var instanceof c.p) {
                    c.p pVar = (c.p) m0Var;
                    f0(this.e, pVar);
                    if (t() && h0() && this.e.d) {
                        Matrix matrix10 = pVar.n;
                        if (matrix10 != null) {
                            this.a.concat(matrix10);
                        }
                        c.o oVar16 = pVar.o;
                        float e8 = oVar16 == null ? 0.0f : oVar16.e(this);
                        c.o oVar17 = pVar.p;
                        float f4 = oVar17 == null ? 0.0f : oVar17.f(this);
                        c.o oVar18 = pVar.q;
                        float e9 = oVar18 == null ? 0.0f : oVar18.e(this);
                        c.o oVar19 = pVar.r;
                        if (oVar19 != null) {
                            f2 = oVar19.f(this);
                        }
                        if (pVar.h == null) {
                            pVar.h = new c.a(Math.min(e8, f4), Math.min(f4, f2), Math.abs(e9 - e8), Math.abs(f2 - f4));
                        }
                        Path path2 = new Path();
                        path2.moveTo(e8, f4);
                        path2.lineTo(e9, f2);
                        d0(pVar);
                        n(pVar);
                        m(pVar, pVar.h);
                        boolean R10 = R();
                        v(path2);
                        X(pVar);
                        if (R10) {
                            Q(pVar);
                        }
                    }
                } else if (m0Var instanceof c.z) {
                    c.y yVar = (c.z) m0Var;
                    f0(this.e, yVar);
                    if (t() && h0()) {
                        g gVar5 = this.e;
                        if (gVar5.d || gVar5.c) {
                            Matrix matrix11 = yVar.n;
                            if (matrix11 != null) {
                                this.a.concat(matrix11);
                            }
                            if (yVar.o.length >= 2) {
                                Path O = O(yVar);
                                d0(yVar);
                                n(yVar);
                                m(yVar, yVar.h);
                                boolean R11 = R();
                                if (this.e.c) {
                                    u(yVar, O);
                                }
                                if (this.e.d) {
                                    v(O);
                                }
                                X(yVar);
                                if (R11) {
                                    Q(yVar);
                                }
                            }
                        }
                    }
                } else if (m0Var instanceof c.y) {
                    c.y yVar2 = (c.y) m0Var;
                    f0(this.e, yVar2);
                    if (t() && h0()) {
                        g gVar6 = this.e;
                        if (gVar6.d || gVar6.c) {
                            Matrix matrix12 = yVar2.n;
                            if (matrix12 != null) {
                                this.a.concat(matrix12);
                            }
                            if (yVar2.o.length >= 2) {
                                Path O2 = O(yVar2);
                                d0(yVar2);
                                n(yVar2);
                                m(yVar2, yVar2.h);
                                boolean R12 = R();
                                if (this.e.c) {
                                    u(yVar2, O2);
                                }
                                if (this.e.d) {
                                    v(O2);
                                }
                                X(yVar2);
                                if (R12) {
                                    Q(yVar2);
                                }
                            }
                        }
                    }
                } else if (m0Var instanceof c.v0) {
                    c.v0 v0Var = (c.v0) m0Var;
                    f0(this.e, v0Var);
                    if (t()) {
                        Matrix matrix13 = v0Var.r;
                        if (matrix13 != null) {
                            this.a.concat(matrix13);
                        }
                        List<c.o> list = v0Var.n;
                        float e10 = (list == null || list.size() == 0) ? 0.0f : v0Var.n.get(0).e(this);
                        List<c.o> list2 = v0Var.o;
                        float f5 = (list2 == null || list2.size() == 0) ? 0.0f : v0Var.o.get(0).f(this);
                        List<c.o> list3 = v0Var.p;
                        float e11 = (list3 == null || list3.size() == 0) ? 0.0f : v0Var.p.get(0).e(this);
                        List<c.o> list4 = v0Var.q;
                        if (!(list4 == null || list4.size() == 0)) {
                            f2 = v0Var.q.get(0).f(this);
                        }
                        c.d0.e F = F();
                        if (F != c.d0.e.Start) {
                            float k3 = k(v0Var);
                            if (F == c.d0.e.Middle) {
                                k3 /= 2.0f;
                            }
                            e10 -= k3;
                        }
                        if (v0Var.h == null) {
                            h hVar2 = new h(e10, f5);
                            x(v0Var, hVar2);
                            RectF rectF = hVar2.c;
                            v0Var.h = new c.a(rectF.left, rectF.top, rectF.width(), hVar2.c.height());
                        }
                        d0(v0Var);
                        n(v0Var);
                        m(v0Var, v0Var.h);
                        boolean R13 = R();
                        x(v0Var, new e(e10 + e11, f5 + f2));
                        if (R13) {
                            Q(v0Var);
                        }
                    }
                }
            }
            a0();
        }
    }

    private void U(c.i0 i0Var, boolean z) {
        if (z) {
            this.g.push(i0Var);
            this.h.push(this.a.getMatrix());
        }
        for (c.m0 m0Var : ((c.g0) i0Var).i) {
            T(m0Var);
        }
        if (z) {
            this.g.pop();
            this.h.pop();
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARNING: Removed duplicated region for block: B:17:0x0063  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0068  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x006d  */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0072  */
    /* JADX WARNING: Removed duplicated region for block: B:25:0x0079  */
    /* JADX WARNING: Removed duplicated region for block: B:26:0x007e  */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x0084  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x008c  */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x010e  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x0111  */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0121  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x0130  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x0153  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void W(com.caverock.androidsvg.c.q r12, com.caverock.androidsvg.d.b r13) {
        /*
        // Method dump skipped, instructions count: 362
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.d.W(com.caverock.androidsvg.c$q, com.caverock.androidsvg.d$b):void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:16:0x003d  */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x005f  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x007d  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x008c  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0155 A[ADDED_TO_REGION, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x0156  */
    /* JADX WARNING: Removed duplicated region for block: B:70:0x016a  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x0175  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x0189  */
    /* JADX WARNING: Removed duplicated region for block: B:82:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void X(com.caverock.androidsvg.c.k r22) {
        /*
        // Method dump skipped, instructions count: 457
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.d.X(com.caverock.androidsvg.c$k):void");
    }

    private void Y(float f2, float f3, float f4, float f5) {
        float f6 = f4 + f2;
        float f7 = f5 + f3;
        c.b bVar = this.e.b.x;
        if (bVar != null) {
            f2 += bVar.d.e(this);
            f3 += this.e.b.x.a.f(this);
            f6 -= this.e.b.x.b.e(this);
            f7 -= this.e.b.x.c.f(this);
        }
        this.a.clipRect(f2, f3, f6, f7);
    }

    private void Z(g gVar, boolean z, c.n0 n0Var) {
        int i2;
        c.d0 d0Var = gVar.b;
        float floatValue = (z ? d0Var.e : d0Var.g).floatValue();
        if (n0Var instanceof c.e) {
            i2 = ((c.e) n0Var).b;
        } else if (n0Var instanceof c.f) {
            i2 = gVar.b.o.b;
        } else {
            return;
        }
        int q = i2 | (q(floatValue) << 24);
        if (z) {
            gVar.e.setColor(q);
        } else {
            gVar.f.setColor(q);
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(26:3|4|5|6|(2:8|9)|10|(2:12|13)|14|16|17|18|20|21|22|(2:24|25)|26|28|29|30|31|32|33|34|35|36|38) */
    /* JADX WARNING: Can't wrap try/catch for region: R(27:3|4|5|6|(2:8|9)|10|12|13|14|16|17|18|20|21|22|(2:24|25)|26|28|29|30|31|32|33|34|35|36|38) */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:30:0x0026 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:32:0x0028 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:34:0x002a */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static /* synthetic */ int[] a() {
        /*
            int[] r0 = com.caverock.androidsvg.d.k
            if (r0 == 0) goto L_0x0005
            return r0
        L_0x0005:
            com.caverock.androidsvg.b.a.values()
            r0 = 10
            int[] r1 = new int[r0]
            r2 = 0
            r3 = 1
            r1[r2] = r3     // Catch:{ NoSuchFieldError -> 0x0010 }
        L_0x0010:
            r2 = 9
            r1[r2] = r0     // Catch:{ NoSuchFieldError -> 0x0014 }
        L_0x0014:
            r0 = 7
            r4 = 6
            r1[r4] = r0     // Catch:{ NoSuchFieldError -> 0x0018 }
        L_0x0018:
            r5 = 4
            r6 = 3
            r1[r6] = r5     // Catch:{ NoSuchFieldError -> 0x001c }
        L_0x001c:
            r7 = 8
            r1[r7] = r2     // Catch:{ NoSuchFieldError -> 0x0020 }
        L_0x0020:
            r2 = 5
            r1[r2] = r4     // Catch:{ NoSuchFieldError -> 0x0023 }
        L_0x0023:
            r4 = 2
            r1[r4] = r6     // Catch:{ NoSuchFieldError -> 0x0026 }
        L_0x0026:
            r1[r0] = r7     // Catch:{ NoSuchFieldError -> 0x0028 }
        L_0x0028:
            r1[r5] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
        L_0x002a:
            r1[r3] = r4     // Catch:{ NoSuchFieldError -> 0x002c }
        L_0x002c:
            com.caverock.androidsvg.d.k = r1
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.d.a():int[]");
    }

    private void a0() {
        this.a.restore();
        this.e = this.f.pop();
    }

    static /* synthetic */ int[] b() {
        int[] iArr = n;
        if (iArr != null) {
            return iArr;
        }
        c.d0.a.values();
        int[] iArr2 = new int[2];
        try {
            iArr2[1] = 2;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[0] = 1;
        } catch (NoSuchFieldError unused2) {
        }
        n = iArr2;
        return iArr2;
    }

    private void b0() {
        this.a.save();
        this.f.push(this.e);
        this.e = (g) this.e.clone();
    }

    private String c0(String str, boolean z, boolean z2) {
        if (this.e.i) {
            return str.replaceAll("[\\n\\t]", " ");
        }
        String replaceAll = str.replaceAll("\\n", "").replaceAll("\\t", " ");
        if (z) {
            replaceAll = replaceAll.replaceAll("^\\s+", "");
        }
        if (z2) {
            replaceAll = replaceAll.replaceAll("\\s+$", "");
        }
        return replaceAll.replaceAll("\\s{2,}", " ");
    }

    private void d0(c.j0 j0Var) {
        if (!(j0Var.b == null || j0Var.h == null)) {
            Matrix matrix = new Matrix();
            if (this.h.peek().invert(matrix)) {
                c.a aVar = j0Var.h;
                c.a aVar2 = j0Var.h;
                c.a aVar3 = j0Var.h;
                float[] fArr = {aVar.b, aVar.c, aVar.a(), aVar2.c, aVar2.a(), j0Var.h.b(), aVar3.b, aVar3.b()};
                matrix.preConcat(this.a.getMatrix());
                matrix.mapPoints(fArr);
                RectF rectF = new RectF(fArr[0], fArr[1], fArr[0], fArr[1]);
                for (int i2 = 2; i2 <= 6; i2 += 2) {
                    if (fArr[i2] < rectF.left) {
                        rectF.left = fArr[i2];
                    }
                    if (fArr[i2] > rectF.right) {
                        rectF.right = fArr[i2];
                    }
                    int i3 = i2 + 1;
                    if (fArr[i3] < rectF.top) {
                        rectF.top = fArr[i3];
                    }
                    if (fArr[i3] > rectF.bottom) {
                        rectF.bottom = fArr[i3];
                    }
                }
                c.j0 j0Var2 = (c.j0) this.g.peek();
                c.a aVar4 = j0Var2.h;
                if (aVar4 == null) {
                    float f2 = rectF.left;
                    float f3 = rectF.top;
                    j0Var2.h = new c.a(f2, f3, rectF.right - f2, rectF.bottom - f3);
                    return;
                }
                float f4 = rectF.left;
                float f5 = rectF.top;
                float f6 = rectF.right - f4;
                float f7 = rectF.bottom - f5;
                if (f4 < aVar4.b) {
                    aVar4.b = f4;
                }
                if (f5 < aVar4.c) {
                    aVar4.c = f5;
                }
                float f8 = f4 + f6;
                if (f8 > aVar4.a()) {
                    aVar4.d = f8 - aVar4.b;
                }
                float f9 = f5 + f7;
                if (f9 > aVar4.b()) {
                    aVar4.e = f9 - aVar4.c;
                }
            }
        }
    }

    private void e0(g gVar, c.d0 d0Var) {
        c cVar;
        if (L(d0Var, PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM)) {
            gVar.b.o = d0Var.o;
        }
        if (L(d0Var, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH)) {
            gVar.b.n = d0Var.n;
        }
        boolean z = false;
        if (L(d0Var, 1)) {
            gVar.b.c = d0Var.c;
            gVar.c = d0Var.c != null;
        }
        if (L(d0Var, 4)) {
            gVar.b.e = d0Var.e;
        }
        if (L(d0Var, 6149)) {
            Z(gVar, true, gVar.b.c);
        }
        if (L(d0Var, 2)) {
            gVar.b.d = d0Var.d;
        }
        if (L(d0Var, 8)) {
            gVar.b.f = d0Var.f;
            gVar.d = d0Var.f != null;
        }
        if (L(d0Var, 16)) {
            gVar.b.g = d0Var.g;
        }
        if (L(d0Var, 6168)) {
            Z(gVar, false, gVar.b.f);
        }
        if (L(d0Var, 34359738368L)) {
            gVar.b.M = d0Var.M;
        }
        if (L(d0Var, 32)) {
            c.d0 d0Var2 = gVar.b;
            c.o oVar = d0Var.h;
            d0Var2.h = oVar;
            gVar.f.setStrokeWidth(oVar.c(this));
        }
        if (L(d0Var, 64)) {
            gVar.b.i = d0Var.i;
            int[] iArr = l;
            if (iArr == null) {
                c.d0.EnumC0038c.values();
                iArr = new int[]{1, 2, 3};
                l = iArr;
            }
            int i2 = iArr[d0Var.i.ordinal()];
            if (i2 == 1) {
                gVar.f.setStrokeCap(Paint.Cap.BUTT);
            } else if (i2 == 2) {
                gVar.f.setStrokeCap(Paint.Cap.ROUND);
            } else if (i2 == 3) {
                gVar.f.setStrokeCap(Paint.Cap.SQUARE);
            }
        }
        if (L(d0Var, 128)) {
            gVar.b.j = d0Var.j;
            int[] iArr2 = m;
            if (iArr2 == null) {
                c.d0.d.values();
                iArr2 = new int[]{1, 2, 3};
                m = iArr2;
            }
            int i3 = iArr2[d0Var.j.ordinal()];
            if (i3 == 1) {
                gVar.f.setStrokeJoin(Paint.Join.MITER);
            } else if (i3 == 2) {
                gVar.f.setStrokeJoin(Paint.Join.ROUND);
            } else if (i3 == 3) {
                gVar.f.setStrokeJoin(Paint.Join.BEVEL);
            }
        }
        if (L(d0Var, 256)) {
            gVar.b.k = d0Var.k;
            gVar.f.setStrokeMiter(d0Var.k.floatValue());
        }
        if (L(d0Var, 512)) {
            gVar.b.l = d0Var.l;
        }
        if (L(d0Var, PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID)) {
            gVar.b.m = d0Var.m;
        }
        Typeface typeface = null;
        if (L(d0Var, 1536)) {
            c.o[] oVarArr = gVar.b.l;
            if (oVarArr == null) {
                gVar.f.setPathEffect(null);
            } else {
                int length = oVarArr.length;
                int i4 = length % 2 == 0 ? length : length * 2;
                float[] fArr = new float[i4];
                float f2 = 0.0f;
                for (int i5 = 0; i5 < i4; i5++) {
                    fArr[i5] = gVar.b.l[i5 % length].c(this);
                    f2 += fArr[i5];
                }
                if (f2 == 0.0f) {
                    gVar.f.setPathEffect(null);
                } else {
                    float c2 = gVar.b.m.c(this);
                    if (c2 < 0.0f) {
                        c2 = (c2 % f2) + f2;
                    }
                    gVar.f.setPathEffect(new DashPathEffect(fArr, c2));
                }
            }
        }
        if (L(d0Var, PlaybackStateCompat.ACTION_PREPARE)) {
            float textSize = this.e.e.getTextSize();
            gVar.b.q = d0Var.q;
            gVar.e.setTextSize(d0Var.q.d(this, textSize));
            gVar.f.setTextSize(d0Var.q.d(this, textSize));
        }
        if (L(d0Var, PlaybackStateCompat.ACTION_PLAY_FROM_URI)) {
            gVar.b.p = d0Var.p;
        }
        if (L(d0Var, PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID)) {
            if (d0Var.r.intValue() == -1 && gVar.b.r.intValue() > 100) {
                c.d0 d0Var3 = gVar.b;
                d0Var3.r = Integer.valueOf(d0Var3.r.intValue() - 100);
            } else if (d0Var.r.intValue() != 1 || gVar.b.r.intValue() >= 900) {
                gVar.b.r = d0Var.r;
            } else {
                c.d0 d0Var4 = gVar.b;
                d0Var4.r = Integer.valueOf(d0Var4.r.intValue() + 100);
            }
        }
        if (L(d0Var, PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH)) {
            gVar.b.s = d0Var.s;
        }
        if (L(d0Var, 106496)) {
            if (gVar.b.p != null && (cVar = this.d) != null) {
                Objects.requireNonNull(cVar);
                for (String str : gVar.b.p) {
                    c.d0 d0Var5 = gVar.b;
                    typeface = o(str, d0Var5.r, d0Var5.s);
                    if (typeface != null) {
                        break;
                    }
                }
            }
            if (typeface == null) {
                c.d0 d0Var6 = gVar.b;
                typeface = o("sans-serif", d0Var6.r, d0Var6.s);
            }
            gVar.e.setTypeface(typeface);
            gVar.f.setTypeface(typeface);
        }
        if (L(d0Var, PlaybackStateCompat.ACTION_PREPARE_FROM_URI)) {
            gVar.b.t = d0Var.t;
            Paint paint = gVar.e;
            c.d0.f fVar = d0Var.t;
            c.d0.f fVar2 = c.d0.f.LineThrough;
            paint.setStrikeThruText(fVar == fVar2);
            Paint paint2 = gVar.e;
            c.d0.f fVar3 = d0Var.t;
            c.d0.f fVar4 = c.d0.f.Underline;
            paint2.setUnderlineText(fVar3 == fVar4);
            gVar.f.setStrikeThruText(d0Var.t == fVar2);
            Paint paint3 = gVar.f;
            if (d0Var.t == fVar4) {
                z = true;
            }
            paint3.setUnderlineText(z);
        }
        if (L(d0Var, 68719476736L)) {
            gVar.b.u = d0Var.u;
        }
        if (L(d0Var, PlaybackStateCompat.ACTION_SET_REPEAT_MODE)) {
            gVar.b.v = d0Var.v;
        }
        if (L(d0Var, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED)) {
            gVar.b.w = d0Var.w;
        }
        if (L(d0Var, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE)) {
            gVar.b.y = d0Var.y;
        }
        if (L(d0Var, 4194304)) {
            gVar.b.z = d0Var.z;
        }
        if (L(d0Var, 8388608)) {
            gVar.b.A = d0Var.A;
        }
        if (L(d0Var, 16777216)) {
            gVar.b.B = d0Var.B;
        }
        if (L(d0Var, 33554432)) {
            gVar.b.C = d0Var.C;
        }
        if (L(d0Var, PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED)) {
            gVar.b.x = d0Var.x;
        }
        if (L(d0Var, 268435456)) {
            gVar.b.F = d0Var.F;
        }
        if (L(d0Var, 536870912)) {
            gVar.b.G = d0Var.G;
        }
        if (L(d0Var, 1073741824)) {
            gVar.b.H = d0Var.H;
        }
        if (L(d0Var, 67108864)) {
            gVar.b.D = d0Var.D;
        }
        if (L(d0Var, 134217728)) {
            gVar.b.E = d0Var.E;
        }
        if (L(d0Var, 8589934592L)) {
            gVar.b.K = d0Var.K;
        }
        if (L(d0Var, 17179869184L)) {
            gVar.b.L = d0Var.L;
        }
    }

    private void f0(g gVar, c.k0 k0Var) {
        boolean z = k0Var.b == null;
        c.d0 d0Var = gVar.b;
        Boolean bool = Boolean.TRUE;
        d0Var.B = bool;
        if (!z) {
            bool = Boolean.FALSE;
        }
        d0Var.w = bool;
        d0Var.x = null;
        d0Var.F = null;
        d0Var.n = Float.valueOf(1.0f);
        d0Var.D = c.e.c;
        d0Var.E = Float.valueOf(1.0f);
        d0Var.H = null;
        d0Var.I = null;
        d0Var.J = Float.valueOf(1.0f);
        d0Var.K = null;
        d0Var.L = Float.valueOf(1.0f);
        d0Var.M = c.d0.h.None;
        c.d0 d0Var2 = k0Var.e;
        if (d0Var2 != null) {
            e0(gVar, d0Var2);
        }
        if (this.d.h()) {
            for (a.f fVar : this.d.c()) {
                if (a.h(fVar.a, k0Var)) {
                    e0(gVar, fVar.b);
                }
            }
        }
        c.d0 d0Var3 = k0Var.f;
        if (d0Var3 != null) {
            e0(gVar, d0Var3);
        }
    }

    static void g(float f2, float f3, float f4, float f5, float f6, boolean z, boolean z2, float f7, float f8, c.w wVar) {
        float f9;
        c.w wVar2;
        float f10;
        double d2;
        if (!(f2 == f7 && f3 == f8)) {
            if (f4 == 0.0f) {
                f9 = f7;
                f10 = f8;
                wVar2 = wVar;
            } else if (f5 == 0.0f) {
                wVar2 = wVar;
                f9 = f7;
                f10 = f8;
            } else {
                float abs = Math.abs(f4);
                float abs2 = Math.abs(f5);
                double d3 = (double) f6;
                Double.isNaN(d3);
                Double.isNaN(d3);
                Double.isNaN(d3);
                double radians = (double) ((float) Math.toRadians(d3 % 360.0d));
                double cos = Math.cos(radians);
                double sin = Math.sin(radians);
                double d4 = (double) (f2 - f7);
                Double.isNaN(d4);
                Double.isNaN(d4);
                Double.isNaN(d4);
                double d5 = d4 / 2.0d;
                double d6 = (double) (f3 - f8);
                Double.isNaN(d6);
                Double.isNaN(d6);
                Double.isNaN(d6);
                double d7 = d6 / 2.0d;
                double d8 = (sin * d7) + (cos * d5);
                double d9 = (d7 * cos) + ((-sin) * d5);
                double d10 = (double) (abs * abs);
                double d11 = (double) (abs2 * abs2);
                double d12 = d8 * d8;
                double d13 = d9 * d9;
                Double.isNaN(d10);
                Double.isNaN(d10);
                Double.isNaN(d10);
                Double.isNaN(d11);
                Double.isNaN(d11);
                Double.isNaN(d11);
                double d14 = (d13 / d11) + (d12 / d10);
                if (d14 > 1.0d) {
                    abs *= (float) Math.sqrt(d14);
                    abs2 *= (float) Math.sqrt(d14);
                    d10 = (double) (abs * abs);
                    d11 = (double) (abs2 * abs2);
                }
                double d15 = (double) (z == z2 ? -1 : 1);
                double d16 = d10 * d11;
                double d17 = d10 * d13;
                double d18 = d11 * d12;
                double d19 = ((d16 - d17) - d18) / (d17 + d18);
                if (d19 < 0.0d) {
                    d19 = 0.0d;
                }
                double sqrt = Math.sqrt(d19);
                Double.isNaN(d15);
                Double.isNaN(d15);
                Double.isNaN(d15);
                double d20 = sqrt * d15;
                double d21 = (double) abs;
                Double.isNaN(d21);
                Double.isNaN(d21);
                Double.isNaN(d21);
                double d22 = (double) abs2;
                Double.isNaN(d22);
                Double.isNaN(d22);
                Double.isNaN(d22);
                double d23 = ((d21 * d9) / d22) * d20;
                Double.isNaN(d22);
                Double.isNaN(d22);
                Double.isNaN(d22);
                Double.isNaN(d21);
                Double.isNaN(d21);
                Double.isNaN(d21);
                float f11 = abs;
                double d24 = d20 * (-((d22 * d8) / d21));
                double d25 = (double) (f2 + f7);
                Double.isNaN(d25);
                Double.isNaN(d25);
                Double.isNaN(d25);
                double d26 = (double) (f3 + f8);
                Double.isNaN(d26);
                Double.isNaN(d26);
                Double.isNaN(d26);
                double d27 = ((cos * d23) - (sin * d24)) + (d25 / 2.0d);
                double d28 = (cos * d24) + (sin * d23) + (d26 / 2.0d);
                Double.isNaN(d21);
                Double.isNaN(d21);
                Double.isNaN(d21);
                double d29 = (d8 - d23) / d21;
                Double.isNaN(d22);
                Double.isNaN(d22);
                Double.isNaN(d22);
                double d30 = (d9 - d24) / d22;
                Double.isNaN(d21);
                Double.isNaN(d21);
                Double.isNaN(d21);
                double d31 = ((-d8) - d23) / d21;
                Double.isNaN(d22);
                Double.isNaN(d22);
                Double.isNaN(d22);
                double d32 = ((-d9) - d24) / d22;
                double d33 = (d30 * d30) + (d29 * d29);
                double d34 = -1.0d;
                double degrees = Math.toDegrees(Math.acos(d29 / Math.sqrt(d33)) * (d30 < 0.0d ? -1.0d : 1.0d));
                double sqrt2 = Math.sqrt(((d32 * d32) + (d31 * d31)) * d33);
                double d35 = (d30 * d32) + (d29 * d31);
                if ((d29 * d32) - (d30 * d31) >= 0.0d) {
                    d34 = 1.0d;
                }
                double degrees2 = Math.toDegrees(Math.acos(d35 / sqrt2) * d34);
                if (z2 || degrees2 <= 0.0d) {
                    d2 = 360.0d;
                    if (z2 && degrees2 < 0.0d) {
                        degrees2 += 360.0d;
                    }
                } else {
                    d2 = 360.0d;
                    degrees2 -= 360.0d;
                }
                double d36 = degrees2 % d2;
                int ceil = (int) Math.ceil(Math.abs(d36) / 90.0d);
                double radians2 = Math.toRadians(degrees % d2);
                double radians3 = Math.toRadians(d36);
                double d37 = (double) ceil;
                Double.isNaN(d37);
                Double.isNaN(d37);
                Double.isNaN(d37);
                Double.isNaN(d37);
                float f12 = (float) (radians3 / d37);
                double d38 = (double) f12;
                Double.isNaN(d38);
                Double.isNaN(d38);
                Double.isNaN(d38);
                Double.isNaN(d38);
                double d39 = d38 / 2.0d;
                double sin2 = (Math.sin(d39) * 1.3333333333333333d) / (Math.cos(d39) + 1.0d);
                int i2 = ceil * 6;
                float[] fArr = new float[i2];
                int i3 = 0;
                int i4 = 0;
                while (i3 < ceil) {
                    double d40 = (double) (((float) i3) * f12);
                    Double.isNaN(d40);
                    Double.isNaN(d40);
                    Double.isNaN(d40);
                    Double.isNaN(d40);
                    double d41 = d40 + radians2;
                    double cos2 = Math.cos(d41);
                    double sin3 = Math.sin(d41);
                    int i5 = i4 + 1;
                    fArr[i4] = (float) (cos2 - (sin2 * sin3));
                    int i6 = i5 + 1;
                    fArr[i5] = (float) ((cos2 * sin2) + sin3);
                    Double.isNaN(d38);
                    Double.isNaN(d38);
                    Double.isNaN(d38);
                    Double.isNaN(d38);
                    double d42 = d41 + d38;
                    double cos3 = Math.cos(d42);
                    double sin4 = Math.sin(d42);
                    int i7 = i6 + 1;
                    fArr[i6] = (float) ((sin2 * sin4) + cos3);
                    int i8 = i7 + 1;
                    fArr[i7] = (float) (sin4 - (sin2 * cos3));
                    int i9 = i8 + 1;
                    fArr[i8] = (float) cos3;
                    i4 = i9 + 1;
                    fArr[i9] = (float) sin4;
                    i3++;
                    d27 = d27;
                    i2 = i2;
                    radians2 = radians2;
                    ceil = ceil;
                    f11 = f11;
                    f12 = f12;
                    d38 = d38;
                }
                Matrix matrix = new Matrix();
                matrix.postScale(f11, abs2);
                matrix.postRotate(f6);
                matrix.postTranslate((float) d27, (float) d28);
                matrix.mapPoints(fArr);
                fArr[i2 - 2] = f7;
                fArr[i2 - 1] = f8;
                for (int i10 = 0; i10 < i2; i10 += 6) {
                    wVar.c(fArr[i10], fArr[i10 + 1], fArr[i10 + 2], fArr[i10 + 3], fArr[i10 + 4], fArr[i10 + 5]);
                }
                return;
            }
            wVar2.e(f9, f10);
        }
    }

    private void g0() {
        int i2;
        c.d0 d0Var = this.e.b;
        c.n0 n0Var = d0Var.K;
        if (n0Var instanceof c.e) {
            i2 = ((c.e) n0Var).b;
        } else if (n0Var instanceof c.f) {
            i2 = d0Var.o.b;
        } else {
            return;
        }
        Float f2 = d0Var.L;
        if (f2 != null) {
            i2 |= q(f2.floatValue()) << 24;
        }
        this.a.drawColor(i2);
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private boolean h0() {
        Boolean bool = this.e.b.C;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    private void i(c.m0 m0Var, boolean z, Path path, Matrix matrix) {
        Path path2;
        if (t()) {
            r();
            if (m0Var instanceof c.d1) {
                if (z) {
                    c.d1 d1Var = (c.d1) m0Var;
                    f0(this.e, d1Var);
                    if (t() && h0()) {
                        Matrix matrix2 = d1Var.n;
                        if (matrix2 != null) {
                            matrix.preConcat(matrix2);
                        }
                        c.m0 k2 = d1Var.a.k(d1Var.o);
                        if (k2 == null) {
                            y("Use reference '%s' not found", d1Var.o);
                        } else {
                            m(d1Var, d1Var.h);
                            i(k2, false, path, matrix);
                        }
                    }
                } else {
                    y("<use> elements inside a <clipPath> cannot reference another <use>", new Object[0]);
                }
            } else if (m0Var instanceof c.u) {
                c.u uVar = (c.u) m0Var;
                f0(this.e, uVar);
                if (t() && h0()) {
                    Matrix matrix3 = uVar.n;
                    if (matrix3 != null) {
                        matrix.preConcat(matrix3);
                    }
                    Path path3 = new c(this, uVar.o).a;
                    if (uVar.h == null) {
                        uVar.h = j(path3);
                    }
                    m(uVar, uVar.h);
                    path.setFillType(G());
                    path.addPath(path3, matrix);
                }
            } else if (m0Var instanceof c.v0) {
                c.v0 v0Var = (c.v0) m0Var;
                f0(this.e, v0Var);
                if (t()) {
                    Matrix matrix4 = v0Var.r;
                    if (matrix4 != null) {
                        matrix.preConcat(matrix4);
                    }
                    List<c.o> list = v0Var.n;
                    float f2 = 0.0f;
                    float e2 = (list == null || list.size() == 0) ? 0.0f : v0Var.n.get(0).e(this);
                    List<c.o> list2 = v0Var.o;
                    float f3 = (list2 == null || list2.size() == 0) ? 0.0f : v0Var.o.get(0).f(this);
                    List<c.o> list3 = v0Var.p;
                    float e3 = (list3 == null || list3.size() == 0) ? 0.0f : v0Var.p.get(0).e(this);
                    List<c.o> list4 = v0Var.q;
                    if (!(list4 == null || list4.size() == 0)) {
                        f2 = v0Var.q.get(0).f(this);
                    }
                    if (this.e.b.v != c.d0.e.Start) {
                        j jVar = new j(null);
                        x(v0Var, jVar);
                        float f4 = jVar.a;
                        if (this.e.b.v == c.d0.e.Middle) {
                            f4 /= 2.0f;
                        }
                        e2 -= f4;
                    }
                    if (v0Var.h == null) {
                        h hVar = new h(e2, f3);
                        x(v0Var, hVar);
                        RectF rectF = hVar.c;
                        v0Var.h = new c.a(rectF.left, rectF.top, rectF.width(), hVar.c.height());
                    }
                    m(v0Var, v0Var.h);
                    Path path4 = new Path();
                    x(v0Var, new f(e2 + e3, f3 + f2, path4));
                    path.setFillType(G());
                    path.addPath(path4, matrix);
                }
            } else if (m0Var instanceof c.k) {
                c.k kVar = (c.k) m0Var;
                f0(this.e, kVar);
                if (t() && h0()) {
                    Matrix matrix5 = kVar.n;
                    if (matrix5 != null) {
                        matrix.preConcat(matrix5);
                    }
                    if (kVar instanceof c.a0) {
                        path2 = P((c.a0) kVar);
                    } else if (kVar instanceof c.C0037c) {
                        path2 = M((c.C0037c) kVar);
                    } else if (kVar instanceof c.h) {
                        path2 = N((c.h) kVar);
                    } else if (kVar instanceof c.y) {
                        path2 = O((c.y) kVar);
                    }
                    m(kVar, kVar.h);
                    path.setFillType(path2.getFillType());
                    path.addPath(path2, matrix);
                }
            } else {
                y("Invalid %s element found in clipPath definition", m0Var.getClass().getSimpleName());
            }
            this.a.restore();
            this.e = this.f.pop();
        }
    }

    /* access modifiers changed from: private */
    public static void i0(String str, Object... objArr) {
        Log.w("SVGAndroidRenderer", String.format(str, objArr));
    }

    private c.a j(Path path) {
        RectF rectF = new RectF();
        path.computeBounds(rectF, true);
        return new c.a(rectF.left, rectF.top, rectF.width(), rectF.height());
    }

    private float k(c.x0 x0Var) {
        j jVar = new j(null);
        x(x0Var, jVar);
        return jVar.a;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:0x006e, code lost:
        if (r6 != 10) goto L_0x007a;
     */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x008c  */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x0090  */
    /* JADX WARNING: Removed duplicated region for block: B:32:0x0095 A[PHI: r4 
      PHI: (r4v2 float) = (r4v1 float), (r4v3 float) binds: [B:28:0x0088, B:31:0x0094] A[DONT_GENERATE, DONT_INLINE]] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.graphics.Matrix l(com.caverock.androidsvg.c.a r10, com.caverock.androidsvg.c.a r11, com.caverock.androidsvg.b r12) {
        /*
        // Method dump skipped, instructions count: 180
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.d.l(com.caverock.androidsvg.c$a, com.caverock.androidsvg.c$a, com.caverock.androidsvg.b):android.graphics.Matrix");
    }

    private void m(c.j0 j0Var, c.a aVar) {
        String str = this.e.b.F;
        if (str != null) {
            c.m0 k2 = j0Var.a.k(str);
            if (k2 == null) {
                y("ClipPath reference '%s' not found", this.e.b.F);
                return;
            }
            c.d dVar = (c.d) k2;
            if (dVar.i.isEmpty()) {
                this.a.clipRect(0, 0, 0, 0);
                return;
            }
            Boolean bool = dVar.o;
            boolean z = bool == null || bool.booleanValue();
            if (!(j0Var instanceof c.l) || z) {
                r();
                if (!z) {
                    Matrix matrix = new Matrix();
                    matrix.preTranslate(aVar.b, aVar.c);
                    matrix.preScale(aVar.d, aVar.e);
                    this.a.concat(matrix);
                }
                Matrix matrix2 = dVar.n;
                if (matrix2 != null) {
                    this.a.concat(matrix2);
                }
                this.e = D(dVar);
                m(dVar, dVar.h);
                Path path = new Path();
                for (c.m0 m0Var : dVar.i) {
                    i(m0Var, true, path, new Matrix());
                }
                this.a.clipPath(path);
                this.a.restore();
                this.e = this.f.pop();
                return;
            }
            i0("<clipPath clipPathUnits=\"objectBoundingBox\"> is not supported when referenced from container elements (like %s)", j0Var.getClass().getSimpleName());
        }
    }

    private void n(c.j0 j0Var) {
        c.n0 n0Var = this.e.b.c;
        if (n0Var instanceof c.t) {
            s(true, j0Var.h, (c.t) n0Var);
        }
        c.n0 n0Var2 = this.e.b.f;
        if (n0Var2 instanceof c.t) {
            s(false, j0Var.h, (c.t) n0Var2);
        }
    }

    private Typeface o(String str, Integer num, c.d0.b bVar) {
        int i2 = 1;
        boolean z = bVar == c.d0.b.Italic;
        if (num.intValue() <= 500) {
            i2 = z ? 2 : 0;
        } else if (z) {
            i2 = 3;
        }
        if (str.equals("serif")) {
            return Typeface.create(Typeface.SERIF, i2);
        }
        if (str.equals("sans-serif")) {
            return Typeface.create(Typeface.SANS_SERIF, i2);
        }
        if (str.equals("monospace")) {
            return Typeface.create(Typeface.MONOSPACE, i2);
        }
        if (str.equals("cursive")) {
            return Typeface.create(Typeface.SANS_SERIF, i2);
        }
        if (str.equals("fantasy")) {
            return Typeface.create(Typeface.SANS_SERIF, i2);
        }
        return null;
    }

    private void p(c.m0 m0Var) {
        Boolean bool;
        if ((m0Var instanceof c.k0) && (bool = ((c.k0) m0Var).d) != null) {
            this.e.i = bool.booleanValue();
        }
    }

    private int q(float f2) {
        int i2 = (int) (f2 * 256.0f);
        if (i2 < 0) {
            return 0;
        }
        if (i2 > 255) {
            return 255;
        }
        return i2;
    }

    private void r() {
        this.a.save(1);
        this.f.push(this.e);
        this.e = (g) this.e.clone();
    }

    /* JADX WARNING: Removed duplicated region for block: B:181:0x0323  */
    /* JADX WARNING: Removed duplicated region for block: B:219:? A[RETURN, SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00d9  */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x00eb  */
    /* JADX WARNING: Removed duplicated region for block: B:67:0x00f6  */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x0107  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void s(boolean r33, com.caverock.androidsvg.c.a r34, com.caverock.androidsvg.c.t r35) {
        /*
        // Method dump skipped, instructions count: 944
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.d.s(boolean, com.caverock.androidsvg.c$a, com.caverock.androidsvg.c$t):void");
    }

    private boolean t() {
        Boolean bool = this.e.b.B;
        if (bool != null) {
            return bool.booleanValue();
        }
        return true;
    }

    private void u(c.j0 j0Var, Path path) {
        float f2;
        float f3;
        float f4;
        float f5;
        c.n0 n0Var = this.e.b.c;
        if (n0Var instanceof c.t) {
            c.m0 k2 = this.d.k(((c.t) n0Var).b);
            if (k2 instanceof c.x) {
                c.x xVar = (c.x) k2;
                Boolean bool = xVar.p;
                boolean z = bool != null && bool.booleanValue();
                String str = xVar.w;
                if (str != null) {
                    C(xVar, str);
                }
                if (z) {
                    c.o oVar = xVar.s;
                    f5 = oVar != null ? oVar.e(this) : 0.0f;
                    c.o oVar2 = xVar.t;
                    f4 = oVar2 != null ? oVar2.f(this) : 0.0f;
                    c.o oVar3 = xVar.u;
                    f3 = oVar3 != null ? oVar3.e(this) : 0.0f;
                    c.o oVar4 = xVar.v;
                    f2 = oVar4 != null ? oVar4.f(this) : 0.0f;
                } else {
                    c.o oVar5 = xVar.s;
                    float d2 = oVar5 != null ? oVar5.d(this, 1.0f) : 0.0f;
                    c.o oVar6 = xVar.t;
                    float d3 = oVar6 != null ? oVar6.d(this, 1.0f) : 0.0f;
                    c.o oVar7 = xVar.u;
                    float d4 = oVar7 != null ? oVar7.d(this, 1.0f) : 0.0f;
                    c.o oVar8 = xVar.v;
                    float d5 = oVar8 != null ? oVar8.d(this, 1.0f) : 0.0f;
                    c.a aVar = j0Var.h;
                    float f6 = aVar.b;
                    float f7 = aVar.d;
                    f5 = (d2 * f7) + f6;
                    float f8 = aVar.c;
                    float f9 = aVar.e;
                    float f10 = d4 * f7;
                    f2 = d5 * f9;
                    f4 = (d3 * f9) + f8;
                    f3 = f10;
                }
                if (!(f3 == 0.0f || f2 == 0.0f)) {
                    b bVar = xVar.n;
                    if (bVar == null) {
                        bVar = b.d;
                    }
                    b0();
                    this.a.clipPath(path);
                    g gVar = new g(this);
                    e0(gVar, c.d0.a());
                    gVar.b.w = Boolean.FALSE;
                    E(xVar, gVar);
                    this.e = gVar;
                    c.a aVar2 = j0Var.h;
                    Matrix matrix = xVar.r;
                    if (matrix != null) {
                        this.a.concat(matrix);
                        Matrix matrix2 = new Matrix();
                        if (xVar.r.invert(matrix2)) {
                            c.a aVar3 = j0Var.h;
                            c.a aVar4 = j0Var.h;
                            c.a aVar5 = j0Var.h;
                            float[] fArr = {aVar3.b, aVar3.c, aVar3.a(), aVar4.c, aVar4.a(), j0Var.h.b(), aVar5.b, aVar5.b()};
                            matrix2.mapPoints(fArr);
                            RectF rectF = new RectF(fArr[0], fArr[1], fArr[0], fArr[1]);
                            for (int i2 = 2; i2 <= 6; i2 += 2) {
                                if (fArr[i2] < rectF.left) {
                                    rectF.left = fArr[i2];
                                }
                                if (fArr[i2] > rectF.right) {
                                    rectF.right = fArr[i2];
                                }
                                int i3 = i2 + 1;
                                if (fArr[i3] < rectF.top) {
                                    rectF.top = fArr[i3];
                                }
                                if (fArr[i3] > rectF.bottom) {
                                    rectF.bottom = fArr[i3];
                                }
                            }
                            float f11 = rectF.left;
                            float f12 = rectF.top;
                            aVar2 = new c.a(f11, f12, rectF.right - f11, rectF.bottom - f12);
                        }
                    }
                    float floor = (((float) Math.floor((double) ((aVar2.b - f5) / f3))) * f3) + f5;
                    float a2 = aVar2.a();
                    float b2 = aVar2.b();
                    c.a aVar6 = new c.a(0.0f, 0.0f, f3, f2);
                    for (float floor2 = (((float) Math.floor((double) ((aVar2.c - f4) / f2))) * f2) + f4; floor2 < b2; floor2 += f2) {
                        for (float f13 = floor; f13 < a2; f13 += f3) {
                            aVar6.b = f13;
                            aVar6.c = floor2;
                            b0();
                            if (!this.e.b.w.booleanValue()) {
                                Y(aVar6.b, aVar6.c, aVar6.d, aVar6.e);
                            }
                            c.a aVar7 = xVar.o;
                            if (aVar7 != null) {
                                this.a.concat(l(aVar6, aVar7, bVar));
                            } else {
                                Boolean bool2 = xVar.q;
                                boolean z2 = bool2 == null || bool2.booleanValue();
                                this.a.translate(f13, floor2);
                                if (!z2) {
                                    Canvas canvas = this.a;
                                    c.a aVar8 = j0Var.h;
                                    canvas.scale(aVar8.d, aVar8.e);
                                }
                            }
                            boolean R = R();
                            for (c.m0 m0Var : xVar.i) {
                                T(m0Var);
                            }
                            if (R) {
                                Q(xVar);
                            }
                            a0();
                        }
                    }
                    a0();
                    return;
                }
                return;
            }
        }
        this.a.drawPath(path, this.e.e);
    }

    private void v(Path path) {
        g gVar = this.e;
        if (gVar.b.M == c.d0.h.NonScalingStroke) {
            Matrix matrix = this.a.getMatrix();
            Path path2 = new Path();
            path.transform(matrix, path2);
            this.a.setMatrix(new Matrix());
            Shader shader = this.e.f.getShader();
            Matrix matrix2 = new Matrix();
            if (shader != null) {
                shader.getLocalMatrix(matrix2);
                Matrix matrix3 = new Matrix(matrix2);
                matrix3.postConcat(matrix);
                shader.setLocalMatrix(matrix3);
            }
            this.a.drawPath(path2, this.e.f);
            this.a.setMatrix(matrix);
            if (shader != null) {
                shader.setLocalMatrix(matrix2);
                return;
            }
            return;
        }
        this.a.drawPath(path, gVar.f);
    }

    private void w() {
        try {
            Bitmap createBitmap = Bitmap.createBitmap(this.a.getWidth(), this.a.getHeight(), Bitmap.Config.ARGB_8888);
            this.j.push(createBitmap);
            Canvas canvas = new Canvas(createBitmap);
            canvas.setMatrix(this.a.getMatrix());
            this.a = canvas;
        } catch (OutOfMemoryError e2) {
            y("Not enough memory to create temporary bitmaps for mask processing", new Object[0]);
            throw e2;
        }
    }

    private void x(c.x0 x0Var, i iVar) {
        float f2;
        float f3;
        float f4;
        if (t()) {
            Iterator<c.m0> it = x0Var.i.iterator();
            boolean z = true;
            while (it.hasNext()) {
                c.m0 next = it.next();
                if (next instanceof c.b1) {
                    iVar.b(c0(((c.b1) next).c, z, !it.hasNext()));
                } else if (iVar.a((c.x0) next)) {
                    float f5 = 0.0f;
                    if (next instanceof c.y0) {
                        b0();
                        c.y0 y0Var = (c.y0) next;
                        f0(this.e, y0Var);
                        if (t() && h0()) {
                            c.m0 k2 = y0Var.a.k(y0Var.n);
                            if (k2 == null) {
                                y("TextPath reference '%s' not found", y0Var.n);
                            } else {
                                c.u uVar = (c.u) k2;
                                Path path = new c(this, uVar.o).a;
                                Matrix matrix = uVar.n;
                                if (matrix != null) {
                                    path.transform(matrix);
                                }
                                PathMeasure pathMeasure = new PathMeasure(path, false);
                                c.o oVar = y0Var.o;
                                float d2 = oVar != null ? oVar.d(this, pathMeasure.getLength()) : 0.0f;
                                c.d0.e F = F();
                                if (F != c.d0.e.Start) {
                                    j jVar = new j(null);
                                    x(y0Var, jVar);
                                    float f6 = jVar.a;
                                    if (F == c.d0.e.Middle) {
                                        f6 /= 2.0f;
                                    }
                                    d2 -= f6;
                                }
                                n((c.j0) y0Var.g());
                                boolean R = R();
                                x(y0Var, new C0039d(path, d2, 0.0f));
                                if (R) {
                                    Q(y0Var);
                                }
                            }
                        }
                        a0();
                    } else if (next instanceof c.u0) {
                        b0();
                        c.u0 u0Var = (c.u0) next;
                        f0(this.e, u0Var);
                        if (t()) {
                            boolean z2 = iVar instanceof e;
                            if (z2) {
                                List<c.o> list = u0Var.n;
                                float e2 = (list == null || list.size() == 0) ? ((e) iVar).a : u0Var.n.get(0).e(this);
                                List<c.o> list2 = u0Var.o;
                                f3 = (list2 == null || list2.size() == 0) ? ((e) iVar).b : u0Var.o.get(0).f(this);
                                List<c.o> list3 = u0Var.p;
                                f2 = (list3 == null || list3.size() == 0) ? 0.0f : u0Var.p.get(0).e(this);
                                List<c.o> list4 = u0Var.q;
                                if (!(list4 == null || list4.size() == 0)) {
                                    f5 = u0Var.q.get(0).f(this);
                                }
                                f4 = f5;
                                f5 = e2;
                            } else {
                                f4 = 0.0f;
                                f3 = 0.0f;
                                f2 = 0.0f;
                            }
                            n((c.j0) u0Var.g());
                            if (z2) {
                                e eVar = (e) iVar;
                                eVar.a = f5 + f2;
                                eVar.b = f3 + f4;
                            }
                            boolean R2 = R();
                            x(u0Var, iVar);
                            if (R2) {
                                Q(u0Var);
                            }
                        }
                        a0();
                    } else if (next instanceof c.t0) {
                        b0();
                        c.t0 t0Var = (c.t0) next;
                        f0(this.e, t0Var);
                        if (t()) {
                            n((c.j0) t0Var.g());
                            c.m0 k3 = next.a.k(t0Var.n);
                            if (k3 == null || !(k3 instanceof c.x0)) {
                                y("Tref reference '%s' not found", t0Var.n);
                            } else {
                                StringBuilder sb = new StringBuilder();
                                z((c.x0) k3, sb);
                                if (sb.length() > 0) {
                                    iVar.b(sb.toString());
                                }
                            }
                        }
                        a0();
                    }
                }
                z = false;
            }
        }
    }

    /* access modifiers changed from: private */
    public static void y(String str, Object... objArr) {
        Log.e("SVGAndroidRenderer", String.format(str, objArr));
    }

    private void z(c.x0 x0Var, StringBuilder sb) {
        Iterator<c.m0> it = x0Var.i.iterator();
        boolean z = true;
        while (it.hasNext()) {
            c.m0 next = it.next();
            if (next instanceof c.x0) {
                z((c.x0) next, sb);
            } else if (next instanceof c.b1) {
                sb.append(c0(((c.b1) next).c, z, !it.hasNext()));
            }
            z = false;
        }
    }

    /* access modifiers changed from: protected */
    public float H() {
        return this.e.e.getTextSize();
    }

    /* access modifiers changed from: protected */
    public float I() {
        return this.e.e.getTextSize() / 2.0f;
    }

    /* access modifiers changed from: protected */
    public c.a J() {
        g gVar = this.e;
        c.a aVar = gVar.h;
        if (aVar != null) {
            return aVar;
        }
        return gVar.g;
    }

    /* access modifiers changed from: protected */
    public float K() {
        return 96.0f;
    }

    /* access modifiers changed from: protected */
    public void V(c cVar, c.a aVar, b bVar, boolean z) {
        this.d = cVar;
        this.c = z;
        c.e0 g2 = cVar.g();
        if (g2 == null) {
            i0("Nothing to render. Document is empty.", new Object[0]);
            return;
        }
        this.e = new g(this);
        this.f = new Stack<>();
        e0(this.e, c.d0.a());
        g gVar = this.e;
        gVar.g = this.b;
        gVar.i = false;
        gVar.j = this.c;
        this.f.push((g) gVar.clone());
        this.i = new Stack<>();
        this.j = new Stack<>();
        this.h = new Stack<>();
        this.g = new Stack<>();
        p(g2);
        S(g2, g2.r, g2.s, g2.o, g2.n);
    }
}
