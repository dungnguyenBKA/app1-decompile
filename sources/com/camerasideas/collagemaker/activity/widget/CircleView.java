package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.os.Build;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.camerasideas.collagemaker.R$styleable;

public class CircleView extends AppCompatImageView {
    private boolean d;
    private boolean e;
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
    private Xfermode p;
    private int q;
    private int r;
    private float s;
    private float[] t;
    private float[] u;
    private RectF v;
    private RectF w;
    private Paint x;
    private Path y;
    private Path z;

    public CircleView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void k(Canvas canvas, int i2, int i3, float f2) {
        l(i2, i3);
        this.y.addCircle(((float) this.q) / 2.0f, ((float) this.r) / 2.0f, f2, Path.Direction.CCW);
        canvas.drawPath(this.y, this.x);
    }

    private void l(int i2, int i3) {
        this.y.reset();
        this.x.setStrokeWidth((float) i2);
        this.x.setColor(i3);
        this.x.setStyle(Paint.Style.STROKE);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        canvas.saveLayer(this.v, null, 31);
        super.onDraw(canvas);
        this.x.reset();
        this.y.reset();
        if (this.d) {
            this.y.addCircle(((float) this.q) / 2.0f, ((float) this.r) / 2.0f, this.s, Path.Direction.CCW);
        } else {
            this.y.addRoundRect(this.v, this.u, Path.Direction.CCW);
        }
        this.x.setAntiAlias(true);
        this.x.setStyle(Paint.Style.FILL);
        this.x.setXfermode(this.p);
        if (Build.VERSION.SDK_INT <= 27) {
            canvas.drawPath(this.y, this.x);
        } else {
            this.z.addRect(this.v, Path.Direction.CCW);
            this.z.op(this.y, Path.Op.DIFFERENCE);
            canvas.drawPath(this.z, this.x);
        }
        this.x.setXfermode(null);
        int i2 = this.o;
        if (i2 != 0) {
            this.x.setColor(i2);
            canvas.drawPath(this.y, this.x);
        }
        canvas.restore();
        if (this.d) {
            int i3 = this.f;
            if (i3 > 0) {
                k(canvas, i3, this.g, this.s - (((float) i3) / 2.0f));
            }
            int i4 = this.h;
            if (i4 > 0) {
                k(canvas, i4, this.i, (this.s - ((float) this.f)) - (((float) i4) / 2.0f));
                return;
            }
            return;
        }
        int i5 = this.f;
        if (i5 > 0) {
            int i6 = this.g;
            RectF rectF = this.w;
            float[] fArr = this.t;
            l(i5, i6);
            this.y.addRoundRect(rectF, fArr, Path.Direction.CCW);
            canvas.drawPath(this.y, this.x);
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.q = i2;
        this.r = i3;
        if (!this.d) {
            RectF rectF = this.w;
            float f2 = ((float) this.f) / 2.0f;
            rectF.set(f2, f2, ((float) i2) - f2, ((float) i3) - f2);
        }
        if (this.d) {
            float min = ((float) Math.min(this.q, this.r)) / 2.0f;
            this.s = min;
            RectF rectF2 = this.v;
            float f3 = ((float) this.q) / 2.0f;
            float f4 = ((float) this.r) / 2.0f;
            rectF2.set(f3 - min, f4 - min, f3 + min, f4 + min);
            return;
        }
        this.v.set(0.0f, 0.0f, (float) this.q, (float) this.r);
        if (this.e) {
            this.v = this.w;
        }
    }

    public CircleView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.g = -1;
        this.i = -1;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.b, 0, 0);
        for (int i3 = 0; i3 < obtainStyledAttributes.getIndexCount(); i3++) {
            int index = obtainStyledAttributes.getIndex(i3);
            if (index == 10) {
                this.e = obtainStyledAttributes.getBoolean(index, this.e);
            } else if (index == 9) {
                this.d = obtainStyledAttributes.getBoolean(index, this.d);
            } else if (index == 1) {
                this.f = obtainStyledAttributes.getDimensionPixelSize(index, this.f);
            } else if (index == 0) {
                this.g = obtainStyledAttributes.getColor(index, this.g);
            } else if (index == 8) {
                this.h = obtainStyledAttributes.getDimensionPixelSize(index, this.h);
            } else if (index == 7) {
                this.i = obtainStyledAttributes.getColor(index, this.i);
            } else if (index == 4) {
                this.j = obtainStyledAttributes.getDimensionPixelSize(index, this.j);
            } else if (index == 5) {
                this.k = obtainStyledAttributes.getDimensionPixelSize(index, this.k);
            } else if (index == 6) {
                this.l = obtainStyledAttributes.getDimensionPixelSize(index, this.l);
            } else if (index == 2) {
                this.m = obtainStyledAttributes.getDimensionPixelSize(index, this.m);
            } else if (index == 3) {
                this.n = obtainStyledAttributes.getDimensionPixelSize(index, this.n);
            } else if (index == 11) {
                this.o = obtainStyledAttributes.getColor(index, this.o);
            }
        }
        obtainStyledAttributes.recycle();
        this.t = new float[8];
        this.u = new float[8];
        this.w = new RectF();
        this.v = new RectF();
        this.x = new Paint();
        this.y = new Path();
        if (Build.VERSION.SDK_INT <= 27) {
            this.p = new PorterDuffXfermode(PorterDuff.Mode.DST_IN);
        } else {
            this.p = new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
            this.z = new Path();
        }
        if (!this.d) {
            if (this.j > 0) {
                int i4 = 0;
                while (true) {
                    float[] fArr = this.t;
                    if (i4 >= fArr.length) {
                        break;
                    }
                    float f2 = (float) this.j;
                    fArr[i4] = f2;
                    this.u[i4] = f2 - (((float) this.f) / 2.0f);
                    i4++;
                }
            } else {
                float[] fArr2 = this.t;
                float f3 = (float) this.k;
                fArr2[1] = f3;
                fArr2[0] = f3;
                float f4 = (float) this.l;
                fArr2[3] = f4;
                fArr2[2] = f4;
                float f5 = (float) this.n;
                fArr2[5] = f5;
                fArr2[4] = f5;
                float f6 = (float) this.m;
                fArr2[7] = f6;
                fArr2[6] = f6;
                float[] fArr3 = this.u;
                float f7 = ((float) this.f) / 2.0f;
                float f8 = f3 - f7;
                fArr3[1] = f8;
                fArr3[0] = f8;
                float f9 = f4 - f7;
                fArr3[3] = f9;
                fArr3[2] = f9;
                float f10 = f5 - f7;
                fArr3[5] = f10;
                fArr3[4] = f10;
                float f11 = f6 - f7;
                fArr3[7] = f11;
                fArr3[6] = f11;
            }
        }
        if (!this.d) {
            this.h = 0;
        }
        setLayerType(1, null);
    }
}
