package com.camerasideas.collagemaker.activity.widget;

import android.animation.ValueAnimator;

/* access modifiers changed from: package-private */
public class f implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ CircularProgressView a;

    f(CircularProgressView circularProgressView) {
        this.a = circularProgressView;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.l = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }
}
