package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.b;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.ArrayList;

public class FabTransformationScrimBehavior extends ExpandableTransformationBehavior {
    private final qx c = new qx(75, 150);
    private final qx d = new qx(0, 150);

    class a extends AnimatorListenerAdapter {
        final /* synthetic */ boolean a;
        final /* synthetic */ View b;

        a(FabTransformationScrimBehavior fabTransformationScrimBehavior, boolean z, View view) {
            this.a = z;
            this.b = view;
        }

        public void onAnimationEnd(Animator animator) {
            if (!this.a) {
                this.b.setVisibility(4);
            }
        }

        public void onAnimationStart(Animator animator) {
            if (this.a) {
                this.b.setVisibility(0);
            }
        }
    }

    public FabTransformationScrimBehavior() {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean A(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return false;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    public AnimatorSet F(View view, View view2, boolean z, boolean z2) {
        ObjectAnimator objectAnimator;
        ArrayList arrayList = new ArrayList();
        new ArrayList();
        qx qxVar = z ? this.c : this.d;
        if (z) {
            if (!z2) {
                view2.setAlpha(0.0f);
            }
            objectAnimator = ObjectAnimator.ofFloat(view2, View.ALPHA, 1.0f);
        } else {
            objectAnimator = ObjectAnimator.ofFloat(view2, View.ALPHA, 0.0f);
        }
        qxVar.a(objectAnimator);
        arrayList.add(objectAnimator);
        AnimatorSet animatorSet = new AnimatorSet();
        b.p0(animatorSet, arrayList);
        animatorSet.addListener(new a(this, z, view2));
        return animatorSet;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return view2 instanceof FloatingActionButton;
    }

    public FabTransformationScrimBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
