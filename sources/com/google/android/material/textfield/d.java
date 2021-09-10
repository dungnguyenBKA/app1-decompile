package com.google.android.material.textfield;

import android.animation.ValueAnimator;

class d implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ a a;

    d(a aVar) {
        this.a = aVar;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
