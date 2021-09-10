package com.google.android.material.chip;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.g;
import com.google.android.material.internal.i;
import com.vungle.warren.error.VungleException;
import java.lang.ref.WeakReference;
import java.util.Arrays;

public class b extends my implements androidx.core.graphics.drawable.b, Drawable.Callback, g.b {
    private static final int[] C0 = {16842910};
    private static final ShapeDrawable D0 = new ShapeDrawable(new OvalShape());
    private float A;
    private int A0;
    private ColorStateList B;
    private boolean B0;
    private float C;
    private ColorStateList D;
    private CharSequence E;
    private boolean F;
    private Drawable G;
    private ColorStateList H;
    private float I;
    private boolean J;
    private boolean K;
    private Drawable L;
    private Drawable M;
    private ColorStateList N;
    private float O;
    private boolean P;
    private boolean Q;
    private Drawable R;
    private float S;
    private float T;
    private float U;
    private float V;
    private float W;
    private float X;
    private float Y;
    private float Z;
    private final Context a0;
    private final Paint b0 = new Paint(1);
    private final Paint.FontMetrics c0 = new Paint.FontMetrics();
    private final RectF d0 = new RectF();
    private final PointF e0 = new PointF();
    private final Path f0 = new Path();
    private final g g0;
    private int h0;
    private int i0;
    private int j0;
    private int k0;
    private int l0;
    private int m0;
    private boolean n0;
    private int o0;
    private int p0 = 255;
    private ColorFilter q0;
    private PorterDuffColorFilter r0;
    private ColorStateList s0;
    private PorterDuff.Mode t0 = PorterDuff.Mode.SRC_IN;
    private int[] u0;
    private boolean v0;
    private ColorStateList w0;
    private ColorStateList x;
    private WeakReference<a> x0 = new WeakReference<>(null);
    private ColorStateList y;
    private TextUtils.TruncateAt y0;
    private float z;
    private boolean z0;

    public interface a {
        void a();
    }

    private b(Context context, AttributeSet attributeSet, int i, int i2) {
        super(qy.c(context, attributeSet, i, i2, new gy((float) 0)).m());
        A(context);
        this.a0 = context;
        g gVar = new g(this);
        this.g0 = gVar;
        this.E = "";
        gVar.d().density = context.getResources().getDisplayMetrics().density;
        int[] iArr = C0;
        setState(iArr);
        w0(iArr);
        this.z0 = true;
        if (dy.a) {
            D0.setTint(-1);
        }
    }

    private boolean G0() {
        return this.Q && this.R != null && this.n0;
    }

    private boolean H0() {
        return this.F && this.G != null;
    }

    private boolean I0() {
        return this.K && this.L != null;
    }

    private void J0(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    private void U(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(this);
            androidx.core.graphics.drawable.a.e(drawable, androidx.core.graphics.drawable.a.b(this));
            drawable.setLevel(getLevel());
            drawable.setVisible(isVisible(), false);
            if (drawable == this.L) {
                if (drawable.isStateful()) {
                    drawable.setState(this.u0);
                }
                androidx.core.graphics.drawable.a.g(drawable, this.N);
                return;
            }
            if (drawable.isStateful()) {
                drawable.setState(getState());
            }
            Drawable drawable2 = this.G;
            if (drawable == drawable2 && this.J) {
                androidx.core.graphics.drawable.a.g(drawable2, this.H);
            }
        }
    }

