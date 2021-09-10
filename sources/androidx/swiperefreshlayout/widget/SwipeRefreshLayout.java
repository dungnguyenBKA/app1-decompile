package androidx.swiperefreshlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;
import android.widget.ListView;
import java.util.Objects;

public class SwipeRefreshLayout extends ViewGroup implements w2, s2 {
    private static final String F = SwipeRefreshLayout.class.getSimpleName();
    private static final int[] G = {16842766};
    boolean A;
    private int B;
    private Animation.AnimationListener C = new a();
    private final Animation D = new e();
    private final Animation E = new f();
    private View b;
    boolean c = false;
    private int d;
    private float e = -1.0f;
    private float f;
    private final x2 g;
    private final t2 h;
    private final int[] i = new int[2];
    private final int[] j = new int[2];
    private boolean k;
    int l;
    private float m;
    private float n;
    private boolean o;
    private int p = -1;
    private final DecelerateInterpolator q;
    a r;
    private int s = -1;
    protected int t;
    protected int u;
    int v;
    d w;
    private Animation x;
    private Animation y;
    private Animation z;

    class a implements Animation.AnimationListener {
        a() {
        }

        public void onAnimationEnd(Animation animation) {
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            if (swipeRefreshLayout.c) {
                swipeRefreshLayout.w.setAlpha(255);
                SwipeRefreshLayout.this.w.start();
                SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
                if (swipeRefreshLayout2.A) {
                    Objects.requireNonNull(swipeRefreshLayout2);
                }
                SwipeRefreshLayout swipeRefreshLayout3 = SwipeRefreshLayout.this;
                swipeRefreshLayout3.l = swipeRefreshLayout3.r.getTop();
                return;
            }
            swipeRefreshLayout.i();
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
        }
    }

