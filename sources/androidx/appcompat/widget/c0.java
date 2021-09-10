package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class c0 extends AnimatorListenerAdapter {
    final /* synthetic */ StarCheckView a;

    c0(StarCheckView starCheckView) {
        this.a = starCheckView;
    }

    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        if (StarCheckView.c(this.a) != null) {
            StarCheckView.c(this.a).onAnimationEnd(animator);
        }
        StarCheckView.d(this.a, null);
    }
}
