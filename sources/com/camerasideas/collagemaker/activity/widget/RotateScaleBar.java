package com.camerasideas.collagemaker.activity.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Scroller;
import com.camerasideas.collagemaker.R$styleable;

public class RotateScaleBar extends View {
    private int b;
    private float c;
    private float d;
    private Scroller e;
    private int f;
    private float g;
    private Rect h;
    private Paint i;
    private TextPaint j;
    private boolean k;

    public RotateScaleBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, -1);
    }

    public void computeScroll() {
        if (this.e.computeScrollOffset()) {
            scrollTo(this.e.getCurrX(), 0);
            postInvalidate();
        }
        super.computeScroll();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        this.h.set(0, 0, getWidth(), getHeight());
        for (int i2 = 0; i2 <= this.b; i2++) {
            if (i2 % 5 == 0) {
                float f2 = (float) i2;
                canvas.drawLine(f2 * this.d, ((float) this.h.height()) / 2.0f, f2 * this.d, 0.0f, this.i);
                if (this.k) {
                    String valueOf = String.valueOf(i2 - (this.b / 2));
                    canvas.drawText(valueOf, (f2 * this.d) - (this.j.measureText(valueOf) / 2.0f), (float) this.h.height(), this.j);
                }
            } else {
                float f3 = (float) i2;
                canvas.drawLine(f3 * this.d, ((float) (this.h.height() * 3)) / 8.0f, f3 * this.d, ((float) this.h.height()) / 8.0f, this.i);
            }
        }
        super.onDraw(canvas);
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        int width = (int) (((float) getWidth()) / this.d);
        if (width % 2 != 0) {
            width++;
        }
        this.d = (((float) getWidth()) * 1.0f) / ((float) width);
        this.g = (((float) getWidth()) / this.d) / 2.0f;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int x = (int) motionEvent.getX();
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    return super.onTouchEvent(motionEvent);
                }
                int i2 = this.f - x;
                float f2 = this.c;
                if ((f2 <= 0.0f && i2 < 0) || (f2 >= ((float) this.b) && i2 > 0)) {
                    return super.onTouchEvent(motionEvent);
                }
                Scroller scroller = this.e;
                scroller.startScroll(scroller.getFinalX(), this.e.getFinalY(), i2, 0);
                double finalX = (double) this.e.getFinalX();
                Double.isNaN(finalX);
                double d2 = (double) this.d;
                Double.isNaN(d2);
                float f3 = this.g;
                float rint = ((f3 * 10.0f) + ((float) ((int) Math.rint((finalX * 10.0d) / d2)))) / 10.0f;
                this.c = rint;
                if (rint < 0.0f) {
                    this.c = 0.0f;
                }
                float f4 = this.c;
                int i3 = this.b;
                if (f4 > ((float) i3)) {
                    this.c = (float) i3;
                }
                this.e.setFinalX((int) ((this.c - f3) * this.d));
                System.currentTimeMillis();
                this.f = x;
                postInvalidate();
            }
            return true;
        }
        Scroller scroller2 = this.e;
        if (scroller2 != null && !scroller2.isFinished()) {
            this.e.abortAnimation();
        }
        this.f = x;
        return true;
    }

    public RotateScaleBar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        TypedArray obtainStyledAttributes;
        this.b = 50;
        this.d = 20.0f;
        this.i = new Paint(1);
        this.j = new TextPaint(1);
        if (!(attributeSet == null || (obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.i)) == null)) {
            this.k = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        }
        float applyDimension = TypedValue.applyDimension(1, 1.5f, context.getResources().getDisplayMetrics());
        this.d = (float) c2.b(context, 10.0f);
        this.e = new Scroller(context);
        this.h = new Rect();
        this.i.setColor(Color.parseColor("#AFAFAF"));
        this.i.setAntiAlias(true);
        this.i.setDither(true);
        this.i.setStrokeWidth(applyDimension);
        this.i.setStyle(Paint.Style.STROKE);
        this.j.setTextSize((float) c2.c(context, 13));
        this.j.setTypeface(mm.a(context, "Roboto-Medium.ttf"));
        this.j.setColor(Color.parseColor("#AFAFAF"));
    }
}
