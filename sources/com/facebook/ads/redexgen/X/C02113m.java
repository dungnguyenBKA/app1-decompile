package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: com.facebook.ads.redexgen.X.3m  reason: invalid class name and case insensitive filesystem */
public class C02113m extends AnimatorListenerAdapter {
    public final /* synthetic */ View A00;
    public final /* synthetic */ ViewPropertyAnimator A01;
    public final /* synthetic */ C0472Et A02;
    public final /* synthetic */ AbstractC02274c A03;

    public C02113m(C0472Et et, AbstractC02274c r2, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.A02 = et;
        this.A03 = r2;
        this.A01 = viewPropertyAnimator;
        this.A00 = view;
    }

    public final void onAnimationEnd(Animator animator) {
        this.A01.setListener(null);
        this.A00.setAlpha(1.0f);
        this.A02.A0O(this.A03);
        this.A02.A06.remove(this.A03);
        this.A02.A0U();
    }

    public final void onAnimationStart(Animator animator) {
    }
}
