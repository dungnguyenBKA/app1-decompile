package com.google.android.material.appbar;

import android.animation.ValueAnimator;

/* access modifiers changed from: package-private */
public class a implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ my a;

    a(AppBarLayout appBarLayout, my myVar) {
        this.a = myVar;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.E(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
