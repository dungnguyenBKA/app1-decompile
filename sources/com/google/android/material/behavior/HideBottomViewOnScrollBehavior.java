package com.google.android.material.behavior;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

public class HideBottomViewOnScrollBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private int a = 0;
    private int b = 2;
    private int c = 0;
    private ViewPropertyAnimator d;

    /* access modifiers changed from: package-private */
    public class a extends AnimatorListenerAdapter {
        a() {
        }

        public void onAnimationEnd(Animator animator) {
            HideBottomViewOnScrollBehavior.this.d = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
    }

    private void C(V v, int i, long j, TimeInterpolator timeInterpolator) {
        this.d = v.animate().translationY((float) i).setInterpolator(timeInterpolator).setDuration(j).setListener(new a());
    }

    public void D(V v, int i) {
        this.c = i;
        if (this.b == 1) {
            v.setTranslationY((float) (this.a + i));
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean k(CoordinatorLayout coordinatorLayout, V v, int i) {
        this.a = v.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) v.getLayoutParams()).bottomMargin;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void q(CoordinatorLayout coordinatorLayout, V v, View view, int i, int i2, int i3, int i4) {
        if (i2 > 0) {
            if (this.b != 1) {
                ViewPropertyAnimator viewPropertyAnimator = this.d;
                if (viewPropertyAnimator != null) {
                    viewPropertyAnimator.cancel();
                    v.clearAnimation();
                }
                this.b = 1;
                C(v, this.a + this.c, 175, jx.c);
            }
        } else if (i2 < 0 && this.b != 2) {
            ViewPropertyAnimator viewPropertyAnimator2 = this.d;
            if (viewPropertyAnimator2 != null) {
                viewPropertyAnimator2.cancel();
                v.clearAnimation();
            }
            this.b = 2;
            C(v, 0, 225, jx.d);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean w(CoordinatorLayout coordinatorLayout, V v, View view, View view2, int i) {
        return i == 2;
    }

    public HideBottomViewOnScrollBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
