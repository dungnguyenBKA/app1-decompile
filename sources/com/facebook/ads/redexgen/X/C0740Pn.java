package com.facebook.ads.redexgen.X;

import android.animation.Animator;

/* renamed from: com.facebook.ads.redexgen.X.Pn  reason: case insensitive filesystem */
public class C0740Pn implements Animator.AnimatorListener {
    public final /* synthetic */ C0549Hv A00;

    public C0740Pn(C0549Hv hv) {
        this.A00 = hv;
    }

    public final void onAnimationCancel(Animator animator) {
        C0549Hv.A06(this.A00, false);
        if (C0549Hv.A01(this.A00) != null) {
            C0549Hv.A01(this.A00).removeAllListeners();
            C0549Hv.A02(this.A00, null);
        }
    }

    public final void onAnimationEnd(Animator animator) {
        C0549Hv.A04(this.A00, EnumC0737Pk.A05);
        C0632Lh.A0K(C0549Hv.A03(this.A00));
        if (C0549Hv.A01(this.A00) != null) {
            C0549Hv.A01(this.A00).removeAllListeners();
            C0549Hv.A02(this.A00, null);
        }
    }

    public final void onAnimationRepeat(Animator animator) {
    }

    public final void onAnimationStart(Animator animator) {
    }
}
