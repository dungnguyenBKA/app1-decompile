package com.google.android.material.textfield;

import android.animation.ValueAnimator;

class m implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ h a;

    m(h hVar) {
        this.a = hVar;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
