package com.camerasideas.collagemaker.activity.widget;

import android.animation.ValueAnimator;

/* access modifiers changed from: package-private */
public class g implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ float a;
    final /* synthetic */ float b;
    final /* synthetic */ CircularProgressView c;

    g(CircularProgressView circularProgressView, float f, float f2) {
        this.c = circularProgressView;
        this.a = f;
        this.b = f2;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.c.t = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        CircularProgressView circularProgressView = this.c;
        circularProgressView.k = (this.a - circularProgressView.t) + this.b;
        this.c.invalidate();
    }
}
