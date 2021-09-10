package com.camerasideas.collagemaker.activity.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import com.camerasideas.collagemaker.R$styleable;
import java.util.ArrayList;
import java.util.List;
import photoeditor.cutout.backgrounderaser.R;

public class CircularProgressView extends View {
    private Paint b;
    private Paint c;
    private int d = 0;
    private RectF e;
    private int f = 0;
    private boolean g;
    private boolean h;
    private float i;
    private float j;
    private float k;
    private float l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private List<d> s;
    private float t;
    private float u;
    private ValueAnimator v;
    private ValueAnimator w;
    private AnimatorSet x;
    private float y;

    /* access modifiers changed from: package-private */
    public class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CircularProgressView.this.t = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            CircularProgressView.this.invalidate();
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            CircularProgressView.this.u = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            CircularProgressView.this.invalidate();
        }
    }

    /* access modifiers changed from: package-private */
    public class c extends AnimatorListenerAdapter {
        boolean a = false;

        c() {
        }

        public void onAnimationCancel(Animator animator) {
            this.a = true;
        }

        public void onAnimationEnd(Animator animator) {
            if (!this.a) {
                CircularProgressView.this.g();
            }
        }
    }

    public interface d {
        void a();

        void b(boolean z);
    }

    public CircularProgressView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        f(attributeSet, 0);
    }

    /* access modifiers changed from: protected */
    public void f(AttributeSet attributeSet, int i2) {
        this.s = new ArrayList();
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R$styleable.c, i2, 0);
        Resources resources = getResources();
        this.i = obtainStyledAttributes.getFloat(9, (float) resources.getInteger(R.integer.l));
        this.j = obtainStyledAttributes.getFloat(8, (float) resources.getInteger(R.integer.k));
        this.m = obtainStyledAttributes.getDimensionPixelSize(11, resources.getDimensionPixelSize(R.dimen.mf));
        this.g = obtainStyledAttributes.getBoolean(7, resources.getBoolean(R.bool.e));
        this.h = obtainStyledAttributes.getBoolean(0, resources.getBoolean(R.bool.d));
        this.y = obtainStyledAttributes.getFloat(10, (float) resources.getInteger(R.integer.m));
        this.f = obtainStyledAttributes.getColor(5, 0);
        this.t = this.y;
        int identifier = getContext().getResources().getIdentifier("colorAccent", "attr", getContext().getPackageName());
        if (obtainStyledAttributes.hasValue(6)) {
            this.n = obtainStyledAttributes.getColor(6, resources.getColor(R.color.bz));
        } else if (identifier != 0) {
            TypedValue typedValue = new TypedValue();
            getContext().getTheme().resolveAttribute(identifier, typedValue, true);
            this.n = typedValue.data;
        } else if (Build.VERSION.SDK_INT >= 21) {
            TypedArray obtainStyledAttributes2 = getContext().obtainStyledAttributes(new int[]{16843829});
            this.n = obtainStyledAttributes2.getColor(0, resources.getColor(R.color.bz));
            obtainStyledAttributes2.recycle();
        } else {
            this.n = resources.getColor(R.color.bz);
        }
        this.o = obtainStyledAttributes.getInteger(1, resources.getInteger(R.integer.g));
        this.p = obtainStyledAttributes.getInteger(3, resources.getInteger(R.integer.i));
        this.q = obtainStyledAttributes.getInteger(4, resources.getInteger(R.integer.j));
        this.r = obtainStyledAttributes.getInteger(2, resources.getInteger(R.integer.h));
        obtainStyledAttributes.recycle();
        Paint paint = new Paint(1);
        this.b = paint;
        paint.setColor(this.n);
        this.b.setStyle(Paint.Style.STROKE);
        this.b.setStrokeWidth((float) this.m);
        this.b.setStrokeCap(Paint.Cap.BUTT);
        Paint paint2 = new Paint();
        this.c = paint2;
        paint2.setStyle(Paint.Style.STROKE);
        this.c.setColor(this.f);
        this.c.setAntiAlias(true);
        this.c.setStrokeWidth((float) this.m);
        this.c.setStrokeCap(Paint.Cap.ROUND);
        this.e = new RectF();
    }

    public void g() {
        ValueAnimator valueAnimator = this.v;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.v.cancel();
        }
        ValueAnimator valueAnimator2 = this.w;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.w.cancel();
        }
        AnimatorSet animatorSet = this.x;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.x.cancel();
        }
        float f2 = 360.0f;
        if (!this.g) {
            float f3 = this.y;
            this.t = f3;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f3, f3 + 360.0f);
            this.v = ofFloat;
            ofFloat.setDuration((long) this.p);
            this.v.setInterpolator(new DecelerateInterpolator(2.0f));
            this.v.addUpdateListener(new a());
            this.v.start();
            this.u = 0.0f;
            ValueAnimator ofFloat2 = ValueAnimator.ofFloat(0.0f, this.i);
            this.w = ofFloat2;
            ofFloat2.setDuration((long) this.q);
            this.w.setInterpolator(new LinearInterpolator());
            this.w.addUpdateListener(new b());
            this.w.start();
            return;
        }
        this.k = 15.0f;
        this.x = new AnimatorSet();
        AnimatorSet animatorSet2 = null;
        int i2 = 0;
        while (true) {
            int i3 = this.r;
            if (i2 >= i3) {
                break;
            }
            float f4 = (float) i2;
            float f5 = ((((float) (i3 - 1)) * f2) / ((float) i3)) + 15.0f;
            float a2 = ic.a(f5, 15.0f, f4, -90.0f);
            ValueAnimator ofFloat3 = ValueAnimator.ofFloat(15.0f, f5);
            ofFloat3.setDuration((long) ((this.o / this.r) / 2));
            ofFloat3.setInterpolator(new DecelerateInterpolator(1.0f));
            ofFloat3.addUpdateListener(new e(this));
            float f6 = (float) this.r;
            float f7 = (0.5f + f4) * 720.0f;
            ValueAnimator ofFloat4 = ValueAnimator.ofFloat((f4 * 720.0f) / f6, f7 / f6);
            ofFloat4.setDuration((long) ((this.o / this.r) / 2));
            ofFloat4.setInterpolator(new LinearInterpolator());
            ofFloat4.addUpdateListener(new f(this));
            ValueAnimator ofFloat5 = ValueAnimator.ofFloat(a2, (a2 + f5) - 15.0f);
            ofFloat5.setDuration((long) ((this.o / this.r) / 2));
            ofFloat5.setInterpolator(new DecelerateInterpolator(1.0f));
            ofFloat5.addUpdateListener(new g(this, f5, a2));
            float f8 = (float) this.r;
            ValueAnimator ofFloat6 = ValueAnimator.ofFloat(f7 / f8, ((f4 + 1.0f) * 720.0f) / f8);
            ofFloat6.setDuration((long) ((this.o / this.r) / 2));
            ofFloat6.setInterpolator(new LinearInterpolator());
            ofFloat6.addUpdateListener(new h(this));
            AnimatorSet animatorSet3 = new AnimatorSet();
            animatorSet3.play(ofFloat3).with(ofFloat4);
            animatorSet3.play(ofFloat5).with(ofFloat6).after(ofFloat4);
            AnimatorSet.Builder play = this.x.play(animatorSet3);
            if (animatorSet2 != null) {
                play.after(animatorSet2);
            }
            i2++;
            f2 = 360.0f;
            animatorSet2 = animatorSet3;
        }
        this.x.addListener(new c());
        AnimatorSet animatorSet4 = this.x;
        if (animatorSet4 != null) {
            animatorSet4.start();
        }
        for (d dVar : this.s) {
            dVar.a();
        }
    }

    public void h(boolean z) {
        boolean z2 = this.g;
        boolean z3 = z2 == z;
        this.g = z;
        if (z3) {
            g();
        }
        if (z2 != z) {
            for (d dVar : this.s) {
                dVar.b(z);
            }
        }
    }

    public void i() {
        ValueAnimator valueAnimator = this.v;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.v = null;
        }
        ValueAnimator valueAnimator2 = this.w;
        if (valueAnimator2 != null) {
            valueAnimator2.cancel();
            this.w = null;
        }
        AnimatorSet animatorSet = this.x;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.x = null;
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.h) {
            g();
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        i();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f2 = ((isInEditMode() ? this.i : this.u) / this.j) * 360.0f;
        if (!this.g) {
            if (this.f != 0) {
                canvas.drawArc(this.e, this.t, 360.0f, false, this.c);
            }
            canvas.drawArc(this.e, this.t, f2, false, this.b);
            return;
        }
        canvas.drawArc(this.e, this.t + this.l, this.k, false, this.b);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int measuredWidth = getMeasuredWidth() - paddingRight;
        int measuredHeight = getMeasuredHeight() - paddingBottom;
        if (measuredWidth >= measuredHeight) {
            measuredWidth = measuredHeight;
        }
        this.d = measuredWidth;
        setMeasuredDimension(paddingRight + measuredWidth, measuredWidth + paddingBottom);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 >= i3) {
            i2 = i3;
        }
        this.d = i2;
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        RectF rectF = this.e;
        int i6 = this.m;
        int i7 = this.d;
        rectF.set((float) (paddingLeft + i6), (float) (paddingTop + i6), (float) ((i7 - paddingLeft) - i6), (float) ((i7 - paddingTop) - i6));
    }

    public void setVisibility(int i2) {
        int visibility = getVisibility();
        super.setVisibility(i2);
        if (i2 == visibility) {
            return;
        }
        if (i2 == 0) {
            g();
        } else if (i2 == 8 || i2 == 4) {
            i();
        }
    }

    public CircularProgressView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        f(attributeSet, i2);
    }
}
