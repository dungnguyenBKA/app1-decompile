package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RadialGradient;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import photoeditor.cutout.backgrounderaser.R;

public class StarCheckView extends View {
    private Bitmap b;
    private Bitmap c;
    private Paint d;
    private Paint e;
    private boolean f = false;
    private ValueAnimator g;
    private ValueAnimator h;
    private ValueAnimator i;
    private a j;

    public interface a {
        void onAnimationEnd(Animator animator);
    }

    public StarCheckView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        f();
    }

    private void e(Canvas canvas, Bitmap bitmap, int i2) {
        if (bitmap != null && canvas != null) {
            if (i2 > 255) {
                i2 = 255;
            }
            this.d.setAlpha(i2);
            canvas.drawBitmap(bitmap, (float) ((getWidth() - bitmap.getWidth()) / 2), (float) ((getHeight() - bitmap.getHeight()) / 2), this.d);
        }
    }

    private void f() {
        this.b = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.jl);
        this.c = BitmapFactory.decodeResource(getContext().getResources(), R.drawable.jm);
        this.d = new Paint();
        Paint paint = new Paint();
        this.e = paint;
        paint.setAntiAlias(true);
        this.e.setStyle(Paint.Style.FILL_AND_STROKE);
    }

    public void g(boolean z, boolean z2) {
        this.f = z;
        if (!z || !z2) {
            ValueAnimator valueAnimator = this.g;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.g = null;
            }
            ValueAnimator valueAnimator2 = this.i;
            if (valueAnimator2 != null) {
                valueAnimator2.cancel();
                this.i = null;
            }
            ValueAnimator valueAnimator3 = this.h;
            if (valueAnimator3 != null) {
                valueAnimator3.cancel();
                this.h = null;
            }
            postInvalidate();
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.4f, 1.0f);
        this.g = ofFloat;
        ofFloat.addUpdateListener(new z(this));
        this.g.setDuration(1200L);
        this.g.addListener(new a0(this));
        this.g.setInterpolator(new OvershootInterpolator(2.0f));
        this.g.start();
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.4f);
        this.i = ofFloat2;
        ofFloat2.setDuration(400L);
        this.i.addListener(new b0(this));
        this.i.setInterpolator(new OvershootInterpolator(2.0f));
        this.i.start();
        ValueAnimator ofFloat3 = ValueAnimator.ofFloat(0.4f, 1.2f);
        this.h = ofFloat3;
        ofFloat3.setDuration(1200L);
        this.h.addListener(new c0(this));
        this.h.setInterpolator(new AccelerateDecelerateInterpolator());
        this.h.start();
    }

    public void h(a aVar) {
        this.j = aVar;
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        int i2;
        int i3;
        super.onDraw(canvas);
        if (getWidth() > 0 && getHeight() > 0) {
            float width = (float) (getWidth() / 2);
            float height = (float) (getHeight() / 2);
            ValueAnimator valueAnimator = this.h;
            if (valueAnimator != null) {
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                if (getWidth() > getHeight()) {
                    i3 = getHeight() / 2;
                } else {
                    i3 = getWidth() / 2;
                }
                float f2 = ((float) i3) * floatValue;
                this.e.setAlpha(((int) (((1.2f - floatValue) / 1.2f) * 255.0f)) * 2);
                this.e.setShader(new RadialGradient(width, height, f2, new int[]{1728043553, 1728043553, -855647711}, (float[]) null, Shader.TileMode.CLAMP));
                canvas.drawCircle((float) (getWidth() / 2), (float) (getHeight() / 2), f2, this.e);
            }
            boolean z = false;
            ValueAnimator valueAnimator2 = this.i;
            int i4 = 255;
            if (valueAnimator2 != null) {
                float floatValue2 = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
                i2 = (int) (((float) 255) * floatValue2);
                canvas.save();
                canvas.scale(floatValue2, floatValue2, width, height);
                z = true;
            } else {
                i2 = 255;
            }
            e(canvas, this.b, i2);
            if (z) {
                canvas.restore();
            }
            ValueAnimator valueAnimator3 = this.g;
            if (valueAnimator3 != null) {
                float floatValue3 = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
                i4 = (int) (((float) 255) * floatValue3);
                canvas.scale(floatValue3, floatValue3, width, height);
            }
            if (this.f) {
                e(canvas, this.c, i4);
            }
        }
    }

    public StarCheckView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        f();
    }
}
