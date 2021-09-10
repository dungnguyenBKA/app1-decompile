package com.facebook.ads.redexgen.X;

import android.animation.Animator;

/* renamed from: com.facebook.ads.redexgen.X.Pm  reason: case insensitive filesystem */
public class C0739Pm implements Animator.AnimatorListener {
    public final /* synthetic */ C0549Hv A00;

    public C0739Pm(C0549Hv hv) {
        this.A00 = hv;
    }

    public final void onAnimationCancel(Animator animator) {
        C0549Hv.A05(this.A00, false);
    }

    public final void onAnimationEnd(Animator animator) {
        C0549Hv.A02(this.A00, null);
        C0549Hv.A04(this.A00, EnumC0737Pk.A03);
    }

    public final void onAnimationRepeat(Animator animator) {
    }

    public final void onAnimationStart(Animator animator) {
    }
}