    /* access modifiers changed from: package-private */
    public class b extends Animation {
        b() {
        }

        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.j(1.0f - f);
        }
    }

    /* access modifiers changed from: package-private */
    public class c extends Animation {
        final /* synthetic */ int b;
        final /* synthetic */ int c;

        c(int i, int i2) {
            this.b = i;
            this.c = i2;
        }

        public void applyTransformation(float f, Transformation transformation) {
            d dVar = SwipeRefreshLayout.this.w;
            int i = this.b;
            dVar.setAlpha((int) ((((float) (this.c - i)) * f) + ((float) i)));
        }
    }

    /* access modifiers changed from: package-private */
    public class d implements Animation.AnimationListener {
        d() {
        }

        public void onAnimationEnd(Animation animation) {
            Objects.requireNonNull(SwipeRefreshLayout.this);
            SwipeRefreshLayout.this.s(null);
        }

        public void onAnimationRepeat(Animation animation) {
        }

        public void onAnimationStart(Animation animation) {
        }
    }

    class e extends Animation {
        e() {
        }

        public void applyTransformation(float f, Transformation transformation) {
            Objects.requireNonNull(SwipeRefreshLayout.this);
            SwipeRefreshLayout swipeRefreshLayout = SwipeRefreshLayout.this;
            int abs = swipeRefreshLayout.v - Math.abs(swipeRefreshLayout.u);
            SwipeRefreshLayout swipeRefreshLayout2 = SwipeRefreshLayout.this;
            int i = swipeRefreshLayout2.t;
            SwipeRefreshLayout.this.k((i + ((int) (((float) (abs - i)) * f))) - swipeRefreshLayout2.r.getTop());
            SwipeRefreshLayout.this.w.c(1.0f - f);
        }
    }

    class f extends Animation {
        f() {
        }

        public void applyTransformation(float f, Transformation transformation) {
            SwipeRefreshLayout.this.f(f);
        }
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.d = ViewConfiguration.get(context).getScaledTouchSlop();
        getResources().getInteger(17694721);
        setWillNotDraw(false);
        this.q = new DecelerateInterpolator(2.0f);
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.B = (int) (displayMetrics.density * 40.0f);
        this.r = new a(getContext(), -328966);
        d dVar = new d(getContext());
        this.w = dVar;
        dVar.g(1);
        this.r.setImageDrawable(this.w);
        this.r.setVisibility(8);
        addView(this.r);
        setChildrenDrawingOrderEnabled(true);
        int i2 = (int) (displayMetrics.density * 64.0f);
        this.v = i2;
        this.e = (float) i2;
        this.g = new x2();
        this.h = new t2(this);
        setNestedScrollingEnabled(true);
        int i3 = -this.B;
        this.l = i3;
        this.u = i3;
        f(1.0f);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, G);
        setEnabled(obtainStyledAttributes.getBoolean(0, true));
        obtainStyledAttributes.recycle();
    }

    private void b() {
        if (this.b == null) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                View childAt = getChildAt(i2);
                if (!childAt.equals(this.r)) {
                    this.b = childAt;
                    return;
                }
            }
        }
    }

    private void c(float f2) {
        if (f2 <= this.e) {
            this.c = false;
            this.w.f(0.0f, 0.0f);
            d dVar = new d();
            this.t = this.l;
            this.E.reset();
            this.E.setDuration(200);
            this.E.setInterpolator(this.q);
            this.r.a(dVar);
            this.r.clearAnimation();
            this.r.startAnimation(this.E);
            this.w.b(false);
        } else if (!this.c) {
            this.A = true;
            b();
            this.c = true;
            int i2 = this.l;
            Animation.AnimationListener animationListener = this.C;
            this.t = i2;
            this.D.reset();
            this.D.setDuration(200);
            this.D.setInterpolator(this.q);
            if (animationListener != null) {
                this.r.a(animationListener);
            }
            this.r.clearAnimation();
            this.r.startAnimation(this.D);
        }
    }

    private boolean d(Animation animation) {
        return animation != null && animation.hasStarted() && !animation.hasEnded();
    }

    private void e(float f2) {
        this.w.b(true);
        float min = Math.min(1.0f, Math.abs(f2 / this.e));
        double d2 = (double) min;
        Double.isNaN(d2);
        float max = (((float) Math.max(d2 - 0.4d, 0.0d)) * 5.0f) / 3.0f;
        float abs = Math.abs(f2) - this.e;
        float f3 = (float) this.v;
        double max2 = (double) (Math.max(0.0f, Math.min(abs, f3 * 2.0f) / f3) / 4.0f);
        double pow = Math.pow(max2, 2.0d);
        Double.isNaN(max2);
        float f4 = ((float) (max2 - pow)) * 2.0f;
        int i2 = this.u + ((int) ((f3 * min) + (f3 * f4 * 2.0f)));
        if (this.r.getVisibility() != 0) {
            this.r.setVisibility(0);
        }
        this.r.setScaleX(1.0f);
        this.r.setScaleY(1.0f);
        if (f2 < this.e) {
            if (this.w.getAlpha() > 76 && !d(this.y)) {
                this.y = l(this.w.getAlpha(), 76);
            }
        } else if (this.w.getAlpha() < 255 && !d(this.z)) {
            this.z = l(this.w.getAlpha(), 255);
        }
        this.w.f(0.0f, Math.min(0.8f, max * 0.8f));
        this.w.c(Math.min(1.0f, max));
        d dVar = this.w;
        dVar.d(((f4 * 2.0f) + ((max * 0.4f) - 16.0f)) * 0.5f);
        k(i2 - this.l);
    }

    private void h(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.p) {
            this.p = motionEvent.getPointerId(actionIndex == 0 ? 1 : 0);
        }
    }

    private Animation l(int i2, int i3) {
        c cVar = new c(i2, i3);
        cVar.setDuration(300);
        this.r.a(null);
        this.r.clearAnimation();
        this.r.startAnimation(cVar);
        return cVar;
    }

    private void r(float f2) {
        float f3 = this.n;
        int i2 = this.d;
        if (f2 - f3 > ((float) i2) && !this.o) {
            this.m = f3 + ((float) i2);
            this.o = true;
            this.w.setAlpha(76);
        }
    }

    public boolean a() {
        View view = this.b;
        if (view instanceof ListView) {
            return ((ListView) view).canScrollList(-1);
        }
        return view.canScrollVertically(-1);
    }

    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return this.h.a(f2, f3, z2);
    }

    public boolean dispatchNestedPreFling(float f2, float f3) {
        return this.h.b(f2, f3);
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return this.h.c(i2, i3, iArr, iArr2, 0);
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return this.h.e(i2, i3, i4, i5, iArr);
    }

    /* access modifiers changed from: package-private */
    public void f(float f2) {
        int i2 = this.t;
        k((i2 + ((int) (((float) (this.u - i2)) * f2))) - this.r.getTop());
    }

    /* access modifiers changed from: protected */
    public int getChildDrawingOrder(int i2, int i3) {
        int i4 = this.s;
        if (i4 < 0) {
            return i3;
        }
        if (i3 == i2 - 1) {
            return i4;
        }
        return i3 >= i4 ? i3 + 1 : i3;
    }

    public int getNestedScrollAxes() {
        return this.g.a();
    }

    public boolean hasNestedScrollingParent() {
        return this.h.i(0);
    }

    /* access modifiers changed from: package-private */
    public void i() {
        this.r.clearAnimation();
        this.w.stop();
        this.r.setVisibility(8);
        this.r.getBackground().setAlpha(255);
        this.w.setAlpha(255);
        k(this.u - this.l);
        this.l = this.r.getTop();
    }

    @Override // defpackage.s2
    public boolean isNestedScrollingEnabled() {
        return this.h.j();
    }

    /* access modifiers changed from: package-private */
    public void j(float f2) {
        this.r.setScaleX(f2);
        this.r.setScaleY(f2);
    }

    /* access modifiers changed from: package-private */
    public void k(int i2) {
        this.r.bringToFront();
        c3.o(this.r, i2);
        this.l = this.r.getTop();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        i();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        b();
        int actionMasked = motionEvent.getActionMasked();
        if (!isEnabled() || a() || this.c || this.k) {
            return false;
        }
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    int i2 = this.p;
                    if (i2 == -1) {
                        Log.e(F, "Got ACTION_MOVE event but don't have an active pointer id.");
                        return false;
                    }
                    int findPointerIndex = motionEvent.findPointerIndex(i2);
                    if (findPointerIndex < 0) {
                        return false;
                    }
                    r(motionEvent.getY(findPointerIndex));
                } else if (actionMasked != 3) {
                    if (actionMasked == 6) {
                        h(motionEvent);
                    }
                }
            }
            this.o = false;
            this.p = -1;
        } else {
            k(this.u - this.r.getTop());
            int pointerId = motionEvent.getPointerId(0);
            this.p = pointerId;
            this.o = false;
            int findPointerIndex2 = motionEvent.findPointerIndex(pointerId);
            if (findPointerIndex2 < 0) {
                return false;
            }
            this.n = motionEvent.getY(findPointerIndex2);
        }
        return this.o;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (getChildCount() != 0) {
            if (this.b == null) {
                b();
            }
            View view = this.b;
            if (view != null) {
                int paddingLeft = getPaddingLeft();
                int paddingTop = getPaddingTop();
                view.layout(paddingLeft, paddingTop, ((measuredWidth - getPaddingLeft()) - getPaddingRight()) + paddingLeft, ((measuredHeight - getPaddingTop()) - getPaddingBottom()) + paddingTop);
                int measuredWidth2 = this.r.getMeasuredWidth();
                int measuredHeight2 = this.r.getMeasuredHeight();
                int i6 = measuredWidth / 2;
                int i7 = measuredWidth2 / 2;
                int i8 = this.l;
                this.r.layout(i6 - i7, i8, i6 + i7, measuredHeight2 + i8);
            }
        }
    }

    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.b == null) {
            b();
        }
        View view = this.b;
        if (view != null) {
            view.measure(View.MeasureSpec.makeMeasureSpec((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), 1073741824), View.MeasureSpec.makeMeasureSpec((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), 1073741824));
            this.r.measure(View.MeasureSpec.makeMeasureSpec(this.B, 1073741824), View.MeasureSpec.makeMeasureSpec(this.B, 1073741824));
            this.s = -1;
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                if (getChildAt(i4) == this.r) {
                    this.s = i4;
                    return;
                }
            }
        }
    }

    @Override // defpackage.w2
    public boolean onNestedFling(View view, float f2, float f3, boolean z2) {
        return dispatchNestedFling(f2, f3, z2);
    }

    @Override // defpackage.w2
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return dispatchNestedPreFling(f2, f3);
    }

    @Override // defpackage.w2
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        if (i3 > 0) {
            float f2 = this.f;
            if (f2 > 0.0f) {
                float f3 = (float) i3;
                if (f3 > f2) {
                    iArr[1] = i3 - ((int) f2);
                    this.f = 0.0f;
                } else {
                    this.f = f2 - f3;
                    iArr[1] = i3;
                }
                e(this.f);
            }
        }
        int[] iArr2 = this.i;
        if (dispatchNestedPreScroll(i2 - iArr[0], i3 - iArr[1], iArr2, null)) {
            iArr[0] = iArr[0] + iArr2[0];
            iArr[1] = iArr[1] + iArr2[1];
        }
    }

    @Override // defpackage.w2
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        dispatchNestedScroll(i2, i3, i4, i5, this.j);
        int i6 = i5 + this.j[1];
        if (i6 < 0 && !a()) {
            float abs = this.f + ((float) Math.abs(i6));
            this.f = abs;
            e(abs);
        }
    }

    @Override // defpackage.w2
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.g.c(view, view2, i2);
        startNestedScroll(i2 & 2);
        this.f = 0.0f;
        this.k = true;
    }

    @Override // defpackage.w2
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return isEnabled() && !this.c && (i2 & 2) != 0;
    }

    @Override // defpackage.w2
    public void onStopNestedScroll(View view) {
        this.g.d(0);
        this.k = false;
        float f2 = this.f;
        if (f2 > 0.0f) {
            c(f2);
            this.f = 0.0f;
        }
        stopNestedScroll();
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (!isEnabled() || a() || this.c || this.k) {
            return false;
        }
        if (actionMasked == 0) {
            this.p = motionEvent.getPointerId(0);
            this.o = false;
        } else if (actionMasked == 1) {
            int findPointerIndex = motionEvent.findPointerIndex(this.p);
            if (findPointerIndex < 0) {
                Log.e(F, "Got ACTION_UP event but don't have an active pointer id.");
                return false;
            }
            if (this.o) {
                this.o = false;
                c((motionEvent.getY(findPointerIndex) - this.m) * 0.5f);
            }
            this.p = -1;
            return false;
        } else if (actionMasked == 2) {
            int findPointerIndex2 = motionEvent.findPointerIndex(this.p);
            if (findPointerIndex2 < 0) {
                Log.e(F, "Got ACTION_MOVE event but have an invalid active pointer id.");
                return false;
            }
            float y2 = motionEvent.getY(findPointerIndex2);
            r(y2);
            if (this.o) {
                float f2 = (y2 - this.m) * 0.5f;
                if (f2 <= 0.0f) {
                    return false;
                }
                e(f2);
            }
        } else if (actionMasked == 3) {
            return false;
        } else {
            if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                if (actionIndex < 0) {
                    Log.e(F, "Got ACTION_POINTER_DOWN event but have an invalid action index.");
                    return false;
                }
                this.p = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                h(motionEvent);
            }
        }
        return true;
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        if (Build.VERSION.SDK_INT >= 21 || !(this.b instanceof AbsListView)) {
            View view = this.b;
            if (view == null || c3.l(view)) {
                super.requestDisallowInterceptTouchEvent(z2);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void s(Animation.AnimationListener animationListener) {
        b bVar = new b();
        this.x = bVar;
        bVar.setDuration(150);
        this.r.a(animationListener);
        this.r.clearAnimation();
        this.r.startAnimation(this.x);
    }

    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
        if (!z2) {
            i();
        }
    }

    public void setNestedScrollingEnabled(boolean z2) {
        this.h.k(z2);
    }

    public boolean startNestedScroll(int i2) {
        return this.h.l(i2, 0);
    }

    @Override // defpackage.s2
    public void stopNestedScroll() {
        this.h.m(0);
    }
}
