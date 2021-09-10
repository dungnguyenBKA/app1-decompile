package com.camerasideas.collagemaker.activity.widget;

import android.view.animation.Animation;

/* access modifiers changed from: package-private */
public class l implements Animation.AnimationListener {
    final /* synthetic */ SeekBarWithTextView a;

    l(SeekBarWithTextView seekBarWithTextView) {
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
