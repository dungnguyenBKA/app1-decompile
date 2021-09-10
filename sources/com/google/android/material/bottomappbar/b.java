package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.appcompat.widget.ActionMenuView;

class b extends AnimatorListenerAdapter {
    public boolean a;
    final /* synthetic */ ActionMenuView b;
    final /* synthetic */ int c;
    final /* synthetic */ boolean d;
    final /* synthetic */ BottomAppBar e;

    b(BottomAppBar bottomAppBar, ActionMenuView actionMenuView, int i, boolean z) {
        this.e = bottomAppBar;
        this.b = actionMenuView;
        this.c = i;
        this.d = z;
    }

    public void onAnimationCancel(Animator animator) {
        this.a = true;
    }

    public void onAnimationEnd(Animator animator) {
        if (!this.a) {
            BottomAppBar bottomAppBar = this.e;
            ActionMenuView actionMenuView = this.b;
            int i = this.c;
            boolean z = this.d;
            int i2 = BottomAppBar.e0;
            actionMenuView.setTranslationX((float) bottomAppBar.t0(actionMenuView, i, z));
        }
    }
}
