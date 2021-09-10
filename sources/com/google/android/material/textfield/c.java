package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class c extends AnimatorListenerAdapter {
    final /* synthetic */ a a;

    c(a aVar) {
        this.a = aVar;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.a.F(false);
    }
}
