package com.facebook.ads.redexgen.X;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;

public class T5 extends AbstractRunnableC0603Kb {
    public final /* synthetic */ Oj A00;
    public final /* synthetic */ C0711Ok A01;

    public T5(C0711Ok ok, Oj oj) {
        this.A01 = ok;
        this.A00 = oj;
    }

    @Override // com.facebook.ads.redexgen.X.AbstractRunnableC0603Kb
    public final void A07() {
        AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation.setDuration(300);
        alphaAnimation.setInterpolator(new AccelerateInterpolator());
        alphaAnimation.setAnimationListener(new T9(this));
        this.A01.startAnimation(alphaAnimation);
    }
}
