package com.facebook.ads.redexgen.X;

import android.animation.Animator;

/* renamed from: com.facebook.ads.redexgen.X.Ps  reason: case insensitive filesystem */
public class C0745Ps implements Animator.AnimatorListener {
    public final /* synthetic */ C0536Hi A00;

    public C0745Ps(C0536Hi hi) {
        this.A00 = hi;
    }

    public final void onAnimationCancel(Animator animator) {
        this.A00.A09(false);
        this.A00.A04();
    }

    public final void onAnimationEnd(Animator animator) {
        this.A00.A00 = null;
        this.A00.A01 = EnumC0737Pk.A03;
        this.A00.A04();
    }

    public final void onAnimationRepeat(Animator animator) {
    }

    public final void onAnimationStart(Animator animator) {
    }
}
