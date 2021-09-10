package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import defpackage.u3;
import java.util.Objects;

public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    u3 a;
    private boolean b;
    int c = 2;
    float d = 0.5f;
    float e = 0.0f;
    float f = 0.5f;
    private final u3.c g = new a();

    class a extends u3.c {
        private int a;
        private int b = -1;

        a() {
        }

        @Override // defpackage.u3.c
        public int a(View view, int i, int i2) {
            int i3;
            int i4;
            int width;
            int i5 = c3.g;
            boolean z = view.getLayoutDirection() == 1;
            int i6 = SwipeDismissBehavior.this.c;
            if (i6 != 0) {
                if (i6 != 1) {
                    i3 = this.a - view.getWidth();
                    i4 = view.getWidth() + this.a;
                } else if (z) {
                    i3 = this.a;
                    width = view.getWidth();
                } else {
                    i3 = this.a - view.getWidth();
                    i4 = this.a;
                }
                return Math.min(Math.max(i3, i), i4);
            } else if (z) {
                i3 = this.a - view.getWidth();
                i4 = this.a;
                return Math.min(Math.max(i3, i), i4);
            } else {
                i3 = this.a;
                width = view.getWidth();
            }
            i4 = width + i3;
            return Math.min(Math.max(i3, i), i4);
        }

        @Override // defpackage.u3.c
        public int b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // defpackage.u3.c
        public int d(View view) {
            return view.getWidth();
        }

        @Override // defpackage.u3.c
        public void i(View view, int i) {
            this.b = i;
            this.a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // defpackage.u3.c
        public void j(int i) {
            Objects.requireNonNull(SwipeDismissBehavior.this);
        }

        @Override // defpackage.u3.c
        public void k(View view, int i, int i2, int i3, int i4) {
            float width = (((float) view.getWidth()) * SwipeDismissBehavior.this.e) + ((float) this.a);
            float width2 = (((float) view.getWidth()) * SwipeDismissBehavior.this.f) + ((float) this.a);
            float f = (float) i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.C(0.0f, 1.0f - ((f - width) / (width2 - width)), 1.0f));
            }
        }

        /* JADX WARNING: Code restructure failed: missing block: B:23:0x005a, code lost:
            if (java.lang.Math.abs(r7.getLeft() - r6.a) >= java.lang.Math.round(((float) r7.getWidth()) * r6.c.d)) goto L_0x002e;
         */
        /* JADX WARNING: Removed duplicated region for block: B:25:0x005f  */
        /* JADX WARNING: Removed duplicated region for block: B:30:0x006c  */
        /* JADX WARNING: Removed duplicated region for block: B:33:0x007c  */
        /* JADX WARNING: Removed duplicated region for block: B:34:0x0089  */
        @Override // defpackage.u3.c
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void l(android.view.View r7, float r8, float r9) {
            /*
            // Method dump skipped, instructions count: 145
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.a.l(android.view.View, float, float):void");
        }

        @Override // defpackage.u3.c
        public boolean m(View view, int i) {
            int i2 = this.b;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.B(view);
        }
    }

    private class b implements Runnable {
        private final View b;
        private final boolean c;

        b(View view, boolean z) {
            this.b = view;
            this.c = z;
        }

        public void run() {
            u3 u3Var = SwipeDismissBehavior.this.a;
            if (u3Var != null && u3Var.k(true)) {
                View view = this.b;
                int i = c3.g;
                view.postOnAnimation(this);
            } else if (this.c) {
                Objects.requireNonNull(SwipeDismissBehavior.this);
            }
        }
    }

    static float C(float f2, float f3, float f4) {
        return Math.min(Math.max(f2, f3), f4);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean A(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        u3 u3Var = this.a;
        if (u3Var == null) {
            return false;
        }
        u3Var.x(motionEvent);
        return true;
    }

    public boolean B(View view) {
        return true;
    }

    public void D(float f2) {
        this.f = C(0.0f, f2, 1.0f);
    }

    public void E(float f2) {
        this.e = C(0.0f, f2, 1.0f);
    }

    public void F(int i) {
        this.c = i;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean j(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean z = this.b;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            z = coordinatorLayout.z(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.b = z;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.b = false;
        }
        if (!z) {
            return false;
        }
        if (this.a == null) {
            this.a = u3.m(coordinatorLayout, this.g);
        }
        return this.a.G(motionEvent);
    }
}
