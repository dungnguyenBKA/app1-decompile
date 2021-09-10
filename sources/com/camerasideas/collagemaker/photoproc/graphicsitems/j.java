package com.camerasideas.collagemaker.photoproc.graphicsitems;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.BlurMaskFilter;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.TypedValue;
import androidx.core.app.b;
import androidx.core.content.a;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class j extends e implements Cloneable {
    private TextPaint A;
    private TextPaint B;
    private TextPaint C;
    private StaticLayout D;
    private StaticLayout E;
    private StaticLayout F;
    private int G;
    private int H;
    private int I = c2.b(this.b, 3.0f);
    private float J;
    private BlurMaskFilter K;
    private int L;
    private Shader M;
    private Shader N;
    private Shader O;
    private Drawable P;
    private k x;
    private Paint y;
    private Paint z = new Paint(1);

    public j() {
        c2.b(this.b, 50.0f);
        this.q = c2.b(this.b, 10.0f);
        this.L = c2.b(this.b, 10.0f);
    }

    private void E(Canvas canvas) {
        canvas.save();
        this.A.setAlpha((int) (this.x.x() * 255.0f));
        int i = this.q + this.r;
        float f = (float) i;
        float f2 = 2.0f * f;
        float f3 = ((float) this.G) + f2;
        float f4 = f2 + this.J;
        this.x.u();
        this.x.A();
        this.x.v();
        this.x.A();
        float A2 = (float) this.x.A();
        RectF rectF = new RectF(((float) (-i)) - A2, -A2, (f3 - f) + A2, (f4 - ((float) (i * 2))) + A2);
        if (this.x.c()) {
            Drawable drawable = this.P;
            if (drawable != null) {
                drawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
                this.P.setAlpha((int) ((((float) this.x.f()) / 100.0f) * 255.0f));
                this.P.draw(canvas);
            } else {
                this.z.setStyle(Paint.Style.FILL);
                this.z.setColor(this.x.g());
                this.z.setAlpha((int) ((((float) this.x.f()) / 100.0f) * 255.0f));
                if (Build.VERSION.SDK_INT >= 21) {
                    float f5 = (float) this.I;
                    canvas.drawRoundRect(rectF, f5, f5, this.z);
                } else {
                    canvas.drawRect(rectF, this.z);
                }
            }
        }
        O();
        float f6 = 0.0f;
        if (this.x.d()) {
            if (this.x.s() <= 100) {
                this.C.setMaskFilter(this.K);
            } else {
                this.C.setMaskFilter(null);
            }
            this.C.setStyle(Paint.Style.FILL);
            if (this.N == null) {
                this.C.setColor(this.x.r());
                this.C.setAlpha((int) (this.x.q() * 255.0f));
            }
            this.C.setShader(this.N);
            if (this.x.D()) {
                this.C.setFlags(8);
            } else {
                this.C.setFlags(0);
            }
            this.C.setFakeBoldText(this.x.B());
            this.C.setTextSkewX(this.x.C() ? -0.25f : 0.0f);
            canvas.translate((((float) this.x.u()) / 50.0f) * ((float) this.x.A()), (((float) this.x.v()) / 50.0f) * ((float) this.x.A()));
            this.F.draw(canvas);
            canvas.translate((((float) (-this.x.u())) / 50.0f) * ((float) this.x.A()), (((float) (-this.x.v())) / 50.0f) * ((float) this.x.A()));
        }
        if (this.x.b()) {
            if (this.E == null) {
                K();
            }
            this.B.setStyle(Paint.Style.STROKE);
            double k = (double) ((((float) this.x.k()) / 100.0f) * 10.0f);
            double d = this.e;
            Double.isNaN(k);
            Double.isNaN(k);
            this.B.setStrokeWidth(TypedValue.applyDimension(1, (float) (k / d), this.b.getResources().getDisplayMetrics()));
            this.B.setStrokeJoin(Paint.Join.ROUND);
            if (this.O == null) {
                this.B.setColor(this.x.i());
            }
            this.B.setShader(this.O);
            if (this.x.D()) {
                this.B.setFlags(8);
            } else {
                this.B.setFlags(0);
            }
            this.B.setFakeBoldText(this.x.B());
            this.B.setTextSkewX(this.x.C() ? -0.25f : 0.0f);
            this.E.draw(canvas);
        }
        this.A.setColor(this.x.y());
        this.A.setAlpha((int) (this.x.x() * 255.0f));
        this.A.setStyle(Paint.Style.FILL);
        this.A.setShader(this.M);
        if (this.x.D()) {
            this.A.setFlags(8);
        } else {
            this.A.setFlags(0);
        }
        this.A.setFakeBoldText(this.x.B());
        TextPaint textPaint = this.A;
        if (this.x.C()) {
            f6 = -0.25f;
        }
        textPaint.setTextSkewX(f6);
        this.D.draw(canvas);
        canvas.restore();
    }

    private float I(TextPaint textPaint, String str) {
        String[] split = str.split(System.getProperty("line.separator", "\n"));
        float f = 0.0f;
        for (String str2 : split) {
            if (str2 != null) {
                float measureText = textPaint.measureText(str2);
                if (measureText > f) {
                    f = measureText;
                }
            }
        }
        return f;
    }

    private void K() {
        TextPaint textPaint = new TextPaint();
        this.B = textPaint;
        textPaint.setAntiAlias(true);
        this.B.setTypeface(mm.a(this.b, this.x.l()));
        this.B.setTextSize((float) c2.c(this.b, this.x.A()));
        this.B.setStrokeWidth((float) c2.b(this.b, (((float) this.x.k()) / 100.0f) * 10.0f));
        this.B.setStyle(Paint.Style.STROKE);
        this.B.setStrokeJoin(Paint.Join.ROUND);
        if (Build.VERSION.SDK_INT >= 21) {
            this.B.setLetterSpacing(this.x.m());
        }
        int round = Math.round(I(this.A, this.x.w()));
        int i = this.H;
        if (i == 0) {
            i = this.g;
        }
        int min = Math.min(round, i);
        this.G = min;
        if (min < 0) {
            int i2 = this.H;
            if (i2 == 0) {
                i2 = this.g;
            }
            this.G = i2;
        }
        this.E = new StaticLayout(this.x.w(), this.B, this.G, this.x.e(), this.x.o(), 0.0f, true);
        this.J = (float) this.D.getHeight();
    }

    private void P(k kVar) {
        GradientDrawable gradientDrawable = null;
        this.M = null;
        if (kVar.z() != 0) {
            Context context = this.b;
            Bitmap q = cm.q(context, this.G, (int) this.J, b.T(context, kVar.z()));
            if (cm.l(q)) {
                Shader.TileMode tileMode = Shader.TileMode.MIRROR;
                this.M = new BitmapShader(q, tileMode, tileMode);
            }
        }
        this.N = null;
        if (kVar.t() != 0) {
            Context context2 = this.b;
            Bitmap q2 = cm.q(context2, this.G, (int) this.J, b.T(context2, kVar.t()));
            if (cm.l(q2)) {
                Shader.TileMode tileMode2 = Shader.TileMode.MIRROR;
                this.N = new BitmapShader(q2, tileMode2, tileMode2);
            }
        }
        this.O = null;
        if (kVar.j() != 0) {
            Context context3 = this.b;
            Bitmap q3 = cm.q(context3, this.G, (int) this.J, b.T(context3, kVar.j()));
            if (cm.l(q3)) {
                Shader.TileMode tileMode3 = Shader.TileMode.MIRROR;
                this.O = new BitmapShader(q3, tileMode3, tileMode3);
            }
        }
        this.P = null;
        if (kVar.h() != 0) {
            int h = kVar.h();
            this.x.H(h);
            Drawable c = a.c(this.b, h);
            if (c == null) {
                em.h("TextItem", "onSelectedGradientChanged failed: drawable == null");
                return;
            }
            List<on> a = rn.a();
            int i = 0;
            while (true) {
                if (i >= a.size()) {
                    break;
                }
                qn qnVar = (qn) a.get(i);
                if (qnVar == null || qnVar.a() != h) {
                    i++;
                } else {
                    GradientDrawable.Orientation a2 = hp.a(qnVar.c(), 0.0f);
                    int[] b = qnVar.b();
                    if (!(a2 == null || b == null || b.length <= 0)) {
                        gradientDrawable = new GradientDrawable(a2, b);
                    }
                    if (gradientDrawable instanceof GradientDrawable) {
                        gradientDrawable.setShape(0);
                        gradientDrawable.setCornerRadius((float) this.I);
                    }
                    c = gradientDrawable;
                }
            }
            this.P = c;
        }
    }

    private void Q() {
        float[] fArr = this.k;
        float f = fArr[2];
        float f2 = fArr[0];
        float f3 = fArr[5];
        float f4 = fArr[1];
        int i = this.q;
        int i2 = this.r;
        float f5 = (((float) (i + i2)) * 2.0f) + ((float) this.G);
        float f6 = (((float) (i + i2)) * 2.0f) + this.J;
        int i3 = i + i2;
        this.x.u();
        this.x.A();
        this.x.v();
        this.x.A();
        float A2 = (float) this.x.A();
        float[] fArr2 = this.k;
        float f7 = ((float) (-i3)) - A2;
        fArr2[0] = f7;
        float f8 = -A2;
        fArr2[1] = f8;
        float f9 = (f5 - ((float) i3)) + A2;
        fArr2[2] = f9;
        fArr2[3] = f8;
        fArr2[4] = f9;
        float f10 = (f6 - ((float) (i3 * 2))) + A2;
        fArr2[5] = f10;
        fArr2[6] = f7;
        fArr2[7] = f10;
        fArr2[8] = (fArr2[2] + fArr2[0]) / 2.0f;
        fArr2[9] = (fArr2[5] + fArr2[3]) / 2.0f;
        this.c.mapPoints(this.l, fArr2);
    }

    /* renamed from: D */
    public j clone() {
        j jVar;
        CloneNotSupportedException e;
        Matrix matrix = null;
        try {
            jVar = (j) super.clone();
            try {
                jVar.z = new Paint(this.z);
                jVar.J(this.x);
                if (this.c != null) {
                    matrix = new Matrix(this.c);
                }
                jVar.c = matrix;
                jVar.e = this.e;
                jVar.k = (float[]) this.k.clone();
                jVar.l = (float[]) this.l.clone();
                jVar.i = false;
                int i = this.L;
                jVar.w((float) i, (float) i);
            } catch (CloneNotSupportedException e2) {
                e = e2;
                e.printStackTrace();
                return jVar;
            }
        } catch (CloneNotSupportedException e3) {
            jVar = null;
            e = e3;
            e.printStackTrace();
            return jVar;
        }
        return jVar;
    }

    public String F() {
        k kVar = this.x;
        if (kVar == null) {
            return "Center";
        }
        if (kVar.e() == Layout.Alignment.ALIGN_NORMAL) {
            return "Left";
        }
        if (this.x.e() != Layout.Alignment.ALIGN_CENTER && this.x.e() == Layout.Alignment.ALIGN_OPPOSITE) {
            return "Right";
        }
        return "Center";
    }

    public String G() {
        k kVar = this.x;
        if (kVar == null) {
            return null;
        }
        String l = kVar.l();
        return l.substring(l.lastIndexOf("/") + 1);
    }

    public k H() {
        return this.x;
    }

    public void J(k kVar) {
        this.q = c2.b(this.b, 5.0f);
        k kVar2 = new k();
        this.x = kVar2;
        k.a(kVar2, kVar);
        Paint paint = new Paint(3);
        this.y = paint;
        paint.setColor(this.b.getResources().getColor(R.color.hf));
        this.y.setStyle(Paint.Style.STROKE);
        this.y.setStrokeWidth((float) this.r);
        this.y.setAntiAlias(true);
        TextPaint textPaint = new TextPaint();
        this.A = textPaint;
        textPaint.setAntiAlias(true);
        this.A.setColor(this.x.y());
        this.A.setTypeface(mm.a(this.b, this.x.l()));
        this.A.setTextSize((float) c2.c(this.b, this.x.A()));
        this.A.setStyle(Paint.Style.FILL);
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            this.A.setLetterSpacing(this.x.m());
        }
        int round = Math.round(I(this.A, this.x.w()));
        int i2 = this.H;
        if (i2 == 0) {
            i2 = this.g;
        }
        int min = Math.min(round, i2);
        this.G = min;
        if (min < 0) {
            int i3 = this.H;
            if (i3 == 0) {
                i3 = this.g;
            }
            this.G = i3;
        }
        StaticLayout staticLayout = new StaticLayout(this.x.w(), this.A, this.G, this.x.e(), this.x.o(), 0.0f, true);
        this.D = staticLayout;
        this.J = (float) staticLayout.getHeight();
        K();
        TextPaint textPaint2 = new TextPaint();
        this.C = textPaint2;
        textPaint2.setAntiAlias(true);
        this.C.setTypeface(mm.a(this.b, this.x.l()));
        this.C.setTextSize((float) c2.c(this.b, this.x.A()));
        this.C.setStyle(Paint.Style.FILL);
        this.C.setColor(this.x.r());
        this.C.setAlpha((int) (this.x.q() * 255.0f));
        if (i >= 21) {
            this.C.setLetterSpacing(this.x.m());
        }
        if (this.G < 0) {
            int i4 = this.H;
            if (i4 == 0) {
                i4 = this.g;
            }
            this.G = i4;
        }
        this.F = new StaticLayout(this.x.w(), this.C, this.G, this.x.e(), this.x.o(), 0.0f, true);
        O();
        this.x.A();
        this.x.A();
        this.c.reset();
        this.c.postTranslate(((float) (this.g - this.G)) / 2.0f, (((float) this.h) - this.J) / 2.0f);
        float s = (((float) this.x.s()) / 100.0f) * 10.0f;
        if (s > 0.0f) {
            this.K = new BlurMaskFilter(s, BlurMaskFilter.Blur.NORMAL);
        } else {
            this.K = null;
        }
        P(this.x);
        Q();
    }

    public void L(Canvas canvas, float f, float f2, float f3) {
        Matrix matrix = new Matrix(this.c);
        float f4 = this.p ? -1.0f : 1.0f;
        float[] fArr = this.k;
        matrix.preScale(f4, 1.0f, fArr[8], fArr[9]);
        matrix.postScale(f, f, 0.0f, 0.0f);
        matrix.postTranslate(f2, f3);
        canvas.save();
        canvas.setMatrix(matrix);
        E(canvas);
        canvas.restore();
    }

    public void M(int i) {
        this.H = i;
    }

    public void N(k kVar) {
        k.a(this.x, kVar);
        float s = (((float) kVar.s()) / 100.0f) * 10.0f;
        if (s > 0.0f) {
            this.K = new BlurMaskFilter(s, BlurMaskFilter.Blur.NORMAL);
        } else {
            this.K = null;
        }
        R(true);
        P(kVar);
    }

    public void O() {
        if (Build.VERSION.SDK_INT >= 21) {
            this.A.setLetterSpacing(this.x.m());
            this.B.setLetterSpacing(this.x.m());
            this.C.setLetterSpacing(this.x.m());
        }
    }

    public void R(boolean z2) {
        if (z2) {
            this.A.setTypeface(mm.a(this.b, this.x.l()));
            this.A.setTextSize((float) c2.c(this.b, this.x.A()));
            this.B.setTypeface(mm.a(this.b, this.x.l()));
            this.B.setTextSize((float) c2.c(this.b, this.x.A()));
            this.C.setTypeface(mm.a(this.b, this.x.l()));
            this.C.setTextSize((float) c2.c(this.b, this.x.A()));
            O();
            int round = Math.round(I(this.A, this.x.w()));
            int i = this.H;
            if (i == 0) {
                i = this.g;
            }
            this.G = Math.min(round, i);
        }
        if (this.G < 0) {
            int i2 = this.H;
            if (i2 == 0) {
                i2 = this.g;
            }
            this.G = i2;
        }
        this.D = new StaticLayout(this.x.w(), this.A, this.G, this.x.e(), this.x.o(), 0.0f, true);
        this.E = new StaticLayout(this.x.w(), this.B, this.G, this.x.e(), this.x.o(), 0.0f, true);
        this.F = new StaticLayout(this.x.w(), this.C, this.G, this.x.e(), this.x.o(), 0.0f, true);
        this.J = (float) this.D.getHeight();
        Q();
    }

    @Override // com.camerasideas.collagemaker.photoproc.graphicsitems.b
    @TargetApi(11)
    public void c(Canvas canvas) {
        if (this.j) {
            canvas.save();
            canvas.concat(this.c);
            canvas.setDrawFilter(this.w);
            E(canvas);
            canvas.restore();
        }
    }

    @Override // com.camerasideas.collagemaker.photoproc.graphicsitems.b
    public void d(Canvas canvas) {
        if (this.i && this.j) {
            canvas.save();
            canvas.concat(this.c);
            canvas.setDrawFilter(this.w);
            double d = this.e;
            Paint paint = this.y;
            double d2 = (double) this.r;
            Double.isNaN(d2);
            Double.isNaN(d2);
            paint.setStrokeWidth((float) (d2 / d));
            float[] fArr = this.k;
            RectF rectF = new RectF(fArr[0], fArr[1], fArr[4], fArr[5]);
            float f = (float) this.I;
            canvas.drawRoundRect(rectF, f, f, this.y);
            canvas.restore();
        }
    }

    @Override // com.camerasideas.collagemaker.photoproc.graphicsitems.b
    public RectF k() {
        float f = f();
        float g = g();
        float[] fArr = this.l;
        float abs = Math.abs(fArr[2] - fArr[0]);
        float[] fArr2 = this.l;
        float f2 = abs / 2.0f;
        float abs2 = Math.abs(fArr2[5] - fArr2[3]) / 2.0f;
        return new RectF(f - f2, g - abs2, f + f2, g + abs2);
    }

    @Override // com.camerasideas.collagemaker.photoproc.graphicsitems.b
    public boolean s(float f, float f2) {
        float[] fArr = (float[]) this.k.clone();
        this.c.mapPoints(fArr, this.k);
        if (r(fArr)) {
            return true;
        }
        this.l = fArr;
        float[] fArr2 = this.l;
        PointF pointF = new PointF(fArr2[0], fArr2[1]);
        float[] fArr3 = this.l;
        PointF pointF2 = new PointF(fArr3[2], fArr3[3]);
        float[] fArr4 = this.l;
        PointF pointF3 = new PointF(fArr4[4], fArr4[5]);
        float[] fArr5 = this.l;
        PointF pointF4 = new PointF(fArr5[6], fArr5[7]);
        PointF pointF5 = new PointF(f, f2);
        boolean b = b(pointF, pointF2, pointF5);
        boolean b2 = b(pointF2, pointF3, pointF5);
        boolean b3 = b(pointF3, pointF4, pointF5);
        boolean b4 = b(pointF4, pointF, pointF5);
        if (b && b2 && b3 && b4) {
            return true;
        }
        if (b || b2 || b3 || !b4) {
        }
        return false;
    }

    @Override // com.camerasideas.collagemaker.photoproc.graphicsitems.b
    public void u(float f, float f2, float f3) {
        double d = this.e;
        double d2 = (double) f;
        Double.isNaN(d2);
        this.e = d * d2;
        this.c.postScale(f, f, f2, f3);
        this.c.mapPoints(this.l, this.k);
    }
}
