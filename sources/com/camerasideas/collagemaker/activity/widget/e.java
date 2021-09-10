package com.camerasideas.collagemaker.activity.widget;

import android.animation.ValueAnimator;

/* access modifiers changed from: package-private */
public class e implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ CircularProgressView a;

    e(CircularProgressView circularProgressView) {
        this.a = circularProgressView;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.k = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.a.invalidate();
    }
}
