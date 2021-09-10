package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class a extends AnimatorListenerAdapter {
    final /* synthetic */ BottomAppBar a;

    a(BottomAppBar bottomAppBar) {
        this.a = bottomAppBar;
    }

    public void onAnimationEnd(Animator animator) {
        BottomAppBar.p0(this.a);
        BottomAppBar.q0(this.a, null);
    }

    public void onAnimationStart(Animator animator) {
        BottomAppBar.o0(this.a);
    }
}
