package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;

/* renamed from: com.facebook.ads.redexgen.X.3q  reason: invalid class name and case insensitive filesystem */
public class C02153q extends AnimatorListenerAdapter {
    public final /* synthetic */ View A00;
    public final /* synthetic */ ViewPropertyAnimator A01;
    public final /* synthetic */ C02163r A02;
    public final /* synthetic */ C0472Et A03;

    public C02153q(C0472Et et, C02163r r2, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.A03 = et;
        this.A02 = r2;
        this.A01 = viewPropertyAnimator;
        this.A00 = view;
    }

    public final void onAnimationEnd(Animator animator) {
        this.A01.setListener(null);
        this.A00.setAlpha(1.0f);
        this.A00.setTranslationX(0.0f);
        this.A00.setTranslationY(0.0f);
        this.A03.A0P(this.A02.A04, false);
        this.A03.A02.remove(this.A02.A04);
        this.A03.A0U();
    }

    public final void onAnimationStart(Animator animator) {
    }
}
