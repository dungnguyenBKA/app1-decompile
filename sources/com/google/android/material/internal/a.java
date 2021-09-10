package com.google.android.material.internal;

import android.animation.TimeInterpolator;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Gravity;
import android.view.View;
import defpackage.xx;

public final class a {
    private Bitmap A;
    private float B;
    private float C;
    private int[] D;
    private boolean E;
    private final TextPaint F;
    private final TextPaint G;
    private TimeInterpolator H;
    private TimeInterpolator I;
    private float J;
    private float K;
    private float L;
    private ColorStateList M;
    private float N;
    private float O;
    private float P;
    private ColorStateList Q;
    private final View a;
    private boolean b;
    private float c;
    private final Rect d;
    private final Rect e;
    private final RectF f;
    private int g = 16;
    private int h = 16;
    private float i = 15.0f;
    private float j = 15.0f;
    private ColorStateList k;
    private ColorStateList l;
    private float m;
    private float n;
    private float o;
    private float p;
    private float q;
    private float r;
    private Typeface s;
    private Typeface t;
    private Typeface u;
    private xx v;
    private xx w;
    private CharSequence x;
    private CharSequence y;
    private boolean z;

    /* renamed from: com.google.android.material.internal.a$a  reason: collision with other inner class name */
    class C0078a implements xx.a {
        C0078a() {
        }

        @Override // defpackage.xx.a
        public void a(Typeface typeface) {
            a.this.w(typeface);
        }
    }

    class b implements xx.a {
        b() {
        }

        @Override // defpackage.xx.a
        public void a(Typeface typeface) {
            a.this.D(typeface);
        }
    }

    public a(View view) {
        this.a = view;
        TextPaint textPaint = new TextPaint(129);
        this.F = textPaint;
        this.G = new TextPaint(textPaint);
        this.e = new Rect();
        this.d = new Rect();
        this.f = new RectF();
    }

    private void F(float f2) {
        e(f2);
        View view = this.a;
        int i2 = c3.g;
        view.postInvalidateOnAnimation();
    }

    private static int a(int i2, int i3, float f2) {
        float f3 = 1.0f - f2;
        return Color.argb((int) ((((float) Color.alpha(i3)) * f2) + (((float) Color.alpha(i2)) * f3)), (int) ((((float) Color.red(i3)) * f2) + (((float) Color.red(i2)) * f3)), (int) ((((float) Color.green(i3)) * f2) + (((float) Color.green(i2)) * f3)), (int) ((((float) Color.blue(i3)) * f2) + (((float) Color.blue(i2)) * f3)));
    }

    private boolean c(CharSequence charSequence) {
        View view = this.a;
        int i2 = c3.g;
        boolean z2 = true;
        if (view.getLayoutDirection() != 1) {
            z2 = false;
        }
        return (z2 ? h2.b : h2.a).a(charSequence, 0, charSequence.length());
    }

    private void d(float f2) {
        this.f.left = n((float) this.d.left, (float) this.e.left, f2, this.H);
        this.f.top = n(this.m, this.n, f2, this.H);
        this.f.right = n((float) this.d.right, (float) this.e.right, f2, this.H);
        this.f.bottom = n((float) this.d.bottom, (float) this.e.bottom, f2, this.H);
        this.q = n(this.o, this.p, f2, this.H);
        this.r = n(this.m, this.n, f2, this.H);
        F(n(this.i, this.j, f2, this.I));
        ColorStateList colorStateList = this.l;
        ColorStateList colorStateList2 = this.k;
        if (colorStateList != colorStateList2) {
            this.F.setColor(a(j(colorStateList2), j(this.l), f2));
        } else {
            this.F.setColor(j(colorStateList));
        }
        this.F.setShadowLayer(n(this.N, this.J, f2, null), n(this.O, this.K, f2, null), n(this.P, this.L, f2, null), a(j(this.Q), j(this.M), f2));
        View view = this.a;
        int i2 = c3.g;
        view.postInvalidateOnAnimation();
    }

