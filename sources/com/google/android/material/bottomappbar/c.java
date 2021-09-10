package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

class c extends AnimatorListenerAdapter {
    final /* synthetic */ BottomAppBar a;

    c(BottomAppBar bottomAppBar) {
        this.a = bottomAppBar;
    }

    public void onAnimationStart(Animator animator) {
        this.a.c0.onAnimationStart(animator);
        FloatingActionButton f0 = BottomAppBar.f0(this.a);
        if (f0 != null) {
            f0.setTranslationX(BottomAppBar.g0(this.a));
        }
    }
}
