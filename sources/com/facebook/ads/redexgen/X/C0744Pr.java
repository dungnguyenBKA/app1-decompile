package com.facebook.ads.redexgen.X;

import android.animation.Animator;

/* renamed from: com.facebook.ads.redexgen.X.Pr  reason: case insensitive filesystem */
public class C0744Pr implements Animator.AnimatorListener {
    public final /* synthetic */ int A00;
    public final /* synthetic */ int A01;
    public final /* synthetic */ C0538Hk A02;

    public C0744Pr(C0538Hk hk, int i, int i2) {
        this.A02 = hk;
        this.A01 = i;
        this.A00 = i2;
    }

    public final void onAnimationCancel(Animator animator) {
        C0538Hk.A09(this.A02, this.A00, this.A01, false);
        if (C0538Hk.A01(this.A02) != null) {
            C0538Hk.A01(this.A02).removeAllListeners();
            C0538Hk.A02(this.A02, null);
        }
    }

    public final void onAnimationEnd(Animator animator) {
        EnumC0737Pk pk;
        C0538Hk hk = this.A02;
        if (this.A01 == C0538Hk.A00(hk)) {
            pk = EnumC0737Pk.A03;
        } else {
            pk = EnumC0737Pk.A05;
        }
        C0538Hk.A03(hk, pk);
        if (C0538Hk.A01(this.A02) != null) {
            C0538Hk.A01(this.A02).removeAllListeners();
            C0538Hk.A02(this.A02, null);
        }
    }

    public final void onAnimationRepeat(Animator animator) {
    }

    public final void onAnimationStart(Animator animator) {
    }
}
