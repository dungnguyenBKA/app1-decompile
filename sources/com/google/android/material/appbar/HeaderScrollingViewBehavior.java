package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.b;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;

abstract class HeaderScrollingViewBehavior extends ViewOffsetBehavior<View> {
    final Rect c = new Rect();
    final Rect d = new Rect();
    private int e = 0;
    private int f;

    public HeaderScrollingViewBehavior() {
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.material.appbar.ViewOffsetBehavior
    public void C(CoordinatorLayout coordinatorLayout, View view, int i) {
        View E = E(coordinatorLayout.t(view));
        if (E != null) {
            CoordinatorLayout.e eVar = (CoordinatorLayout.e) view.getLayoutParams();
            Rect rect = this.c;
            rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin, E.getBottom() + ((ViewGroup.MarginLayoutParams) eVar).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) eVar).rightMargin, ((E.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
            l3 x = coordinatorLayout.x();
            if (x != null) {
                int i2 = c3.g;
                if (coordinatorLayout.getFitsSystemWindows() && !view.getFitsSystemWindows()) {
                    rect.left = x.c() + rect.left;
                    rect.right -= x.d();
                }
            }
            Rect rect2 = this.d;
            int i3 = eVar.c;
            Gravity.apply(i3 == 0 ? 8388659 : i3, view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i);
            int F = F(E);
            view.layout(rect2.left, rect2.top - F, rect2.right, rect2.bottom - F);
            this.e = rect2.top - E.getBottom();
            return;
        }
        coordinatorLayout.B(view, i);
        this.e = 0;
    }

    /* access modifiers changed from: package-private */
    public abstract View E(List<View> list);

    /* access modifiers changed from: package-private */
    public final int F(View view) {
        if (this.f == 0) {
            return 0;
        }
        float G = G(view);
        int i = this.f;
        return b.o((int) (G * ((float) i)), 0, i);
    }

    /* access modifiers changed from: package-private */
    public float G(View view) {
        return 1.0f;
    }

    public final int H() {
        return this.f;
    }

    /* access modifiers changed from: package-private */
    public int I(View view) {
        return view.getMeasuredHeight();
    }

    /* access modifiers changed from: package-private */
    public final int J() {
        return this.e;
    }

    public final void K(int i) {
        this.f = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i, int i2, int i3, int i4) {
        View E;
        l3 x;
        int i5 = view.getLayoutParams().height;
        if ((i5 != -1 && i5 != -2) || (E = E(coordinatorLayout.t(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i3);
        if (size > 0) {
            int i6 = c3.g;
            if (E.getFitsSystemWindows() && (x = coordinatorLayout.x()) != null) {
                size = x.b() + x.e() + size;
            }
        } else {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.C(view, i, i2, View.MeasureSpec.makeMeasureSpec((size + I(E)) - E.getMeasuredHeight(), i5 == -1 ? 1073741824 : RecyclerView.UNDEFINED_DURATION), i4);
        return true;
    }

    public HeaderScrollingViewBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
