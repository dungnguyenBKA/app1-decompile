package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

public class O7 extends AnimatorListenerAdapter {
    public final /* synthetic */ YV A00;
    public final /* synthetic */ boolean A01;

    public O7(YV yv, boolean z) {
        this.A00 = yv;
        this.A01 = z;
    }

    public final void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.A00.A0F.setTranslationY(0.0f);
        this.A00.A0H();
        if (!this.A01 && this.A00.A0D != null) {
            this.A00.A0D.destroy();
        }
    }
}
