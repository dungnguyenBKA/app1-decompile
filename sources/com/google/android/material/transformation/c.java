package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.circularreveal.c;

class c extends AnimatorListenerAdapter {
    final /* synthetic */ com.google.android.material.circularreveal.c a;

    c(FabTransformationBehavior fabTransformationBehavior, com.google.android.material.circularreveal.c cVar) {
        this.a = cVar;
    }

    public void onAnimationEnd(Animator animator) {
        c.e a2 = this.a.a();
        a2.c = Float.MAX_VALUE;
        this.a.b(a2);
    }
}
