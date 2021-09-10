package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* renamed from: com.facebook.ads.redexgen.X.Pq  reason: case insensitive filesystem */
public class C0743Pq extends AnimatorListenerAdapter {
    public final /* synthetic */ C0544Hq A00;

    public C0743Pq(C0544Hq hq) {
        this.A00 = hq;
    }

    public final void onAnimationCancel(Animator animator) {
        if (C0544Hq.A07(this.A00)) {
            C0632Lh.A0O(C0544Hq.A00(this.A00));
        }
        C0544Hq.A00(this.A00).setAlpha(1.0f);
        C0544Hq.A03(this.A00, EnumC0737Pk.A03);
        if (C0544Hq.A01(this.A00) != null) {
            C0544Hq.A01(this.A00).setListener(null);
            C0544Hq.A02(this.A00, null);
        }
    }

    public final void onAnimationEnd(Animator animator) {
        if (C0544Hq.A07(this.A00)) {
            C0632Lh.A0K(C0544Hq.A00(this.A00));
        }
        C0544Hq.A03(this.A00, EnumC0737Pk.A05);
        if (C0544Hq.A01(this.A00) != null) {
            C0544Hq.A01(this.A00).setListener(null);
            C0544Hq.A02(this.A00, null);
        }
    }
}
