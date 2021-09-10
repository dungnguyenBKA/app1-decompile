package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* access modifiers changed from: package-private */
public class q extends AnimatorListenerAdapter {
    final /* synthetic */ x a;
    final /* synthetic */ Transition b;

    q(Transition transition, x xVar) {
        this.b = transition;
        this.a = xVar;
    }

    public void onAnimationEnd(Animator animator) {
        this.a.remove(animator);
        this.b.n.remove(animator);
    }

    public void onAnimationStart(Animator animator) {
        this.b.n.add(animator);
    }
}
