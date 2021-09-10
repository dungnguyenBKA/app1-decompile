package com.google.android.material.circularreveal;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.os.Build;
import android.view.View;
import android.view.ViewAnimationUtils;
import com.google.android.material.circularreveal.c;

public final class a {

    /* renamed from: com.google.android.material.circularreveal.a$a  reason: collision with other inner class name */
    static class C0074a extends AnimatorListenerAdapter {
        final /* synthetic */ c a;

        C0074a(c cVar) {
            this.a = cVar;
        }

        public void onAnimationEnd(Animator animator) {
            this.a.h();
        }

        public void onAnimationStart(Animator animator) {
            this.a.c();
        }
    }

    public static Animator a(c cVar, float f, float f2, float f3) {
        ObjectAnimator ofObject = ObjectAnimator.ofObject(cVar, c.C0075c.a, c.b.b, new c.e(f, f2, f3));
        if (Build.VERSION.SDK_INT < 21) {
            return ofObject;
        }
        c.e a = cVar.a();
        if (a != null) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal((View) cVar, (int) f, (int) f2, a.c, f3);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(ofObject, createCircularReveal);
            return animatorSet;
        }
        throw new IllegalStateException("Caller must set a non-null RevealInfo before calling this.");
    }

    public static Animator.AnimatorListener b(c cVar) {
        return new C0074a(cVar);
    }
}
