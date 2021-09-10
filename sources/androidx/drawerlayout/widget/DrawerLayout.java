package androidx.drawerlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import androidx.customview.view.AbsSavedState;
import defpackage.n3;
import defpackage.u3;
import java.util.ArrayList;
import java.util.Objects;

public class DrawerLayout extends ViewGroup {
    private static final int[] B = {16843828};
    static final int[] C = {16842931};
    static final boolean D = true;
    private static final boolean E;
    private Matrix A;
    private final c b;
    private float c;
    private int d;
    private int e;
    private float f;
    private Paint g;
    private final u3 h;
    private final u3 i;
    private final d j;
    private final d k;
    private int l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private int q;
    private int r;
    private boolean s;
    private float t;
    private float u;
    private Drawable v;
    private Object w;
    private boolean x;
    private final ArrayList<View> y;
    private Rect z;

    class a implements View.OnApplyWindowInsetsListener {
        a(DrawerLayout drawerLayout) {
        }

        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            ((DrawerLayout) view).n(windowInsets, windowInsets.getSystemWindowInsetTop() > 0);
            return windowInsets.consumeSystemWindowInsets();
        }
    }

    class b extends n2 {
        private final Rect d = new Rect();

        b() {
        }

        @Override // defpackage.n2
        public boolean a(View view, AccessibilityEvent accessibilityEvent) {
            if (accessibilityEvent.getEventType() != 32) {
                return super.a(view, accessibilityEvent);
            }
            accessibilityEvent.getText();
            View g = DrawerLayout.this.g();
            if (g == null) {
                return true;
            }
            int i = DrawerLayout.this.i(g);
            DrawerLayout drawerLayout = DrawerLayout.this;
            Objects.requireNonNull(drawerLayout);
            int i2 = c3.g;
            Gravity.getAbsoluteGravity(i, drawerLayout.getLayoutDirection());
            return true;
        }

        @Override // defpackage.n2
        public void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            accessibilityEvent.setClassName(DrawerLayout.class.getName());
        }

        @Override // defpackage.n2
        public void e(View view, n3 n3Var) {
            if (DrawerLayout.D) {
                super.e(view, n3Var);
            } else {
                n3 G = n3.G(n3Var);
                super.e(view, G);
                n3Var.n0(view);
                int i = c3.g;
                ViewParent parentForAccessibility = view.getParentForAccessibility();
                if (parentForAccessibility instanceof View) {
                    n3Var.h0((View) parentForAccessibility);
                }
                Rect rect = this.d;
                G.i(rect);
                n3Var.M(rect);
                G.j(rect);
                n3Var.N(rect);
                n3Var.q0(G.D());
                n3Var.f0(G.q());
                n3Var.R(G.l());
                n3Var.V(G.n());
                n3Var.X(G.v());
                n3Var.S(G.u());
                n3Var.Z(G.w());
                n3Var.a0(G.x());
                n3Var.K(G.s());
                n3Var.l0(G.B());
                n3Var.d0(G.y());
                n3Var.a(G.h());
                G.I();
                ViewGroup viewGroup = (ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    if (DrawerLayout.j(childAt)) {
                        n3Var.c(childAt);
                    }
                }
            }
            n3Var.R(DrawerLayout.class.getName());
            n3Var.Z(false);
            n3Var.a0(false);
            n3Var.J(n3.a.e);
            n3Var.J(n3.a.f);
        }

        @Override // defpackage.n2
        public boolean g(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (DrawerLayout.D || DrawerLayout.j(view)) {
                return super.g(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    static final class c extends n2 {
        c() {
        }

        @Override // defpackage.n2
        public void e(View view, n3 n3Var) {
            super.e(view, n3Var);
            if (!DrawerLayout.j(view)) {
                n3Var.h0(null);
            }
        }
    }

    /* access modifiers changed from: private */
    public class d extends u3.c {
        private final int a;
        private u3 b;
        private final Runnable c = new a();

        class a implements Runnable {
            a() {
            }

            public void run() {
                d.this.o();
            }
        }

        d(int i) {
            this.a = i;
        }

        private void n() {
            int i = 3;
            if (this.a == 3) {
                i = 5;
            }
            View e = DrawerLayout.this.e(i);
            if (e != null) {
                DrawerLayout.this.c(e);
            }
        }

        @Override // defpackage.u3.c
        public int a(View view, int i, int i2) {
            if (DrawerLayout.this.b(view, 3)) {
                return Math.max(-view.getWidth(), Math.min(i, 0));
            }
            int width = DrawerLayout.this.getWidth();
            return Math.max(width - view.getWidth(), Math.min(i, width));
        }

        @Override // defpackage.u3.c
        public int b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // defpackage.u3.c
        public int d(View view) {
            if (DrawerLayout.this.l(view)) {
                return view.getWidth();
            }
            return 0;
        }

        @Override // defpackage.u3.c
        public void f(int i, int i2) {
            View view;
            if ((i & 1) == 1) {
                view = DrawerLayout.this.e(3);
            } else {
                view = DrawerLayout.this.e(5);
            }
            if (view != null && DrawerLayout.this.h(view) == 0) {
                this.b.c(view, i2);
            }
        }

        @Override // defpackage.u3.c
        public boolean g(int i) {
            return false;
        }

        @Override // defpackage.u3.c
        public void h(int i, int i2) {
            DrawerLayout.this.postDelayed(this.c, 160);
        }

        @Override // defpackage.u3.c
        public void i(View view, int i) {
            ((LayoutParams) view.getLayoutParams()).c = false;
            n();
        }

        @Override // defpackage.u3.c
        public void j(int i) {
            DrawerLayout.this.r(i, this.b.q());
        }

        @Override // defpackage.u3.c
        public void k(View view, int i, int i2, int i3, int i4) {
            float f;
            int width = view.getWidth();
            if (DrawerLayout.this.b(view, 3)) {
                f = (float) (i + width);
            } else {
                f = (float) (DrawerLayout.this.getWidth() - i);
            }
            float f2 = f / ((float) width);
            DrawerLayout.this.p(view, f2);
            view.setVisibility(f2 == 0.0f ? 4 : 0);
            DrawerLayout.this.invalidate();
        }

        @Override // defpackage.u3.c
        public void l(View view, float f, float f2) {
            int i;
            Objects.requireNonNull(DrawerLayout.this);
            float f3 = ((LayoutParams) view.getLayoutParams()).b;
            int width = view.getWidth();
            if (DrawerLayout.this.b(view, 3)) {
                i = (f > 0.0f || (f == 0.0f && f3 > 0.5f)) ? 0 : -width;
            } else {
                int width2 = DrawerLayout.this.getWidth();
                if (f < 0.0f || (f == 0.0f && f3 > 0.5f)) {
                    width2 -= width;
                }
                i = width2;
            }
            this.b.F(i, view.getTop());
            DrawerLayout.this.invalidate();
        }

        @Override // defpackage.u3.c
        public boolean m(View view, int i) {
            return DrawerLayout.this.l(view) && DrawerLayout.this.b(view, this.a) && DrawerLayout.this.h(view) == 0;
        }

        /* access modifiers changed from: package-private */
        public void o() {
            View view;
            int i;
            int r = this.b.r();
            int i2 = 0;
            boolean z = this.a == 3;
            if (z) {
                view = DrawerLayout.this.e(3);
                if (view != null) {
                    i2 = -view.getWidth();
                }
                i = i2 + r;
            } else {
                view = DrawerLayout.this.e(5);
                i = DrawerLayout.this.getWidth() - r;
            }
            if (view == null) {
                return;
            }
            if (((z && view.getLeft() < i) || (!z && view.getLeft() > i)) && DrawerLayout.this.h(view) == 0) {
                this.b.H(view, i, view.getTop());
                ((LayoutParams) view.getLayoutParams()).c = true;
                DrawerLayout.this.invalidate();
                n();
                DrawerLayout.this.a();
            }
        }

        public void p() {
            DrawerLayout.this.removeCallbacks(this.c);
        }

        public void q(u3 u3Var) {
            this.b = u3Var;
        }
    }

    static {
        boolean z2 = true;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 21) {
            z2 = false;
        }
        E = z2;
    }

    public DrawerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    static boolean j(View view) {
        int i2 = c3.g;
        return (view.getImportantForAccessibility() == 4 || view.getImportantForAccessibility() == 2) ? false : true;
    }

    private void q(View view, boolean z2) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((z2 || l(childAt)) && (!z2 || childAt != view)) {
                int i3 = c3.g;
                childAt.setImportantForAccessibility(4);
            } else {
                int i4 = c3.g;
                childAt.setImportantForAccessibility(1);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a() {
        if (!this.s) {
            long uptimeMillis = SystemClock.uptimeMillis();
            MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                getChildAt(i2).dispatchTouchEvent(obtain);
            }
            obtain.recycle();
            this.s = true;
        }
    }

    @Override // android.view.View, android.view.ViewGroup
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        if (getDescendantFocusability() != 393216) {
            int childCount = getChildCount();
            boolean z2 = false;
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                if (!l(childAt)) {
                    this.y.add(childAt);
                } else if (!l(childAt)) {
                    throw new IllegalArgumentException("View " + childAt + " is not a drawer");
                } else if ((((LayoutParams) childAt.getLayoutParams()).d & 1) == 1) {
                    childAt.addFocusables(arrayList, i2, i3);
                    z2 = true;
                }
            }
            if (!z2) {
                int size = this.y.size();
                for (int i5 = 0; i5 < size; i5++) {
                    View view = this.y.get(i5);
                    if (view.getVisibility() == 0) {
                        view.addFocusables(arrayList, i2, i3);
                    }
                }
            }
            this.y.clear();
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i2, layoutParams);
        if (f() != null || l(view)) {
            int i3 = c3.g;
            view.setImportantForAccessibility(4);
        } else {
            int i4 = c3.g;
            view.setImportantForAccessibility(1);
        }
        if (!D) {
            c3.u(view, this.b);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean b(View view, int i2) {
        return (i(view) & i2) == i2;
    }

    public void c(View view) {
        if (l(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.n) {
                layoutParams.b = 0.0f;
                layoutParams.d = 0;
            } else {
                layoutParams.d |= 4;
                if (b(view, 3)) {
                    this.h.H(view, -view.getWidth(), view.getTop());
                } else {
                    this.i.H(view, getWidth(), view.getTop());
                }
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void computeScroll() {
        int childCount = getChildCount();
        float f2 = 0.0f;
        for (int i2 = 0; i2 < childCount; i2++) {
            f2 = Math.max(f2, ((LayoutParams) getChildAt(i2).getLayoutParams()).b);
        }
        this.f = f2;
        boolean k2 = this.h.k(true);
        boolean k3 = this.i.k(true);
        if (k2 || k3) {
            int i3 = c3.g;
            postInvalidateOnAnimation();
        }
    }

    /* access modifiers changed from: package-private */
    public void d(boolean z2) {
        boolean z3;
        int childCount = getChildCount();
        boolean z4 = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (l(childAt) && (!z2 || layoutParams.c)) {
                int width = childAt.getWidth();
                if (b(childAt, 3)) {
                    z3 = this.h.H(childAt, -width, childAt.getTop());
                } else {
                    z3 = this.i.H(childAt, getWidth(), childAt.getTop());
                }
                z4 |= z3;
                layoutParams.c = false;
            }
        }
        this.j.p();
        this.k.p();
        if (z4) {
            invalidate();
        }
    }

    public boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        boolean z2;
        if ((motionEvent.getSource() & 2) == 0 || motionEvent.getAction() == 10 || this.f <= 0.0f) {
            return super.dispatchGenericMotionEvent(motionEvent);
        }
        int childCount = getChildCount();
        if (childCount == 0) {
            return false;
        }
        float x2 = motionEvent.getX();
        float y2 = motionEvent.getY();
        for (int i2 = childCount - 1; i2 >= 0; i2--) {
            View childAt = getChildAt(i2);
            if (this.z == null) {
                this.z = new Rect();
            }
            childAt.getHitRect(this.z);
            if (this.z.contains((int) x2, (int) y2) && !k(childAt)) {
                if (!childAt.getMatrix().isIdentity()) {
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    obtain.offsetLocation((float) (getScrollX() - childAt.getLeft()), (float) (getScrollY() - childAt.getTop()));
                    Matrix matrix = childAt.getMatrix();
                    if (!matrix.isIdentity()) {
                        if (this.A == null) {
                            this.A = new Matrix();
                        }
                        matrix.invert(this.A);
                        obtain.transform(this.A);
                    }
                    z2 = childAt.dispatchGenericMotionEvent(obtain);
                    obtain.recycle();
                } else {
                    float scrollX = (float) (getScrollX() - childAt.getLeft());
                    float scrollY = (float) (getScrollY() - childAt.getTop());
                    motionEvent.offsetLocation(scrollX, scrollY);
                    z2 = childAt.dispatchGenericMotionEvent(motionEvent);
                    motionEvent.offsetLocation(-scrollX, -scrollY);
                }
                if (z2) {
                    return true;
                }
            }
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean drawChild(Canvas canvas, View view, long j2) {
        int height = getHeight();
        boolean k2 = k(view);
        int width = getWidth();
        int save = canvas.save();
        int i2 = 0;
        if (k2) {
            int childCount = getChildCount();
            int i3 = 0;
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = getChildAt(i4);
                if (childAt != view && childAt.getVisibility() == 0) {
                    Drawable background = childAt.getBackground();
                    if ((background != null && background.getOpacity() == -1) && l(childAt) && childAt.getHeight() >= height) {
                        if (b(childAt, 3)) {
                            int right = childAt.getRight();
                            if (right > i3) {
                                i3 = right;
                            }
                        } else {
                            int left = childAt.getLeft();
                            if (left < width) {
                                width = left;
                            }
                        }
                    }
                }
            }
            canvas.clipRect(i3, 0, width, getHeight());
            i2 = i3;
        }
        boolean drawChild = super.drawChild(canvas, view, j2);
        canvas.restoreToCount(save);
        float f2 = this.f;
        if (f2 > 0.0f && k2) {
            int i5 = this.e;
            this.g.setColor((((int) (((float) ((-16777216 & i5) >>> 24)) * f2)) << 24) | (i5 & 16777215));
            canvas.drawRect((float) i2, 0.0f, (float) width, (float) getHeight(), this.g);
        }
        return drawChild;
    }

    /* access modifiers changed from: package-private */
    public View e(int i2) {
        int i3 = c3.g;
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, getLayoutDirection()) & 7;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            if ((i(childAt) & 7) == absoluteGravity) {
                return childAt;
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public View f() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if ((((LayoutParams) childAt.getLayoutParams()).d & 1) == 1) {
                return childAt;
            }
        }
        return null;
    }

    /* access modifiers changed from: package-private */
    public View g() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (l(childAt)) {
                if (l(childAt)) {
                    if (((LayoutParams) childAt.getLayoutParams()).b > 0.0f) {
                        return childAt;
                    }
                } else {
                    throw new IllegalArgumentException("View " + childAt + " is not a drawer");
                }
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    /* access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LayoutParams) {
            return new LayoutParams((LayoutParams) layoutParams);
        }
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    public int h(View view) {
        if (l(view)) {
            int i2 = ((LayoutParams) view.getLayoutParams()).a;
            int i3 = c3.g;
            int layoutDirection = getLayoutDirection();
            if (i2 == 3) {
                int i4 = this.o;
                if (i4 != 3) {
                    return i4;
                }
                int i5 = layoutDirection == 0 ? this.q : this.r;
                if (i5 != 3) {
                    return i5;
                }
            } else if (i2 == 5) {
                int i6 = this.p;
                if (i6 != 3) {
                    return i6;
                }
                int i7 = layoutDirection == 0 ? this.r : this.q;
                if (i7 != 3) {
                    return i7;
                }
            } else if (i2 == 8388611) {
                int i8 = this.q;
                if (i8 != 3) {
                    return i8;
                }
                int i9 = layoutDirection == 0 ? this.o : this.p;
                if (i9 != 3) {
                    return i9;
                }
            } else if (i2 == 8388613) {
                int i10 = this.r;
                if (i10 != 3) {
                    return i10;
                }
                int i11 = layoutDirection == 0 ? this.p : this.o;
                if (i11 != 3) {
                    return i11;
                }
            }
            return 0;
        }
        throw new IllegalArgumentException("View " + view + " is not a drawer");
    }

    /* access modifiers changed from: package-private */
    public int i(View view) {
        int i2 = ((LayoutParams) view.getLayoutParams()).a;
        int i3 = c3.g;
        return Gravity.getAbsoluteGravity(i2, getLayoutDirection());
    }

    /* access modifiers changed from: package-private */
    public boolean k(View view) {
        return ((LayoutParams) view.getLayoutParams()).a == 0;
    }

    /* access modifiers changed from: package-private */
    public boolean l(View view) {
        int i2 = ((LayoutParams) view.getLayoutParams()).a;
        int i3 = c3.g;
        int absoluteGravity = Gravity.getAbsoluteGravity(i2, view.getLayoutDirection());
        return ((absoluteGravity & 3) == 0 && (absoluteGravity & 5) == 0) ? false : true;
    }

    public void m(View view) {
        if (l(view)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.n) {
                layoutParams.b = 1.0f;
                layoutParams.d = 1;
                q(view, true);
            } else {
                layoutParams.d |= 2;
                if (b(view, 3)) {
                    this.h.H(view, 0, view.getTop());
                } else {
                    this.i.H(view, getWidth() - view.getWidth(), view.getTop());
                }
            }
            invalidate();
            return;
        }
        throw new IllegalArgumentException("View " + view + " is not a sliding drawer");
    }

    public void n(Object obj, boolean z2) {
        this.w = obj;
        this.x = z2;
        setWillNotDraw(!z2 && getBackground() == null);
        requestLayout();
    }

    public void o(int i2, int i3) {
        View e2;
        int i4 = c3.g;
        int absoluteGravity = Gravity.getAbsoluteGravity(i3, getLayoutDirection());
        if (i3 == 3) {
            this.o = i2;
        } else if (i3 == 5) {
            this.p = i2;
        } else if (i3 == 8388611) {
            this.q = i2;
        } else if (i3 == 8388613) {
            this.r = i2;
        }
        if (i2 != 0) {
            (absoluteGravity == 3 ? this.h : this.i).b();
        }
        if (i2 == 1) {
            View e3 = e(absoluteGravity);
            if (e3 != null) {
                c(e3);
            }
        } else if (i2 == 2 && (e2 = e(absoluteGravity)) != null) {
            m(e2);
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.n = true;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.n = true;
    }

    public void onDraw(Canvas canvas) {
        Object obj;
        super.onDraw(canvas);
        if (this.x && this.v != null) {
            int systemWindowInsetTop = (Build.VERSION.SDK_INT < 21 || (obj = this.w) == null) ? 0 : ((WindowInsets) obj).getSystemWindowInsetTop();
            if (systemWindowInsetTop > 0) {
                this.v.setBounds(0, 0, getWidth(), systemWindowInsetTop);
                this.v.draw(canvas);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:5:0x001b, code lost:
        if (r0 != 3) goto L_0x0036;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r7) {
        /*
        // Method dump skipped, instructions count: 136
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            if (g() != null) {
                keyEvent.startTracking();
                return true;
            }
        }
        return super.onKeyDown(i2, keyEvent);
    }

    public boolean onKeyUp(int i2, KeyEvent keyEvent) {
        if (i2 != 4) {
            return super.onKeyUp(i2, keyEvent);
        }
        View g2 = g();
        if (g2 != null && h(g2) == 0) {
            d(false);
        }
        if (g2 != null) {
            return true;
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        float f2;
        int i6;
        this.m = true;
        int i7 = i4 - i2;
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (k(childAt)) {
                    int i9 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    childAt.layout(i9, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, childAt.getMeasuredWidth() + i9, childAt.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) layoutParams).topMargin);
                } else {
                    int measuredWidth = childAt.getMeasuredWidth();
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (b(childAt, 3)) {
                        float f3 = (float) measuredWidth;
                        i6 = (-measuredWidth) + ((int) (layoutParams.b * f3));
                        f2 = ((float) (measuredWidth + i6)) / f3;
                    } else {
                        float f4 = (float) measuredWidth;
                        int i10 = i7 - ((int) (layoutParams.b * f4));
                        f2 = ((float) (i7 - i10)) / f4;
                        i6 = i10;
                    }
                    boolean z3 = f2 != layoutParams.b;
                    int i11 = layoutParams.a & 112;
                    if (i11 == 16) {
                        int i12 = i5 - i3;
                        int i13 = (i12 - measuredHeight) / 2;
                        int i14 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        if (i13 < i14) {
                            i13 = i14;
                        } else {
                            int i15 = i13 + measuredHeight;
                            int i16 = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                            if (i15 > i12 - i16) {
                                i13 = (i12 - i16) - measuredHeight;
                            }
                        }
                        childAt.layout(i6, i13, measuredWidth + i6, measuredHeight + i13);
                    } else if (i11 != 80) {
                        int i17 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        childAt.layout(i6, i17, measuredWidth + i6, measuredHeight + i17);
                    } else {
                        int i18 = i5 - i3;
                        childAt.layout(i6, (i18 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin) - childAt.getMeasuredHeight(), measuredWidth + i6, i18 - ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin);
                    }
                    if (z3) {
                        p(childAt, f2);
                    }
                    int i19 = layoutParams.b > 0.0f ? 0 : 4;
                    if (childAt.getVisibility() != i19) {
                        childAt.setVisibility(i19);
                    }
                }
            }
        }
        this.m = false;
        this.n = false;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0050  */
    @android.annotation.SuppressLint({"WrongConstant"})
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r17, int r18) {
        /*
        // Method dump skipped, instructions count: 473
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onMeasure(int, int):void");
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        View e2;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        int i2 = savedState.d;
        if (!(i2 == 0 || (e2 = e(i2)) == null)) {
            m(e2);
        }
        int i3 = savedState.e;
        if (i3 != 3) {
            o(i3, 3);
        }
        int i4 = savedState.f;
        if (i4 != 3) {
            o(i4, 5);
        }
        int i5 = savedState.g;
        if (i5 != 3) {
            o(i5, 8388611);
        }
        int i6 = savedState.h;
        if (i6 != 3) {
            o(i6, 8388613);
        }
    }

    public void onRtlPropertiesChanged(int i2) {
        if (!E) {
            int i3 = c3.g;
            getLayoutDirection();
            getLayoutDirection();
        }
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        int childCount = getChildCount();
        int i2 = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            LayoutParams layoutParams = (LayoutParams) getChildAt(i2).getLayoutParams();
            int i3 = layoutParams.d;
            boolean z2 = true;
            boolean z3 = i3 == 1;
            if (i3 != 2) {
                z2 = false;
            }
            if (z3 || z2) {
                savedState.d = layoutParams.a;
            } else {
                i2++;
            }
        }
        savedState.e = this.o;
        savedState.f = this.p;
        savedState.g = this.q;
        savedState.h = this.r;
        return savedState;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:15:0x005b, code lost:
        if (h(r7) != 2) goto L_0x005e;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
        // Method dump skipped, instructions count: 113
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.drawerlayout.widget.DrawerLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* access modifiers changed from: package-private */
    public void p(View view, float f2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f2 != layoutParams.b) {
            layoutParams.b = f2;
        }
    }

    /* access modifiers changed from: package-private */
    public void r(int i2, View view) {
        View rootView;
        int t2 = this.h.t();
        int t3 = this.i.t();
        int i3 = 2;
        if (t2 == 1 || t3 == 1) {
            i3 = 1;
        } else if (!(t2 == 2 || t3 == 2)) {
            i3 = 0;
        }
        if (view != null && i2 == 0) {
            float f2 = ((LayoutParams) view.getLayoutParams()).b;
            if (f2 == 0.0f) {
                LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                if ((layoutParams.d & 1) == 1) {
                    layoutParams.d = 0;
                    q(view, false);
                    if (hasWindowFocus() && (rootView = getRootView()) != null) {
                        rootView.sendAccessibilityEvent(32);
                    }
                }
            } else if (f2 == 1.0f) {
                LayoutParams layoutParams2 = (LayoutParams) view.getLayoutParams();
                if ((layoutParams2.d & 1) == 0) {
                    layoutParams2.d = 1;
                    q(view, true);
                    if (hasWindowFocus()) {
                        sendAccessibilityEvent(32);
                    }
                }
            }
        }
        if (i3 != this.l) {
            this.l = i3;
        }
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        super.requestDisallowInterceptTouchEvent(z2);
        if (z2) {
            d(true);
        }
    }

    public void requestLayout() {
        if (!this.m) {
            super.requestLayout();
        }
    }

    public DrawerLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.b = new c();
        this.e = -1728053248;
        this.g = new Paint();
        this.n = true;
        this.o = 3;
        this.p = 3;
        this.q = 3;
        this.r = 3;
        setDescendantFocusability(262144);
        float f2 = getResources().getDisplayMetrics().density;
        this.d = (int) ((64.0f * f2) + 0.5f);
        float f3 = 400.0f * f2;
        d dVar = new d(3);
        this.j = dVar;
        d dVar2 = new d(5);
        this.k = dVar2;
        u3 l2 = u3.l(this, 1.0f, dVar);
        this.h = l2;
        l2.D(1);
        l2.E(f3);
        dVar.q(l2);
        u3 l3 = u3.l(this, 1.0f, dVar2);
        this.i = l3;
        l3.D(2);
        l3.E(f3);
        dVar2.q(l3);
        setFocusableInTouchMode(true);
        int i3 = c3.g;
        setImportantForAccessibility(1);
        c3.u(this, new b());
        setMotionEventSplittingEnabled(false);
        if (getFitsSystemWindows()) {
            if (Build.VERSION.SDK_INT >= 21) {
                setOnApplyWindowInsetsListener(new a(this));
                setSystemUiVisibility(1280);
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(B);
                try {
                    this.v = obtainStyledAttributes.getDrawable(0);
                } finally {
                    obtainStyledAttributes.recycle();
                }
            } else {
                this.v = null;
            }
        }
        this.c = f2 * 10.0f;
        this.y = new ArrayList<>();
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        public int a = 0;
        float b;
        boolean c;
        int d;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, DrawerLayout.C);
            this.a = obtainStyledAttributes.getInt(0, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.a = layoutParams.a;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    protected static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int d = 0;
        int e;
        int f;
        int g;
        int h;

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
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = parcel.readInt();
            this.e = parcel.readInt();
            this.f = parcel.readInt();
            this.g = parcel.readInt();
            this.h = parcel.readInt();
        }

        @Override // androidx.customview.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.d);
            parcel.writeInt(this.e);
            parcel.writeInt(this.f);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
