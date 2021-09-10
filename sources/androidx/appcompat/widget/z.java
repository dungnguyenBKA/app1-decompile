package androidx.appcompat.widget;

import android.animation.ValueAnimator;

class z implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ StarCheckView a;

    z(StarCheckView starCheckView) {
        this.a = starCheckView;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.invalidate();
    }
}
