package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* access modifiers changed from: package-private */
public class r extends AnimatorListenerAdapter {
    final /* synthetic */ Transition a;

    r(Transition transition) {
        this.a = transition;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.m();
        animator.removeListener(this);
    }
}
