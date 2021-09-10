package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class b extends AnimatorListenerAdapter {
    final /* synthetic */ a a;

    b(a aVar) {
        this.a = aVar;
    }

    public void onAnimationStart(Animator animator) {
        this.a.a.F(true);
    }
}
