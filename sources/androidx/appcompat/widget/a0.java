package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class a0 extends AnimatorListenerAdapter {
    final /* synthetic */ StarCheckView a;

    a0(StarCheckView starCheckView) {
        this.a = starCheckView;
    }

    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        StarCheckView.a(this.a, null);
    }
}
