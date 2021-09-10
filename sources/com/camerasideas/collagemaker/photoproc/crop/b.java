package com.camerasideas.collagemaker.photoproc.crop;

import android.animation.Animator;

public abstract class b implements Animator.AnimatorListener {
    public void onAnimationCancel(Animator animator) {
        animator.removeListener(this);
    }

    public void onAnimationRepeat(Animator animator) {
    }

    public void onAnimationStart(Animator animator) {
    }
}
