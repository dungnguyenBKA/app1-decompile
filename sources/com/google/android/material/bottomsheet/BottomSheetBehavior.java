package com.google.android.material.bottomsheet;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.facebook.ads.AdError;
import com.google.android.material.R$styleable;
import defpackage.n3;
import defpackage.p3;
import defpackage.u3;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import photoeditor.cutout.backgrounderaser.R;

public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.Behavior<V> {
    int A;
    WeakReference<V> B;
    WeakReference<View> C;
    private final ArrayList<d> D = new ArrayList<>();
    private VelocityTracker E;
    int F;
    private int G;
    boolean H;
    private Map<View, Integer> I;
    private final u3.c J = new b();
    private int a = 0;
    private boolean b = true;
    private float c;
    private int d;
    private boolean e;
    private int f;
    private boolean g;
    private my h;
    private qy i;
    private boolean j;
    private BottomSheetBehavior<V>.e k = null;
    private ValueAnimator l;
    int m;
    int n;
    int o;
    float p = 0.5f;
    int q;
    float r = -1.0f;
    boolean s;
    private boolean t;
    int u = 4;
    u3 v;
    private boolean w;
    private int x;
    private boolean y;
    int z;

    /* access modifiers changed from: package-private */
    public class a implements Runnable {
        final /* synthetic */ View b;
        final /* synthetic */ int c;

        a(View view, int i) {
            this.b = view;
            this.c = i;
        }

        public void run() {
            BottomSheetBehavior.this.P(this.b, this.c);
        }
    }

    class b extends u3.c {
        b() {
        }

        @Override // defpackage.u3.c
        public int a(View view, int i, int i2) {
            return view.getLeft();
        }

        @Override // defpackage.u3.c
        public int b(View view, int i, int i2) {
            int L = BottomSheetBehavior.this.L();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return androidx.core.app.b.o(i, L, bottomSheetBehavior.s ? bottomSheetBehavior.A : bottomSheetBehavior.q);
        }

        @Override // defpackage.u3.c
        public int e(View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            if (bottomSheetBehavior.s) {
                return bottomSheetBehavior.A;
            }
            return bottomSheetBehavior.q;
        }

        @Override // defpackage.u3.c
        public void j(int i) {
            if (i == 1) {
                BottomSheetBehavior.this.O(1);
            }
        }

        @Override // defpackage.u3.c
        public void k(View view, int i, int i2, int i3, int i4) {
            BottomSheetBehavior.this.J(i2);
        }

        @Override // defpackage.u3.c
        public void l(View view, float f, float f2) {
            int i;
            int i2 = 4;
            if (f2 >= 0.0f) {
                BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                if (bottomSheetBehavior.s && bottomSheetBehavior.R(view, f2) && (view.getTop() > BottomSheetBehavior.this.q || Math.abs(f) < Math.abs(f2))) {
                    i = BottomSheetBehavior.this.A;
                    i2 = 5;
                    BottomSheetBehavior.this.S(view, i2, i, true);
                } else if (f2 == 0.0f || Math.abs(f) > Math.abs(f2)) {
                    int top = view.getTop();
                    if (!BottomSheetBehavior.this.b) {
                        BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                        int i3 = bottomSheetBehavior2.o;
                        if (top < i3) {
                            if (top < Math.abs(top - bottomSheetBehavior2.q)) {
                                i = BottomSheetBehavior.this.m;
                            } else {
                                i = BottomSheetBehavior.this.o;
                            }
                        } else if (Math.abs(top - i3) < Math.abs(top - BottomSheetBehavior.this.q)) {
                            i = BottomSheetBehavior.this.o;
                        } else {
                            i = BottomSheetBehavior.this.q;
                            BottomSheetBehavior.this.S(view, i2, i, true);
                        }
                        i2 = 6;
                        BottomSheetBehavior.this.S(view, i2, i, true);
                    } else if (Math.abs(top - BottomSheetBehavior.this.n) < Math.abs(top - BottomSheetBehavior.this.q)) {
                        i = BottomSheetBehavior.this.n;
                    } else {
                        i = BottomSheetBehavior.this.q;
                        BottomSheetBehavior.this.S(view, i2, i, true);
                    }
                } else {
                    if (BottomSheetBehavior.this.b) {
                        i = BottomSheetBehavior.this.q;
                    } else {
                        int top2 = view.getTop();
                        if (Math.abs(top2 - BottomSheetBehavior.this.o) < Math.abs(top2 - BottomSheetBehavior.this.q)) {
                            i = BottomSheetBehavior.this.o;
                            i2 = 6;
                        } else {
                            i = BottomSheetBehavior.this.q;
                        }
                    }
                    BottomSheetBehavior.this.S(view, i2, i, true);
                }
            } else if (BottomSheetBehavior.this.b) {
                i = BottomSheetBehavior.this.n;
            } else {
                int top3 = view.getTop();
                BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                int i4 = bottomSheetBehavior3.o;
                if (top3 > i4) {
                    i = i4;
                    i2 = 6;
                    BottomSheetBehavior.this.S(view, i2, i, true);
                }
                i = bottomSheetBehavior3.m;
            }
            i2 = 3;
            BottomSheetBehavior.this.S(view, i2, i, true);
        }

        @Override // defpackage.u3.c
        public boolean m(View view, int i) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i2 = bottomSheetBehavior.u;
            if (i2 == 1 || bottomSheetBehavior.H) {
                return false;
            }
            if (i2 == 3 && bottomSheetBehavior.F == i) {
                WeakReference<View> weakReference = bottomSheetBehavior.C;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.B;
            if (weakReference2 == null || weakReference2.get() != view) {
                return false;
            }
            return true;
        }
    }

    /* access modifiers changed from: package-private */
    public class c implements p3 {
        final /* synthetic */ int a;

        c(int i) {
            this.a = i;
        }

        @Override // defpackage.p3
        public boolean a(View view, p3.a aVar) {
            BottomSheetBehavior.this.N(this.a);
            return true;
        }
    }

    public static abstract class d {
        public abstract void a(View view, float f);

        public abstract void b(View view, int i);
    }

    /* access modifiers changed from: private */
    public class e implements Runnable {
        private final View b;
        private boolean c;
        int d;

        e(View view, int i) {
            this.b = view;
            this.d = i;
        }

        public void run() {
            u3 u3Var = BottomSheetBehavior.this.v;
            if (u3Var == null || !u3Var.k(true)) {
                BottomSheetBehavior.this.O(this.d);
            } else {
                View view = this.b;
                int i = c3.g;
                view.postOnAnimation(this);
            }
            this.c = false;
        }
    }

    public BottomSheetBehavior() {
    }

    private void G(V v2, n3.a aVar, int i2) {
        c3.s(v2, aVar, null, new c(i2));
    }

    private void H() {
        int i2;
        if (this.e) {
            i2 = Math.max(this.f, this.A - ((this.z * 9) / 16));
        } else {
            i2 = this.d;
        }
        if (this.b) {
            this.q = Math.max(this.A - i2, this.n);
        } else {
            this.q = this.A - i2;
        }
    }

    private void I(Context context, AttributeSet attributeSet, boolean z2, ColorStateList colorStateList) {
        if (this.g) {
            this.i = qy.c(context, attributeSet, R.attr.bp, R.style.pa, new gy((float) 0)).m();
            my myVar = new my(this.i);
            this.h = myVar;
            myVar.A(context);
            if (!z2 || colorStateList == null) {
                TypedValue typedValue = new TypedValue();
                context.getTheme().resolveAttribute(16842801, typedValue, true);
                this.h.setTint(typedValue.data);
                return;
            }
            this.h.F(colorStateList);
        }
    }

    /* access modifiers changed from: private */
    /* access modifiers changed from: public */
    private int L() {
        return this.b ? this.n : this.m;
    }

    private void Q(int i2) {
        V v2 = this.B.get();
        if (v2 != null) {
            ViewParent parent = v2.getParent();
            if (parent != null && parent.isLayoutRequested()) {
                int i3 = c3.g;
                if (v2.isAttachedToWindow()) {
                    v2.post(new a(v2, i2));
                    return;
                }
            }
            P(v2, i2);
        }
    }

    private void T() {
        V v2;
        WeakReference<V> weakReference = this.B;
        if (weakReference != null && (v2 = weakReference.get()) != null) {
            c3.q(v2, 524288);
            c3.q(v2, 262144);
            c3.q(v2, 1048576);
            if (this.s && this.u != 5) {
                G(v2, n3.a.l, 5);
            }
            int i2 = this.u;
            int i3 = 6;
            if (i2 == 3) {
                if (this.b) {
                    i3 = 4;
                }
                G(v2, n3.a.k, i3);
            } else if (i2 == 4) {
                if (this.b) {
                    i3 = 3;
                }
                G(v2, n3.a.j, i3);
            } else if (i2 == 6) {
                G(v2, n3.a.k, 4);
                G(v2, n3.a.j, 3);
            }
        }
    }

    private void U(int i2) {
        ValueAnimator valueAnimator;
        if (i2 != 2) {
            boolean z2 = i2 == 3;
            if (this.j != z2) {
                this.j = z2;
                if (this.h != null && (valueAnimator = this.l) != null) {
                    if (valueAnimator.isRunning()) {
                        this.l.reverse();
                        return;
                    }
                    float f2 = z2 ? 0.0f : 1.0f;
                    this.l.setFloatValues(1.0f - f2, f2);
                    this.l.start();
                }
            }
        }
    }

    private void V(boolean z2) {
        WeakReference<V> weakReference = this.B;
        if (weakReference != null) {
            ViewParent parent = weakReference.get().getParent();
            if (parent instanceof CoordinatorLayout) {
                CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
                int childCount = coordinatorLayout.getChildCount();
                if (z2) {
                    if (this.I == null) {
                        this.I = new HashMap(childCount);
                    } else {
                        return;
                    }
                }
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = coordinatorLayout.getChildAt(i2);
                    if (childAt != this.B.get()) {
                        if (!z2) {
                            Map<View, Integer> map = this.I;
                            if (map != null && map.containsKey(childAt)) {
                                int intValue = this.I.get(childAt).intValue();
                                int i3 = c3.g;
                                childAt.setImportantForAccessibility(intValue);
                            }
                        } else {
                            this.I.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                            int i4 = c3.g;
                            childAt.setImportantForAccessibility(4);
                        }
                    }
                }
                if (!z2) {
                    this.I = null;
                }
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean A(CoordinatorLayout coordinatorLayout, V v2, MotionEvent motionEvent) {
        if (!v2.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.u == 1 && actionMasked == 0) {
            return true;
        }
        u3 u3Var = this.v;
        if (u3Var != null) {
            u3Var.x(motionEvent);
        }
        if (actionMasked == 0) {
            this.F = -1;
            VelocityTracker velocityTracker = this.E;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.E = null;
            }
        }
        if (this.E == null) {
            this.E = VelocityTracker.obtain();
        }
        this.E.addMovement(motionEvent);
        if (actionMasked == 2 && !this.w && Math.abs(((float) this.G) - motionEvent.getY()) > ((float) this.v.s())) {
            this.v.c(v2, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.w;
    }

    /* access modifiers changed from: package-private */
    public void J(int i2) {
        float f2;
        float f3;
        V v2 = this.B.get();
        if (!(v2 == null || this.D.isEmpty())) {
            int i3 = this.q;
            if (i2 > i3) {
                f2 = (float) (i3 - i2);
                f3 = (float) (this.A - i3);
            } else {
                f2 = (float) (i3 - i2);
                f3 = (float) (i3 - L());
            }
            float f4 = f2 / f3;
            for (int i4 = 0; i4 < this.D.size(); i4++) {
                this.D.get(i4).a(v2, f4);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public View K(View view) {
        if (c3.l(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View K = K(viewGroup.getChildAt(i2));
            if (K != null) {
                return K;
            }
        }
        return null;
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0021  */
    /* JADX WARNING: Removed duplicated region for block: B:20:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void M(int r4) {
        /*
            r3 = this;
            r0 = 1
            r1 = -1
            r2 = 0
            if (r4 != r1) goto L_0x000c
            boolean r4 = r3.e
            if (r4 != 0) goto L_0x0015
            r3.e = r0
            goto L_0x001f
        L_0x000c:
            boolean r1 = r3.e
            if (r1 != 0) goto L_0x0017
            int r1 = r3.d
            if (r1 == r4) goto L_0x0015
            goto L_0x0017
        L_0x0015:
            r0 = 0
            goto L_0x001f
        L_0x0017:
            r3.e = r2
            int r4 = java.lang.Math.max(r2, r4)
            r3.d = r4
        L_0x001f:
            if (r0 == 0) goto L_0x003a
            java.lang.ref.WeakReference<V extends android.view.View> r4 = r3.B
            if (r4 == 0) goto L_0x003a
            r3.H()
            int r4 = r3.u
            r0 = 4
            if (r4 != r0) goto L_0x003a
            java.lang.ref.WeakReference<V extends android.view.View> r4 = r3.B
            java.lang.Object r4 = r4.get()
            android.view.View r4 = (android.view.View) r4
            if (r4 == 0) goto L_0x003a
            r4.requestLayout()
        L_0x003a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.M(int):void");
    }

    public void N(int i2) {
        if (i2 != this.u) {
            if (this.B != null) {
                Q(i2);
            } else if (i2 == 4 || i2 == 3 || i2 == 6 || (this.s && i2 == 5)) {
                this.u = i2;
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void O(int i2) {
        V v2;
        if (this.u != i2) {
            this.u = i2;
            WeakReference<V> weakReference = this.B;
            if (!(weakReference == null || (v2 = weakReference.get()) == null)) {
                if (i2 == 6 || i2 == 3) {
                    V(true);
                } else if (i2 == 5 || i2 == 4) {
                    V(false);
                }
                U(i2);
                for (int i3 = 0; i3 < this.D.size(); i3++) {
                    this.D.get(i3).b(v2, i2);
                }
                T();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void P(View view, int i2) {
        int i3;
        int i4;
        if (i2 == 4) {
            i3 = this.q;
        } else if (i2 == 6) {
            i3 = this.o;
            if (this.b && i3 <= (i4 = this.n)) {
                i2 = 3;
                i3 = i4;
            }
        } else if (i2 == 3) {
            i3 = L();
        } else if (!this.s || i2 != 5) {
            throw new IllegalArgumentException(ic.f("Illegal state argument: ", i2));
        } else {
            i3 = this.A;
        }
        S(view, i2, i3, false);
    }

    /* access modifiers changed from: package-private */
    public boolean R(View view, float f2) {
        if (this.t) {
            return true;
        }
        if (view.getTop() < this.q) {
            return false;
        }
        if (Math.abs(((f2 * 0.1f) + ((float) view.getTop())) - ((float) this.q)) / ((float) this.d) > 0.5f) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public void S(View view, int i2, int i3, boolean z2) {
        boolean z3;
        if (z2) {
            z3 = this.v.F(view.getLeft(), i3);
        } else {
            z3 = this.v.H(view, view.getLeft(), i3);
        }
        if (z3) {
            O(2);
            U(i2);
            if (this.k == null) {
                this.k = new e(view, i2);
            }
            if (!((e) this.k).c) {
                BottomSheetBehavior<V>.e eVar = this.k;
                eVar.d = i2;
                int i4 = c3.g;
                view.postOnAnimation(eVar);
                ((e) this.k).c = true;
                return;
            }
            this.k.d = i2;
            return;
        }
        O(i2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void f(CoordinatorLayout.e eVar) {
        this.B = null;
        this.v = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void i() {
        this.B = null;
        this.v = null;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean j(CoordinatorLayout coordinatorLayout, V v2, MotionEvent motionEvent) {
        u3 u3Var;
        if (!v2.isShown()) {
            this.w = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        View view = null;
        if (actionMasked == 0) {
            this.F = -1;
            VelocityTracker velocityTracker = this.E;
            if (velocityTracker != null) {
                velocityTracker.recycle();
                this.E = null;
            }
        }
        if (this.E == null) {
            this.E = VelocityTracker.obtain();
        }
        this.E.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x2 = (int) motionEvent.getX();
            this.G = (int) motionEvent.getY();
            if (this.u != 2) {
                WeakReference<View> weakReference = this.C;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && coordinatorLayout.z(view2, x2, this.G)) {
                    this.F = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.H = true;
                }
            }
            this.w = this.F == -1 && !coordinatorLayout.z(v2, x2, this.G);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.H = false;
            this.F = -1;
            if (this.w) {
                this.w = false;
                return false;
            }
        }
        if (!this.w && (u3Var = this.v) != null && u3Var.G(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.C;
        if (weakReference2 != null) {
            view = weakReference2.get();
        }
        if (actionMasked != 2 || view == null || this.w || this.u == 1 || coordinatorLayout.z(view, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.v == null || Math.abs(((float) this.G) - motionEvent.getY()) <= ((float) this.v.s())) {
            return false;
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean k(CoordinatorLayout coordinatorLayout, V v2, int i2) {
        my myVar;
        int i3 = c3.g;
        if (coordinatorLayout.getFitsSystemWindows() && !v2.getFitsSystemWindows()) {
            v2.setFitsSystemWindows(true);
        }
        if (this.B == null) {
            this.f = coordinatorLayout.getResources().getDimensionPixelSize(R.dimen.my);
            this.B = new WeakReference<>(v2);
            if (this.g && (myVar = this.h) != null) {
                v2.setBackground(myVar);
            }
            my myVar2 = this.h;
            if (myVar2 != null) {
                float f2 = this.r;
                if (f2 == -1.0f) {
                    f2 = c3.i(v2);
                }
                myVar2.E(f2);
                boolean z2 = this.u == 3;
                this.j = z2;
                this.h.G(z2 ? 0.0f : 1.0f);
            }
            T();
            if (v2.getImportantForAccessibility() == 0) {
                v2.setImportantForAccessibility(1);
            }
        }
        if (this.v == null) {
            this.v = u3.m(coordinatorLayout, this.J);
        }
        int top = v2.getTop();
        coordinatorLayout.B(v2, i2);
        this.z = coordinatorLayout.getWidth();
        int height = coordinatorLayout.getHeight();
        this.A = height;
        this.n = Math.max(0, height - v2.getHeight());
        this.o = (int) ((1.0f - this.p) * ((float) this.A));
        H();
        int i4 = this.u;
        if (i4 == 3) {
            c3.o(v2, L());
        } else if (i4 == 6) {
            c3.o(v2, this.o);
        } else if (this.s && i4 == 5) {
            c3.o(v2, this.A);
        } else if (i4 == 4) {
            c3.o(v2, this.q);
        } else if (i4 == 1 || i4 == 2) {
            c3.o(v2, top - v2.getTop());
        }
        this.C = new WeakReference<>(K(v2));
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean n(CoordinatorLayout coordinatorLayout, V v2, View view, float f2, float f3) {
        WeakReference<View> weakReference = this.C;
        if (weakReference == null || view != weakReference.get() || this.u == 3) {
            return false;
        }
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void p(CoordinatorLayout coordinatorLayout, V v2, View view, int i2, int i3, int[] iArr, int i4) {
        if (i4 != 1) {
            WeakReference<View> weakReference = this.C;
            if (view == (weakReference != null ? weakReference.get() : null)) {
                int top = v2.getTop();
                int i5 = top - i3;
                if (i3 > 0) {
                    if (i5 < L()) {
                        iArr[1] = top - L();
                        c3.o(v2, -iArr[1]);
                        O(3);
                    } else {
                        iArr[1] = i3;
                        c3.o(v2, -i3);
                        O(1);
                    }
                } else if (i3 < 0 && !view.canScrollVertically(-1)) {
                    int i6 = this.q;
                    if (i5 <= i6 || this.s) {
                        iArr[1] = i3;
                        c3.o(v2, -i3);
                        O(1);
                    } else {
                        iArr[1] = top - i6;
                        c3.o(v2, -iArr[1]);
                        O(4);
                    }
                }
                J(v2.getTop());
                this.x = i3;
                this.y = true;
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void r(CoordinatorLayout coordinatorLayout, V v2, View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void u(CoordinatorLayout coordinatorLayout, V v2, Parcelable parcelable) {
        SavedState savedState = (SavedState) parcelable;
        int i2 = this.a;
        if (i2 != 0) {
            if (i2 == -1 || (i2 & 1) == 1) {
                this.d = savedState.e;
            }
            if (i2 == -1 || (i2 & 2) == 2) {
                this.b = savedState.f;
            }
            if (i2 == -1 || (i2 & 4) == 4) {
                this.s = savedState.g;
            }
            if (i2 == -1 || (i2 & 8) == 8) {
                this.t = savedState.h;
            }
        }
        int i3 = savedState.d;
        if (i3 == 1 || i3 == 2) {
            this.u = 4;
        } else {
            this.u = i3;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public Parcelable v(CoordinatorLayout coordinatorLayout, V v2) {
        return new SavedState((Parcelable) View.BaseSavedState.EMPTY_STATE, (BottomSheetBehavior<?>) this);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean x(CoordinatorLayout coordinatorLayout, V v2, View view, View view2, int i2, int i3) {
        this.x = 0;
        this.y = false;
        if ((i2 & 2) != 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void z(CoordinatorLayout coordinatorLayout, V v2, View view, int i2) {
        int i3;
        float f2;
        int i4 = 3;
        if (v2.getTop() == L()) {
            O(3);
            return;
        }
        WeakReference<View> weakReference = this.C;
        if (weakReference != null && view == weakReference.get() && this.y) {
            if (this.x > 0) {
                i3 = L();
            } else {
                if (this.s) {
                    VelocityTracker velocityTracker = this.E;
                    if (velocityTracker == null) {
                        f2 = 0.0f;
                    } else {
                        velocityTracker.computeCurrentVelocity(AdError.NETWORK_ERROR_CODE, this.c);
                        f2 = this.E.getYVelocity(this.F);
                    }
                    if (R(v2, f2)) {
                        i3 = this.A;
                        i4 = 5;
                    }
                }
                if (this.x == 0) {
                    int top = v2.getTop();
                    if (!this.b) {
                        int i5 = this.o;
                        if (top < i5) {
                            if (top < Math.abs(top - this.q)) {
                                i3 = this.m;
                            } else {
                                i3 = this.o;
                            }
                        } else if (Math.abs(top - i5) < Math.abs(top - this.q)) {
                            i3 = this.o;
                        } else {
                            i3 = this.q;
                            i4 = 4;
                        }
                    } else if (Math.abs(top - this.n) < Math.abs(top - this.q)) {
                        i3 = this.n;
                    } else {
                        i3 = this.q;
                        i4 = 4;
                    }
                } else {
                    if (this.b) {
                        i3 = this.q;
                    } else {
                        int top2 = v2.getTop();
                        if (Math.abs(top2 - this.o) < Math.abs(top2 - this.q)) {
                            i3 = this.o;
                        } else {
                            i3 = this.q;
                        }
                    }
                    i4 = 4;
                }
                i4 = 6;
            }
            S(v2, i4, i3, false);
            this.y = false;
        }
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        final int d;
        int e;
        boolean f;
        boolean g;
        boolean h;

        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, (ClassLoader) null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = parcel.readInt();
            this.e = parcel.readInt();
            boolean z = false;
            this.f = parcel.readInt() == 1;
            this.g = parcel.readInt() == 1;
            this.h = parcel.readInt() == 1 ? true : z;
        }

        @Override // androidx.customview.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.d);
            parcel.writeInt(this.e);
            parcel.writeInt(this.f ? 1 : 0);
            parcel.writeInt(this.g ? 1 : 0);
            parcel.writeInt(this.h ? 1 : 0);
        }

        public SavedState(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.d = bottomSheetBehavior.u;
            this.e = ((BottomSheetBehavior) bottomSheetBehavior).d;
            this.f = ((BottomSheetBehavior) bottomSheetBehavior).b;
            this.g = bottomSheetBehavior.s;
            this.h = ((BottomSheetBehavior) bottomSheetBehavior).t;
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        int i2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.e);
        this.g = obtainStyledAttributes.hasValue(9);
        boolean hasValue = obtainStyledAttributes.hasValue(1);
        if (hasValue) {
            I(context, attributeSet, hasValue, yx.a(context, obtainStyledAttributes, 1));
        } else {
            I(context, attributeSet, hasValue, null);
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.l = ofFloat;
        ofFloat.setDuration(500L);
        this.l.addUpdateListener(new a(this));
        if (Build.VERSION.SDK_INT >= 21) {
            this.r = obtainStyledAttributes.getDimension(0, -1.0f);
        }
        TypedValue peekValue = obtainStyledAttributes.peekValue(6);
        if (peekValue == null || (i2 = peekValue.data) != -1) {
            M(obtainStyledAttributes.getDimensionPixelSize(6, -1));
        } else {
            M(i2);
        }
        boolean z2 = obtainStyledAttributes.getBoolean(5, false);
        if (this.s != z2) {
            this.s = z2;
            if (!z2 && this.u == 5) {
                N(4);
            }
            T();
        }
        int i3 = 3;
        boolean z3 = obtainStyledAttributes.getBoolean(3, true);
        if (this.b != z3) {
            this.b = z3;
            if (this.B != null) {
                H();
            }
            O((!this.b || this.u != 6) ? this.u : i3);
            T();
        }
        this.t = obtainStyledAttributes.getBoolean(8, false);
        this.a = obtainStyledAttributes.getInt(7, 0);
        float f2 = obtainStyledAttributes.getFloat(4, 0.5f);
        if (f2 <= 0.0f || f2 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.p = f2;
        int i4 = obtainStyledAttributes.getInt(2, 0);
        if (i4 >= 0) {
            this.m = i4;
            obtainStyledAttributes.recycle();
            this.c = (float) ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
            return;
        }
        throw new IllegalArgumentException("offset must be greater than or equal to 0");
    }
}
