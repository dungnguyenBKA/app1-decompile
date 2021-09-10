package com.facebook.ads.redexgen.X;

import android.animation.Animator;

/* renamed from: com.facebook.ads.redexgen.X.Pt  reason: case insensitive filesystem */
public class C0746Pt implements Animator.AnimatorListener {
    public final /* synthetic */ C0536Hi A00;

    public C0746Pt(C0536Hi hi) {
        this.A00 = hi;
    }

    public final void onAnimationCancel(Animator animator) {
        this.A00.A0A(false);
        this.A00.A04();
    }

    public final void onAnimationEnd(Animator animator) {
        this.A00.A01 = EnumC0737Pk.A05;
        C0632Lh.A0K(this.A00.A05);
        this.A00.A04();
    }

    public final void onAnimationRepeat(Animator animator) {
    }

    public final void onAnimationStart(Animator animator) {
    }
}
