package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: com.facebook.ads.redexgen.X.3n  reason: invalid class name and case insensitive filesystem */
public class C02123n extends AnimatorListenerAdapter {
    public final /* synthetic */ View A00;
    public final /* synthetic */ ViewPropertyAnimator A01;
    public final /* synthetic */ C0472Et A02;
    public final /* synthetic */ AbstractC02274c A03;

    public C02123n(C0472Et et, AbstractC02274c r2, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.A02 = et;
        this.A03 = r2;
        this.A00 = view;
        this.A01 = viewPropertyAnimator;
    }

    public final void onAnimationCancel(Animator animator) {
        this.A00.setAlpha(1.0f);
    }

    public final void onAnimationEnd(Animator animator) {
        this.A01.setListener(null);
        this.A02.A0M(this.A03);
        this.A02.A00.remove(this.A03);
        this.A02.A0U();
    }

    public final void onAnimationStart(Animator animator) {
    }
}
