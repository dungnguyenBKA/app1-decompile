package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;

public class O6 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ YV A00;

    public O6(YV yv) {
        this.A00 = yv;
    }

    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.A00.A06.getLayoutParams().height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.A00.A06.requestLayout();
    }
}
