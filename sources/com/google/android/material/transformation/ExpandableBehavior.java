package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import java.util.List;

public abstract class ExpandableBehavior extends CoordinatorLayout.Behavior<View> {
    private int a = 0;

    class a implements ViewTreeObserver.OnPreDrawListener {
        final /* synthetic */ View b;
        final /* synthetic */ int c;
        final /* synthetic */ ux d;

        a(View view, int i, ux uxVar) {
            this.b = view;
            this.c = i;
            this.d = uxVar;
        }

        public boolean onPreDraw() {
            this.b.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.a == this.c) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                ux uxVar = this.d;
                expandableBehavior.D((View) uxVar, this.b, uxVar.b(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
    }

    private boolean C(boolean z) {
        if (z) {
            int i = this.a;
            return i == 0 || i == 2;
        } else if (this.a == 1) {
            return true;
        } else {
            return false;
        }
    }

    /* access modifiers changed from: protected */
    public abstract boolean D(View view, View view2, boolean z, boolean z2);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean g(CoordinatorLayout coordinatorLayout, View view, View view2) {
        ux uxVar = (ux) view2;
        if (!C(uxVar.b())) {
            return false;
        }
        this.a = uxVar.b() ? 1 : 2;
        return D((View) uxVar, view, uxVar.b(), true);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean k(CoordinatorLayout coordinatorLayout, View view, int i) {
        ux uxVar;
        int i2 = c3.g;
        if (!view.isLaidOut()) {
            List<View> t = coordinatorLayout.t(view);
            int size = t.size();
            int i3 = 0;
            while (true) {
                if (i3 >= size) {
                    uxVar = null;
                    break;
                }
                View view2 = t.get(i3);
                if (d(coordinatorLayout, view, view2)) {
                    uxVar = (ux) view2;
                    break;
                }
                i3++;
            }
            if (uxVar != null && C(uxVar.b())) {
                int i4 = uxVar.b() ? 1 : 2;
                this.a = i4;
                view.getViewTreeObserver().addOnPreDrawListener(new a(view, i4, uxVar));
            }
        }
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
