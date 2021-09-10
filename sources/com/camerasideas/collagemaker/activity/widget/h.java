package com.camerasideas.collagemaker.activity.widget;

import android.animation.ValueAnimator;

/* access modifiers changed from: package-private */
public class h implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ CircularProgressView a;

    h(CircularProgressView circularProgressView) {
        this.a = circularProgressView;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.l = ((Float) valueAnimator.getAnimatedValue()).floatValue();
    }
}
