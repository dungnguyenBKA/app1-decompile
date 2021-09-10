package com.camerasideas.baseutils.widget;

import android.animation.Animator;

class a implements Animator.AnimatorListener {
    final /* synthetic */ AnimCircleView a;

    a(AnimCircleView animCircleView) {
        this.a = animCircleView;
    }

    public void onAnimationCancel(Animator animator) {
    }

    public void onAnimationEnd(Animator animator) {
        AnimCircleView.a(this.a).start();
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationStart(Animator animator) {
    }
}
