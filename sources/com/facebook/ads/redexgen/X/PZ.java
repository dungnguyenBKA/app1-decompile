package com.facebook.ads.redexgen.X;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.vungle.warren.AdLoader;

public class PZ extends AnimatorListenerAdapter {
    public final /* synthetic */ C03037d A00;

    public PZ(C03037d r1) {
        this.A00 = r1;
    }

    public final void onAnimationEnd(Animator animator) {
        this.A00.A00.A04.postDelayed(new JF(this), AdLoader.RETRY_DELAY);
    }
}