    private void V(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (H0() || G0()) {
            float f = this.S + this.T;
            if (androidx.core.graphics.drawable.a.b(this) == 0) {
                float f2 = ((float) rect.left) + f;
                rectF.left = f2;
                rectF.right = f2 + this.I;
            } else {
                float f3 = ((float) rect.right) - f;
                rectF.right = f3;
                rectF.left = f3 - this.I;
            }
            float exactCenterY = rect.exactCenterY();
            float f4 = this.I;
            float f5 = exactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    private void X(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (I0()) {
            float f = this.Z + this.Y;
            if (androidx.core.graphics.drawable.a.b(this) == 0) {
                float f2 = ((float) rect.right) - f;
                rectF.right = f2;
                rectF.left = f2 - this.O;
            } else {
                float f3 = ((float) rect.left) + f;
                rectF.left = f3;
                rectF.right = f3 + this.O;
            }
            float exactCenterY = rect.exactCenterY();
            float f4 = this.O;
            float f5 = exactCenterY - (f4 / 2.0f);
            rectF.top = f5;
            rectF.bottom = f5 + f4;
        }
    }

    private void Y(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (I0()) {
            float f = this.Z + this.Y + this.O + this.X + this.W;
            if (androidx.core.graphics.drawable.a.b(this) == 0) {
                float f2 = (float) rect.right;
                rectF.right = f2;
                rectF.left = f2 - f;
            } else {
                int i = rect.left;
                rectF.left = (float) i;
                rectF.right = ((float) i) + f;
            }
            rectF.top = (float) rect.top;
            rectF.bottom = (float) rect.bottom;
        }
    }

    public static b a0(Context context, AttributeSet attributeSet, int i, int i2) {
        int resourceId;
        b bVar = new b(context, attributeSet, i, i2);
        TypedArray f = i.f(bVar.a0, attributeSet, R$styleable.g, i, i2, new int[0]);
        bVar.B0 = f.hasValue(35);
        ColorStateList a2 = yx.a(bVar.a0, f, 22);
        if (bVar.x != a2) {
            bVar.x = a2;
            bVar.onStateChange(bVar.getState());
        }
        ColorStateList a3 = yx.a(bVar.a0, f, 9);
        if (bVar.y != a3) {
            bVar.y = a3;
            bVar.onStateChange(bVar.getState());
        }
        float dimension = f.getDimension(17, 0.0f);
        if (bVar.z != dimension) {
            bVar.z = dimension;
            bVar.invalidateSelf();
            bVar.s0();
        }
        if (f.hasValue(10)) {
            float dimension2 = f.getDimension(10, 0.0f);
            if (bVar.A != dimension2) {
                bVar.A = dimension2;
                bVar.e(bVar.v().o(dimension2));
            }
        }
        ColorStateList a4 = yx.a(bVar.a0, f, 20);
        if (bVar.B != a4) {
            bVar.B = a4;
            if (bVar.B0) {
                bVar.P(a4);
            }
            bVar.onStateChange(bVar.getState());
        }
        float dimension3 = f.getDimension(21, 0.0f);
        if (bVar.C != dimension3) {
            bVar.C = dimension3;
            bVar.b0.setStrokeWidth(dimension3);
            if (bVar.B0) {
                bVar.Q(dimension3);
            }
            bVar.invalidateSelf();
        }
        ColorStateList a5 = yx.a(bVar.a0, f, 34);
        Drawable drawable = null;
        if (bVar.D != a5) {
            bVar.D = a5;
            bVar.w0 = bVar.v0 ? dy.c(a5) : null;
            bVar.onStateChange(bVar.getState());
        }
        bVar.C0(f.getText(4));
        bVar.g0.f((!f.hasValue(0) || (resourceId = f.getResourceId(0, 0)) == 0) ? null : new zx(bVar.a0, resourceId), bVar.a0);
        int i3 = f.getInt(2, 0);
        if (i3 == 1) {
            bVar.y0 = TextUtils.TruncateAt.START;
        } else if (i3 == 2) {
            bVar.y0 = TextUtils.TruncateAt.MIDDLE;
        } else if (i3 == 3) {
            bVar.y0 = TextUtils.TruncateAt.END;
        }
        bVar.v0(f.getBoolean(16, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") != null)) {
            bVar.v0(f.getBoolean(13, false));
        }
        Drawable c = yx.c(bVar.a0, f, 12);
        Drawable drawable2 = bVar.G;
        Drawable i4 = drawable2 != null ? androidx.core.graphics.drawable.a.i(drawable2) : null;
        if (i4 != c) {
            float W2 = bVar.W();
            bVar.G = c != null ? androidx.core.graphics.drawable.a.j(c).mutate() : null;
            float W3 = bVar.W();
            bVar.J0(i4);
            if (bVar.H0()) {
                bVar.U(bVar.G);
            }
            bVar.invalidateSelf();
            if (W2 != W3) {
                bVar.s0();
            }
        }
        if (f.hasValue(15)) {
            ColorStateList a6 = yx.a(bVar.a0, f, 15);
            bVar.J = true;
            if (bVar.H != a6) {
                bVar.H = a6;
                if (bVar.H0()) {
                    androidx.core.graphics.drawable.a.g(bVar.G, a6);
                }
                bVar.onStateChange(bVar.getState());
            }
        }
        float dimension4 = f.getDimension(14, 0.0f);
        if (bVar.I != dimension4) {
            float W4 = bVar.W();
            bVar.I = dimension4;
            float W5 = bVar.W();
            bVar.invalidateSelf();
            if (W4 != W5) {
                bVar.s0();
            }
        }
        bVar.x0(f.getBoolean(29, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") != null)) {
            bVar.x0(f.getBoolean(24, false));
        }
        Drawable c2 = yx.c(bVar.a0, f, 23);
        Drawable drawable3 = bVar.L;
        Drawable i5 = drawable3 != null ? androidx.core.graphics.drawable.a.i(drawable3) : null;
        if (i5 != c2) {
            float Z2 = bVar.Z();
            if (c2 != null) {
                drawable = androidx.core.graphics.drawable.a.j(c2).mutate();
            }
            bVar.L = drawable;
            if (dy.a) {
                bVar.M = new RippleDrawable(dy.c(bVar.D), bVar.L, D0);
            }
            float Z3 = bVar.Z();
            bVar.J0(i5);
            if (bVar.I0()) {
                bVar.U(bVar.L);
            }
            bVar.invalidateSelf();
            if (Z2 != Z3) {
                bVar.s0();
            }
        }
        ColorStateList a7 = yx.a(bVar.a0, f, 28);
        if (bVar.N != a7) {
            bVar.N = a7;
            if (bVar.I0()) {
                androidx.core.graphics.drawable.a.g(bVar.L, a7);
            }
            bVar.onStateChange(bVar.getState());
        }
        float dimension5 = f.getDimension(26, 0.0f);
        if (bVar.O != dimension5) {
            bVar.O = dimension5;
            bVar.invalidateSelf();
            if (bVar.I0()) {
                bVar.s0();
            }
        }
        boolean z2 = f.getBoolean(5, false);
        if (bVar.P != z2) {
            bVar.P = z2;
            float W6 = bVar.W();
            if (!z2 && bVar.n0) {
                bVar.n0 = false;
            }
            float W7 = bVar.W();
            bVar.invalidateSelf();
            if (W6 != W7) {
                bVar.s0();
            }
        }
        bVar.u0(f.getBoolean(8, false));
        if (!(attributeSet == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") == null || attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") != null)) {
            bVar.u0(f.getBoolean(7, false));
        }
        Drawable c3 = yx.c(bVar.a0, f, 6);
        if (bVar.R != c3) {
            float W8 = bVar.W();
            bVar.R = c3;
            float W9 = bVar.W();
            bVar.J0(bVar.R);
            bVar.U(bVar.R);
            bVar.invalidateSelf();
            if (W8 != W9) {
                bVar.s0();
            }
        }
        px.a(bVar.a0, f, 37);
        px.a(bVar.a0, f, 31);
        float dimension6 = f.getDimension(19, 0.0f);
        if (bVar.S != dimension6) {
            bVar.S = dimension6;
            bVar.invalidateSelf();
            bVar.s0();
        }
        float dimension7 = f.getDimension(33, 0.0f);
        if (bVar.T != dimension7) {
            float W10 = bVar.W();
            bVar.T = dimension7;
            float W11 = bVar.W();
            bVar.invalidateSelf();
            if (W10 != W11) {
                bVar.s0();
            }
        }
        float dimension8 = f.getDimension(32, 0.0f);
        if (bVar.U != dimension8) {
            float W12 = bVar.W();
            bVar.U = dimension8;
            float W13 = bVar.W();
            bVar.invalidateSelf();
            if (W12 != W13) {
                bVar.s0();
            }
        }
        float dimension9 = f.getDimension(39, 0.0f);
        if (bVar.V != dimension9) {
            bVar.V = dimension9;
            bVar.invalidateSelf();
            bVar.s0();
        }
        float dimension10 = f.getDimension(38, 0.0f);
        if (bVar.W != dimension10) {
            bVar.W = dimension10;
            bVar.invalidateSelf();
            bVar.s0();
        }
        float dimension11 = f.getDimension(27, 0.0f);
        if (bVar.X != dimension11) {
            bVar.X = dimension11;
            bVar.invalidateSelf();
            if (bVar.I0()) {
                bVar.s0();
            }
        }
        float dimension12 = f.getDimension(25, 0.0f);
        if (bVar.Y != dimension12) {
            bVar.Y = dimension12;
            bVar.invalidateSelf();
            if (bVar.I0()) {
                bVar.s0();
            }
        }
        float dimension13 = f.getDimension(11, 0.0f);
        if (bVar.Z != dimension13) {
            bVar.Z = dimension13;
            bVar.invalidateSelf();
            bVar.s0();
        }
        bVar.A0 = f.getDimensionPixelSize(3, Integer.MAX_VALUE);
        f.recycle();
        return bVar;
    }

    private static boolean q0(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    private static boolean r0(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    /* JADX WARNING: Removed duplicated region for block: B:100:0x0157  */
    /* JADX WARNING: Removed duplicated region for block: B:72:0x00df  */
    /* JADX WARNING: Removed duplicated region for block: B:73:0x00e2  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x00e8  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x00ef  */
    /* JADX WARNING: Removed duplicated region for block: B:81:0x00f4  */
    /* JADX WARNING: Removed duplicated region for block: B:82:0x0101  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x010a  */
    /* JADX WARNING: Removed duplicated region for block: B:88:0x0119  */
    /* JADX WARNING: Removed duplicated region for block: B:91:0x0128  */
    /* JADX WARNING: Removed duplicated region for block: B:98:0x0152  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private boolean t0(int[] r9, int[] r10) {
        /*
        // Method dump skipped, instructions count: 347
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.b.t0(int[], int[]):boolean");
    }

    public void A0(int i) {
        this.A0 = i;
    }

    /* access modifiers changed from: package-private */
    public void B0(boolean z2) {
        this.z0 = z2;
    }

    public void C0(CharSequence charSequence) {
        if (charSequence == null) {
            charSequence = "";
        }
        if (!TextUtils.equals(this.E, charSequence)) {
            this.E = charSequence;
            this.g0.g(true);
            invalidateSelf();
            s0();
        }
    }

    public void D0(int i) {
        this.g0.f(new zx(this.a0, i), this.a0);
    }

    public void E0(boolean z2) {
        if (this.v0 != z2) {
            this.v0 = z2;
            this.w0 = z2 ? dy.c(this.D) : null;
            onStateChange(getState());
        }
    }

    /* access modifiers changed from: package-private */
    public boolean F0() {
        return this.z0;
    }

    /* access modifiers changed from: package-private */
    public float W() {
        if (H0() || G0()) {
            return this.T + this.I + this.U;
        }
        return 0.0f;
    }

    /* access modifiers changed from: package-private */
    public float Z() {
        if (I0()) {
            return this.X + this.O + this.Y;
        }
        return 0.0f;
    }

    @Override // com.google.android.material.internal.g.b
    public void a() {
        s0();
        invalidateSelf();
    }

    public float b0() {
        return this.B0 ? x() : this.A;
    }

    public float c0() {
        return this.Z;
    }

    public float d0() {
        return this.z;
    }

    @Override // defpackage.my
    public void draw(Canvas canvas) {
        int i;
        int i2;
        int i3;
        int i4;
        Rect bounds = getBounds();
        if (!bounds.isEmpty() && (i = this.p0) != 0) {
            if (i < 255) {
                float f = (float) bounds.left;
                float f2 = (float) bounds.top;
                float f3 = (float) bounds.right;
                float f4 = (float) bounds.bottom;
                if (Build.VERSION.SDK_INT > 21) {
                    i4 = canvas.saveLayerAlpha(f, f2, f3, f4, i);
                } else {
                    i4 = canvas.saveLayerAlpha(f, f2, f3, f4, i, 31);
                }
                i2 = i4;
            } else {
                i2 = 0;
            }
            if (!this.B0) {
                this.b0.setColor(this.h0);
                this.b0.setStyle(Paint.Style.FILL);
                this.d0.set(bounds);
                canvas.drawRoundRect(this.d0, b0(), b0(), this.b0);
            }
            if (!this.B0) {
                this.b0.setColor(this.i0);
                this.b0.setStyle(Paint.Style.FILL);
                Paint paint = this.b0;
                ColorFilter colorFilter = this.q0;
                if (colorFilter == null) {
                    colorFilter = this.r0;
                }
                paint.setColorFilter(colorFilter);
                this.d0.set(bounds);
                canvas.drawRoundRect(this.d0, b0(), b0(), this.b0);
            }
            if (this.B0) {
                super.draw(canvas);
            }
            if (this.C > 0.0f && !this.B0) {
                this.b0.setColor(this.k0);
                this.b0.setStyle(Paint.Style.STROKE);
                if (!this.B0) {
                    Paint paint2 = this.b0;
                    ColorFilter colorFilter2 = this.q0;
                    if (colorFilter2 == null) {
                        colorFilter2 = this.r0;
                    }
                    paint2.setColorFilter(colorFilter2);
                }
                RectF rectF = this.d0;
                float f5 = this.C / 2.0f;
                rectF.set(((float) bounds.left) + f5, ((float) bounds.top) + f5, ((float) bounds.right) - f5, ((float) bounds.bottom) - f5);
                float f6 = this.A - (this.C / 2.0f);
                canvas.drawRoundRect(this.d0, f6, f6, this.b0);
            }
            this.b0.setColor(this.l0);
            this.b0.setStyle(Paint.Style.FILL);
            this.d0.set(bounds);
            if (!this.B0) {
                canvas.drawRoundRect(this.d0, b0(), b0(), this.b0);
            } else {
                g(new RectF(bounds), this.f0);
                k(canvas, this.b0, this.f0, o());
            }
            if (H0()) {
                V(bounds, this.d0);
                RectF rectF2 = this.d0;
                float f7 = rectF2.left;
                float f8 = rectF2.top;
                canvas.translate(f7, f8);
                this.G.setBounds(0, 0, (int) this.d0.width(), (int) this.d0.height());
                this.G.draw(canvas);
                canvas.translate(-f7, -f8);
            }
            if (G0()) {
                V(bounds, this.d0);
                RectF rectF3 = this.d0;
                float f9 = rectF3.left;
                float f10 = rectF3.top;
                canvas.translate(f9, f10);
                this.R.setBounds(0, 0, (int) this.d0.width(), (int) this.d0.height());
                this.R.draw(canvas);
                canvas.translate(-f9, -f10);
            }
            if (this.z0 && this.E != null) {
                PointF pointF = this.e0;
                pointF.set(0.0f, 0.0f);
                Paint.Align align = Paint.Align.LEFT;
                if (this.E != null) {
                    float W2 = this.S + W() + this.V;
                    if (androidx.core.graphics.drawable.a.b(this) == 0) {
                        pointF.x = ((float) bounds.left) + W2;
                        align = Paint.Align.LEFT;
                    } else {
                        pointF.x = ((float) bounds.right) - W2;
                        align = Paint.Align.RIGHT;
                    }
                    this.g0.d().getFontMetrics(this.c0);
                    Paint.FontMetrics fontMetrics = this.c0;
                    pointF.y = ((float) bounds.centerY()) - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
                }
                RectF rectF4 = this.d0;
                rectF4.setEmpty();
                if (this.E != null) {
                    float W3 = this.S + W() + this.V;
                    float Z2 = this.Z + Z() + this.W;
                    if (androidx.core.graphics.drawable.a.b(this) == 0) {
                        rectF4.left = ((float) bounds.left) + W3;
                        rectF4.right = ((float) bounds.right) - Z2;
                    } else {
                        rectF4.left = ((float) bounds.left) + Z2;
                        rectF4.right = ((float) bounds.right) - W3;
                    }
                    rectF4.top = (float) bounds.top;
                    rectF4.bottom = (float) bounds.bottom;
                }
                if (this.g0.c() != null) {
                    this.g0.d().drawableState = getState();
                    this.g0.h(this.a0);
                }
                this.g0.d().setTextAlign(align);
                boolean z2 = Math.round(this.g0.e(this.E.toString())) > Math.round(this.d0.width());
                if (z2) {
                    int save = canvas.save();
                    canvas.clipRect(this.d0);
                    i3 = save;
                } else {
                    i3 = 0;
                }
                CharSequence charSequence = this.E;
                if (z2 && this.y0 != null) {
                    charSequence = TextUtils.ellipsize(charSequence, this.g0.d(), this.d0.width(), this.y0);
                }
                int length = charSequence.length();
                PointF pointF2 = this.e0;
                canvas.drawText(charSequence, 0, length, pointF2.x, pointF2.y, this.g0.d());
                if (z2) {
                    canvas.restoreToCount(i3);
                }
            }
            if (I0()) {
                X(bounds, this.d0);
                RectF rectF5 = this.d0;
                float f11 = rectF5.left;
                float f12 = rectF5.top;
                canvas.translate(f11, f12);
                this.L.setBounds(0, 0, (int) this.d0.width(), (int) this.d0.height());
                if (dy.a) {
                    this.M.setBounds(this.L.getBounds());
                    this.M.jumpToCurrentState();
                    this.M.draw(canvas);
                } else {
                    this.L.draw(canvas);
                }
                canvas.translate(-f11, -f12);
            }
            if (this.p0 < 255) {
                canvas.restoreToCount(i2);
            }
        }
    }

    public float e0() {
        return this.S;
    }

    public Drawable f0() {
        Drawable drawable = this.L;
        if (drawable != null) {
            return androidx.core.graphics.drawable.a.i(drawable);
        }
        return null;
    }

    public void g0(RectF rectF) {
        Y(getBounds(), rectF);
    }

    public int getAlpha() {
        return this.p0;
    }

    public ColorFilter getColorFilter() {
        return this.q0;
    }

    public int getIntrinsicHeight() {
        return (int) this.z;
    }

    public int getIntrinsicWidth() {
        return Math.min(Math.round(this.g0.e(this.E.toString()) + this.S + W() + this.V + this.W + Z() + this.Z), this.A0);
    }

    @Override // defpackage.my
    public int getOpacity() {
        return -3;
    }

    @Override // defpackage.my
    @TargetApi(VungleException.SERVER_ERROR)
    public void getOutline(Outline outline) {
        if (this.B0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.A);
        } else {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.z, this.A);
        }
        outline.setAlpha(((float) this.p0) / 255.0f);
    }

    public TextUtils.TruncateAt h0() {
        return this.y0;
    }

    public ColorStateList i0() {
        return this.D;
    }

    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // defpackage.my
    public boolean isStateful() {
        ColorStateList colorStateList;
        if (!q0(this.x) && !q0(this.y) && !q0(this.B) && (!this.v0 || !q0(this.w0))) {
            zx c = this.g0.c();
            if (!((c == null || (colorStateList = c.b) == null || !colorStateList.isStateful()) ? false : true)) {
                if ((this.Q && this.R != null && this.P) || r0(this.G) || r0(this.R) || q0(this.s0)) {
                    return true;
                }
                return false;
            }
        }
        return true;
    }

    public CharSequence j0() {
        return this.E;
    }

    public zx k0() {
        return this.g0.c();
    }

    public float l0() {
        return this.W;
    }

    public float m0() {
        return this.V;
    }

    public boolean n0() {
        return this.P;
    }

    public boolean o0() {
        return r0(this.L);
    }

    public boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (H0()) {
            onLayoutDirectionChanged |= androidx.core.graphics.drawable.a.e(this.G, i);
        }
        if (G0()) {
            onLayoutDirectionChanged |= androidx.core.graphics.drawable.a.e(this.R, i);
        }
        if (I0()) {
            onLayoutDirectionChanged |= androidx.core.graphics.drawable.a.e(this.L, i);
        }
        if (!onLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        if (H0()) {
            onLevelChange |= this.G.setLevel(i);
        }
        if (G0()) {
            onLevelChange |= this.R.setLevel(i);
        }
        if (I0()) {
            onLevelChange |= this.L.setLevel(i);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    @Override // com.google.android.material.internal.g.b, defpackage.my
    public boolean onStateChange(int[] iArr) {
        if (this.B0) {
            super.onStateChange(iArr);
        }
        return t0(iArr, this.u0);
    }

    public boolean p0() {
        return this.K;
    }

    /* access modifiers changed from: protected */
    public void s0() {
        a aVar = this.x0.get();
        if (aVar != null) {
            aVar.a();
        }
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // defpackage.my
    public void setAlpha(int i) {
        if (this.p0 != i) {
            this.p0 = i;
            invalidateSelf();
        }
    }

    @Override // defpackage.my
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.q0 != colorFilter) {
            this.q0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // defpackage.my, androidx.core.graphics.drawable.b
    public void setTintList(ColorStateList colorStateList) {
        if (this.s0 != colorStateList) {
            this.s0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // defpackage.my, androidx.core.graphics.drawable.b
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.t0 != mode) {
            this.t0 = mode;
            this.r0 = androidx.core.app.b.N0(this, this.s0, mode);
            invalidateSelf();
        }
    }

    public boolean setVisible(boolean z2, boolean z3) {
        boolean visible = super.setVisible(z2, z3);
        if (H0()) {
            visible |= this.G.setVisible(z2, z3);
        }
        if (G0()) {
            visible |= this.R.setVisible(z2, z3);
        }
        if (I0()) {
            visible |= this.L.setVisible(z2, z3);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    public void u0(boolean z2) {
        if (this.Q != z2) {
            boolean G0 = G0();
            this.Q = z2;
            boolean G02 = G0();
            if (G0 != G02) {
                if (G02) {
                    U(this.R);
                } else {
                    J0(this.R);
                }
                invalidateSelf();
                s0();
            }
        }
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public void v0(boolean z2) {
        if (this.F != z2) {
            boolean H0 = H0();
            this.F = z2;
            boolean H02 = H0();
            if (H0 != H02) {
                if (H02) {
                    U(this.G);
                } else {
                    J0(this.G);
                }
                invalidateSelf();
                s0();
            }
        }
    }

    public boolean w0(int[] iArr) {
        if (Arrays.equals(this.u0, iArr)) {
            return false;
        }
        this.u0 = iArr;
        if (I0()) {
            return t0(getState(), iArr);
        }
        return false;
    }

    public void x0(boolean z2) {
        if (this.K != z2) {
            boolean I0 = I0();
            this.K = z2;
            boolean I02 = I0();
            if (I0 != I02) {
                if (I02) {
                    U(this.L);
                } else {
                    J0(this.L);
                }
                invalidateSelf();
                s0();
            }
        }
    }

    public void y0(a aVar) {
        this.x0 = new WeakReference<>(aVar);
    }

    public void z0(TextUtils.TruncateAt truncateAt) {
        this.y0 = truncateAt;
    }
}
