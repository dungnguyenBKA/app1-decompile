package com.google.android.material.appbar;

import android.animation.ValueAnimator;

class c implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ CollapsingToolbarLayout a;

    c(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.a = collapsingToolbarLayout;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.e(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
