package com.google.android.material.tabs;

import android.animation.ValueAnimator;

class a implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ TabLayout a;

    a(TabLayout tabLayout) {
        this.a = tabLayout;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.scrollTo(((Integer) valueAnimator.getAnimatedValue()).intValue(), 0);
    }
}
