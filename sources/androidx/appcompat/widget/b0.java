package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

class b0 extends AnimatorListenerAdapter {
    final /* synthetic */ StarCheckView a;

    b0(StarCheckView starCheckView) {
        this.a = starCheckView;
    }

    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        StarCheckView.b(this.a, null);
    }
}
