package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.Drawable;
import com.google.android.material.circularreveal.c;

class b extends AnimatorListenerAdapter {
    final /* synthetic */ c a;
    final /* synthetic */ Drawable b;

    b(FabTransformationBehavior fabTransformationBehavior, c cVar, Drawable drawable) {
        this.a = cVar;
        this.b = drawable;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.d(null);
    }

    public void onAnimationStart(Animator animator) {
        this.a.d(this.b);
    }
}
