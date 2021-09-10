package com.camerasideas.baseutils.widget;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.ImageView;
import com.camerasideas.baseutils.R$styleable;

public class AnimCircleView extends ImageView {
    private int b;
    private int c;
    private int d;
    private int e;
    private Paint f;
    private Paint g;
    private float h;
    private int i;
    private int j = -16777216;
    private ObjectAnimator k;
    private ObjectAnimator l;
    private ObjectAnimator m;
    private AnimatorSet n = new AnimatorSet();
    private int o;

    public AnimCircleView(Context context) {
        super(context);
        b(context, null);
    }

    private void b(Context context, AttributeSet attributeSet) {
        setFocusable(true);
        setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        setClickable(true);
        Paint paint = new Paint(1);
        this.f = paint;
        paint.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint(1);
        this.g = paint2;
        paint2.setStyle(Paint.Style.FILL);
        this.i = (int) TypedValue.applyDimension(1, 4.0f, getResources().getDisplayMetrics());
        int i2 = -16777216;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.a);
            i2 = obtainStyledAttributes.getColor(0, -16777216);
            this.i = (int) obtainStyledAttributes.getDimension(1, (float) this.i);
            obtainStyledAttributes.recycle();
        }
        setColor(i2);
        this.o = getResources().getInteger(17694721);
    }

    public float getAnimationProgress() {
        return this.h;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        int i2 = this.o;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, "animationProgress", 0.0f, 0.0f);
        this.k = ofFloat;
        long j2 = (long) i2;
        ofFloat.setDuration(j2);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this, "animationProgress", 0.0f, 0.0f);
        this.l = ofFloat2;
        ofFloat2.setDuration(j2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this, "animationProgress", 0.0f, 0.0f);
        this.m = ofFloat3;
        ofFloat3.setDuration(j2);
        this.l.setFloatValues(this.h, (float) this.i);
        this.m.setFloatValues((float) this.i, 0.0f);
        this.n.play(this.l).after(this.m);
        this.n.addListener(new a(this));
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AnimatorSet animatorSet = this.n;
        if (animatorSet != null) {
            animatorSet.end();
            this.n.removeAllListeners();
        }
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        canvas.drawCircle((float) this.c, (float) this.b, ((float) this.e) + this.h, this.g);
        super.onDraw(canvas);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        this.c = i2 / 2;
        this.b = i3 / 2;
        int min = Math.min(i2, i3) / 2;
        this.d = min;
        int i6 = this.i;
        this.e = (min - i6) - (i6 / 2);
    }

    public void setAnimationProgress(float f2) {
        this.h = f2;
        invalidate();
    }

    public void setColor(int i2) {
        this.j = i2;
        Color.argb(Math.min(255, Color.alpha(i2)), Math.min(255, Color.red(i2) + 10), Math.min(255, Color.green(i2) + 10), Math.min(255, Color.blue(i2) + 10));
        this.f.setColor(this.j);
        this.g.setColor(this.j);
        this.g.setAlpha(40);
        invalidate();
    }

    public void startAnimator() {
        this.n.start();
    }

    public void stopAnimator() {
        this.n.cancel();
    }

    public AnimCircleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        b(context, attributeSet);
    }

    public AnimCircleView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        b(context, attributeSet);
    }
}
