package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;

class a implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ BottomSheetBehavior a;

    a(BottomSheetBehavior bottomSheetBehavior) {
        this.a = bottomSheetBehavior;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        if (BottomSheetBehavior.B(this.a) != null) {
            BottomSheetBehavior.B(this.a).G(floatValue);
        }
    }
}
