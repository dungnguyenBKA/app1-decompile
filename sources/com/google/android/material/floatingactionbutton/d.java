package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* access modifiers changed from: package-private */
public class d extends AnimatorListenerAdapter {
    private boolean a;
    final /* synthetic */ i b;

    d(ExtendedFloatingActionButton extendedFloatingActionButton, i iVar) {
        this.b = iVar;
    }

    public void onAnimationCancel(Animator animator) {
        this.a = true;
        this.b.a();
    }

    public void onAnimationEnd(Animator animator) {
        this.b.e();
        if (!this.a) {
            this.b.g(null);
        }
    }

    public void onAnimationStart(Animator animator) {
        this.b.onAnimationStart(animator);
        this.a = false;
    }
}