    private void e(float f2) {
        float f3;
        boolean z2;
        if (this.x != null) {
            float width = (float) this.e.width();
            float width2 = (float) this.d.width();
            boolean z3 = true;
            if (Math.abs(f2 - this.j) < 0.001f) {
                f3 = this.j;
                this.B = 1.0f;
                Typeface typeface = this.u;
                Typeface typeface2 = this.s;
                if (typeface != typeface2) {
                    this.u = typeface2;
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                float f4 = this.i;
                Typeface typeface3 = this.u;
                Typeface typeface4 = this.t;
                if (typeface3 != typeface4) {
                    this.u = typeface4;
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (Math.abs(f2 - f4) < 0.001f) {
                    this.B = 1.0f;
                } else {
                    this.B = f2 / this.i;
                }
                float f5 = this.j / this.i;
                width = width2 * f5 > width ? Math.min(width / f5, width2) : width2;
                f3 = f4;
            }
            if (width > 0.0f) {
                z2 = this.C != f3 || this.E || z2;
                this.C = f3;
                this.E = false;
            }
            if (this.y == null || z2) {
                this.F.setTextSize(this.C);
                this.F.setTypeface(this.u);
                TextPaint textPaint = this.F;
                if (this.B == 1.0f) {
                    z3 = false;
                }
                textPaint.setLinearText(z3);
                CharSequence ellipsize = TextUtils.ellipsize(this.x, this.F, width, TextUtils.TruncateAt.END);
                if (!TextUtils.equals(ellipsize, this.y)) {
                    this.y = ellipsize;
                    this.z = c(ellipsize);
                }
            }
        }
    }

    private int j(ColorStateList colorStateList) {
        if (colorStateList == null) {
            return 0;
        }
        int[] iArr = this.D;
        if (iArr != null) {
            return colorStateList.getColorForState(iArr, 0);
        }
        return colorStateList.getDefaultColor();
    }

    private static float n(float f2, float f3, float f4, TimeInterpolator timeInterpolator) {
        if (timeInterpolator != null) {
            f4 = timeInterpolator.getInterpolation(f4);
        }
        TimeInterpolator timeInterpolator2 = jx.a;
        return ic.a(f3, f2, f4, f2);
    }

    private static boolean q(Rect rect, int i2, int i3, int i4, int i5) {
        return rect.left == i2 && rect.top == i3 && rect.right == i4 && rect.bottom == i5;
    }

    public void A(ColorStateList colorStateList) {
        if (this.k != colorStateList) {
            this.k = colorStateList;
            p();
        }
    }

    public void B(int i2) {
        if (this.g != i2) {
            this.g = i2;
            p();
        }
    }

    public void C(float f2) {
        if (this.i != f2) {
            this.i = f2;
            p();
        }
    }

    public void D(Typeface typeface) {
        boolean z2;
        xx xxVar = this.v;
        if (xxVar != null) {
            xxVar.c();
        }
        if (this.t != typeface) {
            this.t = typeface;
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            p();
        }
    }

    public void E(float f2) {
        if (f2 < 0.0f) {
            f2 = 0.0f;
        } else if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        if (f2 != this.c) {
            this.c = f2;
            d(f2);
        }
    }

    public void G(TimeInterpolator timeInterpolator) {
        this.H = timeInterpolator;
        p();
    }

    public final boolean H(int[] iArr) {
        ColorStateList colorStateList;
        this.D = iArr;
        ColorStateList colorStateList2 = this.l;
        if (!((colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.k) != null && colorStateList.isStateful()))) {
            return false;
        }
        p();
        return true;
    }

    public void I(CharSequence charSequence) {
        if (charSequence == null || !TextUtils.equals(this.x, charSequence)) {
            this.x = charSequence;
            this.y = null;
            Bitmap bitmap = this.A;
            if (bitmap != null) {
                bitmap.recycle();
                this.A = null;
            }
            p();
        }
    }

    public void J(TimeInterpolator timeInterpolator) {
        this.I = timeInterpolator;
        p();
    }

    public void K(Typeface typeface) {
        boolean z2;
        xx xxVar = this.w;
        if (xxVar != null) {
            xxVar.c();
        }
        boolean z3 = false;
        if (this.s != typeface) {
            this.s = typeface;
            z2 = true;
        } else {
            z2 = false;
        }
        xx xxVar2 = this.v;
        if (xxVar2 != null) {
            xxVar2.c();
        }
        if (this.t != typeface) {
            this.t = typeface;
            z3 = true;
        }
        if (z2 || z3) {
            p();
        }
    }

    public float b() {
        if (this.x == null) {
            return 0.0f;
        }
        TextPaint textPaint = this.G;
        textPaint.setTextSize(this.j);
        textPaint.setTypeface(this.s);
        TextPaint textPaint2 = this.G;
        CharSequence charSequence = this.x;
        return textPaint2.measureText(charSequence, 0, charSequence.length());
    }

    public void f(Canvas canvas) {
        int save = canvas.save();
        if (this.y != null && this.b) {
            float f2 = this.q;
            float f3 = this.r;
            this.F.ascent();
            this.F.descent();
            float f4 = this.B;
            if (f4 != 1.0f) {
                canvas.scale(f4, f4, f2, f3);
            }
            CharSequence charSequence = this.y;
            canvas.drawText(charSequence, 0, charSequence.length(), f2, f3, this.F);
        }
        canvas.restoreToCount(save);
    }

    public void g(RectF rectF) {
        float f2;
        boolean c2 = c(this.x);
        Rect rect = this.e;
        if (!c2) {
            f2 = (float) rect.left;
        } else {
            f2 = ((float) rect.right) - b();
        }
        rectF.left = f2;
        Rect rect2 = this.e;
        rectF.top = (float) rect2.top;
        rectF.right = !c2 ? b() + f2 : (float) rect2.right;
        rectF.bottom = i() + ((float) this.e.top);
    }

    public ColorStateList h() {
        return this.l;
    }

    public float i() {
        TextPaint textPaint = this.G;
        textPaint.setTextSize(this.j);
        textPaint.setTypeface(this.s);
        return -this.G.ascent();
    }

    public float k() {
        TextPaint textPaint = this.G;
        textPaint.setTextSize(this.i);
        textPaint.setTypeface(this.t);
        return -this.G.ascent();
    }

    public float l() {
        return this.c;
    }

    public CharSequence m() {
        return this.x;
    }

    /* access modifiers changed from: package-private */
    public void o() {
        this.b = this.e.width() > 0 && this.e.height() > 0 && this.d.width() > 0 && this.d.height() > 0;
    }

    public void p() {
        if (this.a.getHeight() > 0 && this.a.getWidth() > 0) {
            float f2 = this.C;
            e(this.j);
            CharSequence charSequence = this.y;
            float f3 = 0.0f;
            float measureText = charSequence != null ? this.F.measureText(charSequence, 0, charSequence.length()) : 0.0f;
            int absoluteGravity = Gravity.getAbsoluteGravity(this.h, this.z ? 1 : 0);
            int i2 = absoluteGravity & 112;
            if (i2 == 48) {
                this.n = ((float) this.e.top) - this.F.ascent();
            } else if (i2 != 80) {
                this.n = ((float) this.e.centerY()) + (((this.F.descent() - this.F.ascent()) / 2.0f) - this.F.descent());
            } else {
                this.n = (float) this.e.bottom;
            }
            int i3 = absoluteGravity & 8388615;
            if (i3 == 1) {
                this.p = ((float) this.e.centerX()) - (measureText / 2.0f);
            } else if (i3 != 5) {
                this.p = (float) this.e.left;
            } else {
                this.p = ((float) this.e.right) - measureText;
            }
            e(this.i);
            CharSequence charSequence2 = this.y;
            if (charSequence2 != null) {
                f3 = this.F.measureText(charSequence2, 0, charSequence2.length());
            }
            int absoluteGravity2 = Gravity.getAbsoluteGravity(this.g, this.z ? 1 : 0);
            int i4 = absoluteGravity2 & 112;
            if (i4 == 48) {
                this.m = ((float) this.d.top) - this.F.ascent();
            } else if (i4 != 80) {
                this.m = ((float) this.d.centerY()) + (((this.F.descent() - this.F.ascent()) / 2.0f) - this.F.descent());
            } else {
                this.m = (float) this.d.bottom;
            }
            int i5 = absoluteGravity2 & 8388615;
            if (i5 == 1) {
                this.o = ((float) this.d.centerX()) - (f3 / 2.0f);
            } else if (i5 != 5) {
                this.o = (float) this.d.left;
            } else {
                this.o = ((float) this.d.right) - f3;
            }
            Bitmap bitmap = this.A;
            if (bitmap != null) {
                bitmap.recycle();
                this.A = null;
            }
            e(f2);
            View view = this.a;
            int i6 = c3.g;
            view.postInvalidateOnAnimation();
            d(this.c);
        }
    }

    public void r(int i2, int i3, int i4, int i5) {
        if (!q(this.e, i2, i3, i4, i5)) {
            this.e.set(i2, i3, i4, i5);
            this.E = true;
            o();
        }
    }

    public void s(Rect rect) {
        int i2 = rect.left;
        int i3 = rect.top;
        int i4 = rect.right;
        int i5 = rect.bottom;
        if (!q(this.e, i2, i3, i4, i5)) {
            this.e.set(i2, i3, i4, i5);
            this.E = true;
            o();
        }
    }

    public void t(int i2) {
        zx zxVar = new zx(this.a.getContext(), i2);
        ColorStateList colorStateList = zxVar.b;
        if (colorStateList != null) {
            this.l = colorStateList;
        }
        float f2 = zxVar.a;
        if (f2 != 0.0f) {
            this.j = f2;
        }
        ColorStateList colorStateList2 = zxVar.f;
        if (colorStateList2 != null) {
            this.M = colorStateList2;
        }
        this.K = zxVar.g;
        this.L = zxVar.h;
        this.J = zxVar.i;
        xx xxVar = this.w;
        if (xxVar != null) {
            xxVar.c();
        }
        this.w = new xx(new C0078a(), zxVar.e());
        zxVar.f(this.a.getContext(), this.w);
        p();
    }

    public void u(ColorStateList colorStateList) {
        if (this.l != colorStateList) {
            this.l = colorStateList;
            p();
        }
    }

    public void v(int i2) {
        if (this.h != i2) {
            this.h = i2;
            p();
        }
    }

    public void w(Typeface typeface) {
        boolean z2;
        xx xxVar = this.w;
        if (xxVar != null) {
            xxVar.c();
        }
        if (this.s != typeface) {
            this.s = typeface;
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            p();
        }
    }

    public void x(int i2, int i3, int i4, int i5) {
        if (!q(this.d, i2, i3, i4, i5)) {
            this.d.set(i2, i3, i4, i5);
            this.E = true;
            o();
        }
    }

    public void y(Rect rect) {
        int i2 = rect.left;
        int i3 = rect.top;
        int i4 = rect.right;
        int i5 = rect.bottom;
        if (!q(this.d, i2, i3, i4, i5)) {
            this.d.set(i2, i3, i4, i5);
            this.E = true;
            o();
        }
    }

    public void z(int i2) {
        zx zxVar = new zx(this.a.getContext(), i2);
        ColorStateList colorStateList = zxVar.b;
        if (colorStateList != null) {
            this.k = colorStateList;
        }
        float f2 = zxVar.a;
        if (f2 != 0.0f) {
            this.i = f2;
        }
        ColorStateList colorStateList2 = zxVar.f;
        if (colorStateList2 != null) {
            this.Q = colorStateList2;
        }
        this.O = zxVar.g;
        this.P = zxVar.h;
        this.N = zxVar.i;
        xx xxVar = this.v;
        if (xxVar != null) {
            xxVar.c();
        }
        this.v = new xx(new b(), zxVar.e());
        zxVar.f(this.a.getContext(), this.v);
        p();
    }
}
