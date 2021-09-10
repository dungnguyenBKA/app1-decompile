package com.camerasideas.collagemaker.activity.widget.squareprogressbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.util.AttributeSet;
import android.view.View;
import com.camerasideas.collagemaker.R$styleable;
import photoeditor.cutout.backgrounderaser.R;

public class SquareProgressView extends View {
    private double b;
    private Paint c;
    private Paint d;
    private Paint e;
    private float f;
    private float g;
    private Canvas h;
    private float i;
    private a j;
    private int k;
    private float l;
    private int m;
    private Path n;

    /* access modifiers changed from: private */
    public class a {
        private b a;
        private float b;

        public a(SquareProgressView squareProgressView) {
        }
    }

    public enum b {
        TOP,
        RIGHT,
        BOTTOM,
        LEFT
    }

    public SquareProgressView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f = 10.0f;
        this.g = 0.0f;
        this.i = 10.0f;
        this.j = new a(Paint.Align.CENTER, 150.0f, true);
        this.k = 1;
        this.l = 20.0f;
        this.n = new Path();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.l);
        this.m = obtainStyledAttributes.getColor(0, androidx.core.content.a.b(context, R.color.b6));
        this.f = (float) obtainStyledAttributes.getDimensionPixelSize(2, 2);
        this.i = (float) obtainStyledAttributes.getDimensionPixelSize(1, 0);
        Paint paint = new Paint();
        this.c = paint;
        paint.setColor(this.m);
        this.c.setStrokeWidth(this.f);
        this.c.setAntiAlias(true);
        this.c.setStyle(Paint.Style.STROKE);
        if (this.i > 0.0f) {
            this.c.setPathEffect(new CornerPathEffect(this.i));
        } else {
            this.c.setPathEffect(null);
        }
        Paint paint2 = new Paint();
        this.d = paint2;
        paint2.setColor(context.getResources().getColor(17170444));
        this.d.setStrokeWidth(1.0f);
        this.d.setAntiAlias(true);
        this.d.setStyle(Paint.Style.STROKE);
        Paint paint3 = new Paint();
        this.e = paint3;
        paint3.setColor(context.getResources().getColor(17170444));
        this.e.setAntiAlias(true);
        this.e.setStyle(Paint.Style.STROKE);
        obtainStyledAttributes.recycle();
    }

    public a a(float f2, Canvas canvas) {
        b bVar = b.TOP;
        a aVar = new a(this);
        this.g = this.f;
        float width = (float) (canvas.getWidth() / 2);
        if (f2 > width) {
            float f3 = f2 - width;
            if (f3 > ((float) canvas.getHeight()) - this.g) {
                float height = f3 - (((float) canvas.getHeight()) - this.g);
                if (height > ((float) canvas.getWidth()) - this.g) {
                    float width2 = height - (((float) canvas.getWidth()) - this.g);
                    if (width2 > ((float) canvas.getHeight()) - this.g) {
                        float height2 = width2 - (((float) canvas.getHeight()) - this.g);
                        if (height2 == width) {
                            aVar.a = bVar;
                            aVar.b = width;
                        } else {
                            aVar.a = bVar;
                            aVar.b = this.g + height2;
                        }
                    } else {
                        aVar.a = b.LEFT;
                        aVar.b = (((float) canvas.getHeight()) - this.g) - width2;
                    }
                } else {
                    aVar.a = b.BOTTOM;
                    aVar.b = (((float) canvas.getWidth()) - this.g) - height;
                }
            } else {
                aVar.a = b.RIGHT;
                aVar.b = this.g + f3;
            }
        } else {
            aVar.a = bVar;
            aVar.b = width + f2;
        }
        return aVar;
    }

    public void b(double d2) {
        this.b = d2;
        invalidate();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        this.h = canvas;
        super.onDraw(canvas);
        this.g = this.f;
        int width = canvas.getWidth();
        int height = canvas.getHeight();
        float f2 = (float) ((height * 2) + (width * 2));
        float f3 = this.g;
        float f4 = f2 - (4.0f * f3);
        float f5 = f3 / 2.0f;
        if (this.b > 0.0d) {
            this.n.reset();
            double d2 = (double) (f4 / 100.0f);
            double d3 = this.b;
            Double.isNaN(d2);
            a a2 = a((float) (d2 * d3), canvas);
            if (a2.a == b.TOP) {
                float f6 = (float) (width / 2);
                if (a2.b <= f6 || this.b >= 100.0d) {
                    this.n.moveTo(f6, f5);
                    float f7 = ((float) width) - f5;
                    this.n.lineTo(f7, f5);
                    float f8 = ((float) height) - f5;
                    this.n.lineTo(f7, f8);
                    this.n.lineTo(f5, f8);
                    this.n.lineTo(f5, f5);
                    this.n.lineTo(this.g, f5);
                    this.n.lineTo(a2.b, f5);
                } else {
                    this.n.moveTo(f6, f5);
                    this.n.lineTo(a2.b, f5);
                }
                canvas.drawPath(this.n, this.c);
            }
            if (a2.a == b.RIGHT) {
                this.n.moveTo((float) (width / 2), f5);
                float f9 = ((float) width) - f5;
                this.n.lineTo(f9, f5);
                this.n.lineTo(f9, a2.b + 0.0f);
                canvas.drawPath(this.n, this.c);
            }
            if (a2.a == b.BOTTOM) {
                this.n.moveTo((float) (width / 2), f5);
                float f10 = (float) width;
                float f11 = f10 - f5;
                this.n.lineTo(f11, f5);
                float f12 = ((float) height) - f5;
                this.n.lineTo(f11, f12);
                this.n.lineTo(f10 - this.g, f12);
                this.n.lineTo(a2.b, f12);
                canvas.drawPath(this.n, this.c);
            }
            if (a2.a == b.LEFT) {
                this.n.moveTo((float) (width / 2), f5);
                float f13 = ((float) width) - f5;
                this.n.lineTo(f13, f5);
                float f14 = (float) height;
                float f15 = f14 - f5;
                this.n.lineTo(f13, f15);
                this.n.lineTo(f5, f15);
                this.n.lineTo(f5, f14 - this.g);
                this.n.lineTo(f5, a2.b);
                canvas.drawPath(this.n, this.c);
            }
        }
    }

    public SquareProgressView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
}
