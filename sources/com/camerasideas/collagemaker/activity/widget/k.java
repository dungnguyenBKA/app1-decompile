package com.camerasideas.collagemaker.activity.widget;

import android.view.animation.Animation;

/* access modifiers changed from: package-private */
public class k implements Animation.AnimationListener {
    final /* synthetic */ SeekBarWithTextView a;

    k(SeekBarWithTextView seekBarWithTextView) {
        this.a = seekBarWithTextView;
    }

    public void onAnimationEnd(Animation animation) {
        this.a.c.clearAnimation();
    }

    public void onAnimationRepeat(Animation animation) {
    }

    public void onAnimationStart(Animation animation) {
    }
}
