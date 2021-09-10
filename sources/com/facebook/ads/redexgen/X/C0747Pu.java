package com.facebook.ads.redexgen.X;

import android.animation.ValueAnimator;
import android.view.View;

/* renamed from: com.facebook.ads.redexgen.X.Pu  reason: case insensitive filesystem */
public class C0747Pu implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ View A00;
    public final /* synthetic */ C0536Hi A01;

    public C0747Pu(C0536Hi hi, View view) {
        this.A01 = hi;
        this.A00 = view;
    }

    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.A00.setTranslationY((float) ((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
