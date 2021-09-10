package com.google.android.material.appbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.VelocityTracker;
import android.view.View;
import android.widget.OverScroller;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.app.b;
import androidx.recyclerview.widget.RecyclerView;

/* access modifiers changed from: package-private */
public abstract class HeaderBehavior<V extends View> extends ViewOffsetBehavior<V> {
    private Runnable c;
    OverScroller d;
    private boolean e;
    private int f = -1;
    private int g;
    private int h = -1;
    private VelocityTracker i;

    /* JADX WARN: Field signature parse error: c */
    private class a implements Runnable {
        private final CoordinatorLayout b;
        private final View c;

        a(CoordinatorLayout coordinatorLayout, V v) {
            this.b = coordinatorLayout;
            this.c = v;
        }

        /* JADX DEBUG: Multi-variable search result rejected for r0v4, resolved type: com.google.android.material.appbar.HeaderBehavior */
        /* JADX DEBUG: Multi-variable search result rejected for r0v5, resolved type: com.google.android.material.appbar.HeaderBehavior */
        /* JADX WARN: Multi-variable type inference failed */
        public void run() {
            OverScroller overScroller;
            if (this.c != null && (overScroller = HeaderBehavior.this.d) != null) {
                if (overScroller.computeScrollOffset()) {
                    HeaderBehavior headerBehavior = HeaderBehavior.this;
                    headerBehavior.K(this.b, this.c, headerBehavior.d.getCurrY());
                    View view = this.c;
                    int i = c3.g;
                    view.postOnAnimation(this);
                    return;
                }
                HeaderBehavior.this.I(this.b, this.c);
            }
        }
    }

    public HeaderBehavior() {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x002a, code lost:
        if (r0 != 3) goto L_0x00ff;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean A(androidx.coordinatorlayout.widget.CoordinatorLayout r20, V r21, android.view.MotionEvent r22) {
        /*
        // Method dump skipped, instructions count: 264
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.A(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    /* access modifiers changed from: package-private */
    public boolean E(V v) {
        return false;
    }

    /* access modifiers changed from: package-private */
    public int F(V v) {
        return -v.getHeight();
    }

    /* access modifiers changed from: package-private */
    public int G(V v) {
        return v.getHeight();
    }

    /* access modifiers changed from: package-private */
    public int H() {
        return B();
    }

    /* access modifiers changed from: package-private */
    public void I(CoordinatorLayout coordinatorLayout, V v) {
    }

    /* access modifiers changed from: package-private */
    public final int J(CoordinatorLayout coordinatorLayout, V v, int i2, int i3, int i4) {
        return L(coordinatorLayout, v, H() - i2, i3, i4);
    }

    /* access modifiers changed from: package-private */
    public int K(CoordinatorLayout coordinatorLayout, V v, int i2) {
        return L(coordinatorLayout, v, i2, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE);
    }

    /* access modifiers changed from: package-private */
    public int L(CoordinatorLayout coordinatorLayout, V v, int i2, int i3, int i4) {
        int o;
        int B = B();
        if (i3 == 0 || B < i3 || B > i4 || B == (o = b.o(i2, i3, i4))) {
            return 0;
        }
        D(o);
        return B - o;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:14:0x002c, code lost:
        if (r0 != 3) goto L_0x008a;
     */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean j(androidx.coordinatorlayout.widget.CoordinatorLayout r5, V r6, android.view.MotionEvent r7) {
        /*
        // Method dump skipped, instructions count: 148
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.HeaderBehavior.j(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, android.view.MotionEvent):boolean");
    }

    public HeaderBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
