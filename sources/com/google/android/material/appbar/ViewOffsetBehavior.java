package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

class ViewOffsetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    private d a;
    private int b = 0;

    public ViewOffsetBehavior() {
    }

    public int B() {
        d dVar = this.a;
        if (dVar != null) {
            return dVar.c();
        }
        return 0;
    }

    /* access modifiers changed from: protected */
    public void C(CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.B(v, i);
    }

    public boolean D(int i) {
        d dVar = this.a;
        if (dVar != null) {
            return dVar.e(i);
        }
        this.b = i;
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean k(CoordinatorLayout coordinatorLayout, V v, int i) {
        C(coordinatorLayout, v, i);
        if (this.a == null) {
            this.a = new d(v);
        }
        this.a.d();
        this.a.a();
        int i2 = this.b;
        if (i2 == 0) {
            return true;
        }
        this.a.e(i2);
        this.b = 0;
        return true;
    }

    public ViewOffsetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
