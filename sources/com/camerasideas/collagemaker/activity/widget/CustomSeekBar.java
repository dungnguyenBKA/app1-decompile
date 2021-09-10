package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import com.camerasideas.collagemaker.R$styleable;

public class CustomSeekBar extends View {
    private Paint A;
    private Paint B;
    private Paint C;
    private Paint D;
    private Paint E;
    private Paint F;
    private Paint G;
    private Rect H;
    private Rect I;
    private RectF J;
    private int K;
    private float L;
    private float M;
    private int N;
    private boolean O;
    private boolean P;
    private int Q;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private boolean x;
    private boolean y;
    private int z;

    public CustomSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private int a(float f2) {
        return (int) TypedValue.applyDimension(1, f2, getResources().getDisplayMetrics());
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        float f2 = (float) this.d;
        int i2 = this.f;
        canvas.drawLine(f2, (float) i2, (float) this.e, (float) i2, this.A);
        float f3 = (float) this.d;
        int i3 = this.f;
        this.B.setShader(new LinearGradient(f3, (float) i3, (float) this.e, (float) i3, this.n, this.o, Shader.TileMode.CLAMP));
        float f4 = (float) this.d;
        int i4 = this.f;
        canvas.drawLine(f4, (float) i4, (float) this.e, (float) i4, this.B);
        int i5 = 0;
        int round = Math.round((((((float) (this.k + 0)) * 1.0f) / ((float) this.i)) * ((float) this.l)) + ((float) this.d));
        int i6 = this.d;
        if (round < i6 || round > (i6 = this.e)) {
            round = i6;
        }
        canvas.drawCircle((float) round, (float) this.f, (float) this.j, this.D);
        if (this.x && this.y) {
            int i7 = this.t;
            int i8 = round - i7;
            int i9 = round + i7;
            if (i8 < 0) {
                i9 = i7 * 2;
            } else {
                int i10 = this.b;
                if (i9 > i10) {
                    i7 = i10 - i7;
                    i9 = i10;
                    i5 = i10 - (i7 * 2);
                } else {
                    i5 = i8;
                    int i11 = this.g;
                    int i12 = this.u;
                    this.J.set((float) i5, (float) (i11 - i12), (float) i9, (float) (i11 + i12));
                    RectF rectF = this.J;
                    int i13 = this.v;
                    canvas.drawRoundRect(rectF, (float) i13, (float) i13, this.G);
                    canvas.drawText(String.valueOf(this.k), (float) round, ((float) this.g) - ((this.F.ascent() + this.F.descent()) / 2.0f), this.F);
                }
            }
            round = i7;
            int i112 = this.g;
            int i122 = this.u;
            this.J.set((float) i5, (float) (i112 - i122), (float) i9, (float) (i112 + i122));
            RectF rectF2 = this.J;
            int i132 = this.v;
            canvas.drawRoundRect(rectF2, (float) i132, (float) i132, this.G);
            canvas.drawText(String.valueOf(this.k), (float) round, ((float) this.g) - ((this.F.ascent() + this.F.descent()) / 2.0f), this.F);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        this.c = View.MeasureSpec.getSize(i3);
        this.b = View.MeasureSpec.getSize(i2);
        int a = a(64.0f);
        int a2 = a(128.0f);
        if (this.c < a || View.MeasureSpec.getMode(i3) == Integer.MIN_VALUE) {
            this.c = a;
        }
        if (this.b < a2 || View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE) {
            this.b = a2;
        }
        setMeasuredDimension(this.b, this.c);
        int i4 = this.j;
        int i5 = this.p;
        int i6 = i4 + i5;
        this.d = i6;
        int i7 = (this.b - i4) - i5;
        this.e = i7;
        int i8 = this.c;
        this.g = i8 / 4;
        this.f = ((i8 / 4) * 3) - this.N;
        this.l = i7 - i6;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x0010, code lost:
        if (r0 != 3) goto L_0x014d;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
        // Method dump skipped, instructions count: 337
        */
        throw new UnsupportedOperationException("Method not decompiled: com.camerasideas.collagemaker.activity.widget.CustomSeekBar.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public CustomSeekBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.y = true;
        this.z = 100;
        this.O = true;
        this.P = true;
        setLayerType(1, null);
        this.k = 0;
        this.h = 100;
        this.i = 100;
        this.n = -10856105;
        this.o = -1;
        this.q = 1426063360;
        this.p = a(2.5f);
        this.r = a(0.0f);
        this.s = a(1.0f);
        a(2.0f);
        this.j = a(9.0f);
        int a = a(6.0f);
        this.m = a;
        int i3 = a / 2;
        this.u = a(24.0f) / 2;
        this.t = a(34.0f) / 2;
        this.v = a(14.0f);
        this.w = a(16.0f);
        Paint paint = new Paint(1);
        this.D = paint;
        paint.setColor(-1);
        this.D.setShadowLayer((float) this.p, (float) this.r, (float) this.s, this.q);
        Paint paint2 = new Paint(1);
        this.C = paint2;
        paint2.setColor(-1);
        Paint paint3 = new Paint(1);
        this.B = paint3;
        paint3.setStrokeWidth((float) this.m);
        this.B.setStrokeCap(Paint.Cap.ROUND);
        this.E = new Paint(1);
        Paint paint4 = new Paint(1);
        this.A = paint4;
        paint4.setStrokeWidth((float) this.m);
        this.A.setStrokeCap(Paint.Cap.ROUND);
        this.A.setShadowLayer((float) this.p, (float) this.r, (float) this.s, this.q);
        Paint paint5 = new Paint(1);
        this.G = paint5;
        paint5.setColor(-1610612736);
        Paint paint6 = new Paint(1);
        this.F = paint6;
        paint6.setColor(-1);
        this.F.setTextSize((float) this.w);
        this.F.setTextAlign(Paint.Align.CENTER);
        this.F.setShadowLayer((float) this.p, (float) this.r, (float) this.s, this.q);
        this.H = new Rect();
        this.I = new Rect();
        this.J = new RectF();
        this.K = a(10.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.d);
        this.N = (int) obtainStyledAttributes.getDimension(0, 0.0f);
        this.y = obtainStyledAttributes.getBoolean(2, true);
        obtainStyledAttributes.recycle();
    }
}
