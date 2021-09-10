package androidx.viewpager.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.Scroller;
import androidx.customview.view.AbsSavedState;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Objects;

public class ViewPager extends ViewGroup {
    static final int[] Q = {16842931};
    private static final Interpolator R = new a();
    private static final h S = new h();
    private VelocityTracker A;
    private int B;
    private int C;
    private int D;
    private int E;
    private boolean F;
    private EdgeEffect G;
    private EdgeEffect H;
    private boolean I = true;
    private boolean J;
    private int K;
    private List<g> L;
    private g M;
    private List<f> N;
    private final Runnable O = new b();
    private int P = 0;
    private final ArrayList<d> b = new ArrayList<>();
    private final d c = new d();
    private final Rect d = new Rect();
    int e;
    private Parcelable f;
    private Scroller g;
    private boolean h;
    private int i;
    private int j;
    private float k = -3.4028235E38f;
    private float l = Float.MAX_VALUE;
    private int m;
    private boolean n;
    private boolean o;
    private int p = 1;
    private boolean q;
    private boolean r;
    private int s;
    private int t;
    private int u;
    private float v;
    private float w;
    private float x;
    private float y;
    private int z = -1;

    public static class LayoutParams extends ViewGroup.LayoutParams {
        public boolean a;
        public int b;
        boolean c;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, ViewPager.Q);
            this.b = obtainStyledAttributes.getInteger(0, 48);
            obtainStyledAttributes.recycle();
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int d;
        Parcelable e;
        ClassLoader f;

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

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder q = ic.q("FragmentPager.SavedState{");
            q.append(Integer.toHexString(System.identityHashCode(this)));
            q.append(" position=");
            return ic.k(q, this.d, "}");
        }

        @Override // androidx.customview.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.d);
            parcel.writeParcelable(this.e, i);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            classLoader = classLoader == null ? getClass().getClassLoader() : classLoader;
            this.d = parcel.readInt();
            this.e = parcel.readParcelable(classLoader);
            this.f = classLoader;
        }
    }

    static class a implements Interpolator {
        a() {
        }

        public float getInterpolation(float f) {
            float f2 = f - 1.0f;
            return (f2 * f2 * f2 * f2 * f2) + 1.0f;
        }
    }

    class b implements Runnable {
        b() {
        }

        public void run() {
            ViewPager.this.z(0);
            ViewPager.this.r();
        }
    }

    @Target({ElementType.TYPE})
    @Inherited
    @Retention(RetentionPolicy.RUNTIME)
    public @interface c {
    }

    /* access modifiers changed from: package-private */
    public static class d {
        int a;
        float b;

        d() {
        }
    }

    class e extends n2 {
        e() {
        }

        @Override // defpackage.n2
        public void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            accessibilityEvent.setClassName(ViewPager.class.getName());
            Objects.requireNonNull(ViewPager.this);
            accessibilityEvent.setScrollable(false);
            if (accessibilityEvent.getEventType() == 4096) {
                Objects.requireNonNull(ViewPager.this);
            }
        }

        @Override // defpackage.n2
        public void e(View view, n3 n3Var) {
            super.e(view, n3Var);
            n3Var.R(ViewPager.class.getName());
            Objects.requireNonNull(ViewPager.this);
            n3Var.k0(false);
            if (ViewPager.this.canScrollHorizontally(1)) {
                n3Var.a(4096);
            }
            if (ViewPager.this.canScrollHorizontally(-1)) {
                n3Var.a(8192);
            }
        }

        @Override // defpackage.n2
        public boolean h(View view, int i, Bundle bundle) {
            if (super.h(view, i, bundle)) {
                return true;
            }
            if (i != 4096) {
                if (i != 8192 || !ViewPager.this.canScrollHorizontally(-1)) {
                    return false;
                }
                ViewPager viewPager = ViewPager.this;
                viewPager.x(viewPager.e - 1);
                return true;
            } else if (!ViewPager.this.canScrollHorizontally(1)) {
                return false;
            } else {
                ViewPager viewPager2 = ViewPager.this;
                viewPager2.x(viewPager2.e + 1);
                return true;
            }
        }
    }

    public interface f {
    }

    public interface g {
        void a(int i, float f, int i2);

        void b(int i);

        void c(int i);
    }

    static class h implements Comparator<View> {
        h() {
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // java.util.Comparator
        public int compare(View view, View view2) {
            boolean z = ((LayoutParams) view.getLayoutParams()).a;
            if (z != ((LayoutParams) view2.getLayoutParams()).a) {
                return z ? 1 : -1;
            }
            return 0;
        }
    }

    public ViewPager(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setWillNotDraw(false);
        setDescendantFocusability(262144);
        setFocusable(true);
        Context context2 = getContext();
        this.g = new Scroller(context2, R);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context2);
        float f2 = context2.getResources().getDisplayMetrics().density;
        this.u = viewConfiguration.getScaledPagingTouchSlop();
        this.B = (int) (400.0f * f2);
        this.C = viewConfiguration.getScaledMaximumFlingVelocity();
        this.G = new EdgeEffect(context2);
        this.H = new EdgeEffect(context2);
        this.D = (int) (25.0f * f2);
        this.E = (int) (2.0f * f2);
        this.s = (int) (f2 * 16.0f);
        c3.u(this, new e());
        if (getImportantForAccessibility() == 0) {
            setImportantForAccessibility(1);
        }
        c3.x(this, new b(this));
    }

    private void A(boolean z2) {
        if (this.o != z2) {
            this.o = z2;
        }
    }

    private void e(boolean z2) {
        boolean z3 = this.P == 2;
        if (z3) {
            A(false);
            if (true ^ this.g.isFinished()) {
                this.g.abortAnimation();
                int scrollX = getScrollX();
                int scrollY = getScrollY();
                int currX = this.g.getCurrX();
                int currY = this.g.getCurrY();
                if (!(scrollX == currX && scrollY == currY)) {
                    scrollTo(currX, currY);
                    if (currX != scrollX) {
                        p(currX);
                    }
                }
            }
        }
        for (int i2 = 0; i2 < this.b.size(); i2++) {
            Objects.requireNonNull(this.b.get(i2));
        }
        if (!z3) {
            return;
        }
        if (z2) {
            Runnable runnable = this.O;
            int i3 = c3.g;
            postOnAnimation(runnable);
            return;
        }
        this.O.run();
    }

    private void f(int i2) {
        List<g> list = this.L;
        if (list != null) {
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                g gVar = this.L.get(i3);
                if (gVar != null) {
                    gVar.c(i2);
                }
            }
        }
        g gVar2 = this.M;
        if (gVar2 != null) {
            gVar2.c(i2);
        }
    }

    private Rect g(Rect rect, View view) {
        if (rect == null) {
            rect = new Rect();
        }
        if (view == null) {
            rect.set(0, 0, 0, 0);
            return rect;
        }
        rect.left = view.getLeft();
        rect.right = view.getRight();
        rect.top = view.getTop();
        rect.bottom = view.getBottom();
        ViewParent parent = view.getParent();
        while ((parent instanceof ViewGroup) && parent != this) {
            ViewGroup viewGroup = (ViewGroup) parent;
            rect.left = viewGroup.getLeft() + rect.left;
            rect.right = viewGroup.getRight() + rect.right;
            rect.top = viewGroup.getTop() + rect.top;
            rect.bottom = viewGroup.getBottom() + rect.bottom;
            parent = viewGroup.getParent();
        }
        return rect;
    }

    private int h() {
        return (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
    }

    private d k() {
        int i2;
        int h2 = h();
        float scrollX = h2 > 0 ? ((float) getScrollX()) / ((float) h2) : 0.0f;
        float f2 = h2 > 0 ? ((float) 0) / ((float) h2) : 0.0f;
        int i3 = -1;
        d dVar = null;
        int i4 = 0;
        boolean z2 = true;
        float f3 = 0.0f;
        while (i4 < this.b.size()) {
            d dVar2 = this.b.get(i4);
            if (z2 || dVar2.a == (i2 = i3 + 1)) {
                f3 = dVar2.b;
                float f4 = 0.0f + f3 + f2;
                if (!z2 && scrollX < f3) {
                    return dVar;
                }
                if (scrollX < f4 || i4 == this.b.size() - 1) {
                    return dVar2;
                }
                i3 = dVar2.a;
                i4++;
                dVar = dVar2;
                z2 = false;
            } else {
                d dVar3 = this.c;
                dVar3.b = f3 + 0.0f + f2;
                dVar3.a = i2;
                throw null;
            }
        }
        return dVar;
    }

    private void n(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.z) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.v = motionEvent.getX(i2);
            this.z = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.A;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private boolean p(int i2) {
        if (this.b.size() != 0) {
            d k2 = k();
            int h2 = h();
            int i3 = h2 + 0;
            float f2 = (float) h2;
            int i4 = k2.a;
            float f3 = ((((float) i2) / f2) - k2.b) / (0.0f + (((float) 0) / f2));
            this.J = false;
            m(i4, f3, (int) (((float) i3) * f3));
            if (this.J) {
                return true;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        } else if (this.I) {
            return false;
        } else {
            this.J = false;
            m(0, 0.0f, 0);
            if (this.J) {
                return false;
            }
            throw new IllegalStateException("onPageScrolled did not call superclass implementation");
        }
    }

    private boolean q(float f2) {
        this.v = f2;
        getScrollX();
        h();
        ArrayList<d> arrayList = this.b;
        int i2 = this.b.get(0).a;
        int i3 = arrayList.get(arrayList.size() - 1).a;
        throw null;
    }

    private void u(boolean z2) {
        ViewParent parent = getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(z2);
        }
    }

    private boolean v() {
        this.z = -1;
        this.q = false;
        this.r = false;
        VelocityTracker velocityTracker = this.A;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.A = null;
        }
        this.G.onRelease();
        this.H.onRelease();
        if (this.G.isFinished() || this.H.isFinished()) {
            return true;
        }
        return false;
    }

    private void w(int i2, boolean z2, int i3, boolean z3) {
        int i4;
        d l2 = l(i2);
        int max = l2 != null ? (int) (Math.max(this.k, Math.min(l2.b, this.l)) * ((float) h())) : 0;
        if (z2) {
            if (getChildCount() == 0) {
                A(false);
            } else {
                Scroller scroller = this.g;
                if (scroller != null && !scroller.isFinished()) {
                    i4 = this.h ? this.g.getCurrX() : this.g.getStartX();
                    this.g.abortAnimation();
                    A(false);
                } else {
                    i4 = getScrollX();
                }
                int scrollY = getScrollY();
                int i5 = max - i4;
                int i6 = 0 - scrollY;
                if (i5 == 0 && i6 == 0) {
                    e(false);
                    r();
                    z(0);
                } else {
                    A(true);
                    z(2);
                    int h2 = h();
                    float f2 = (float) (h2 / 2);
                    float sin = (((float) Math.sin((double) ((Math.min(1.0f, (((float) Math.abs(i5)) * 1.0f) / ((float) h2)) - 0.5f) * 0.47123894f))) * f2) + f2;
                    int abs = Math.abs(i3);
                    if (abs > 0) {
                        int min = Math.min(Math.round(Math.abs(sin / ((float) abs)) * 1000.0f) * 4, 600);
                        this.h = false;
                        this.g.startScroll(i4, scrollY, i5, i6, min);
                        int i7 = c3.g;
                        postInvalidateOnAnimation();
                    } else {
                        throw null;
                    }
                }
            }
            if (z3) {
                f(i2);
                return;
            }
            return;
        }
        if (z3) {
            f(i2);
        }
        e(false);
        scrollTo(max, 0);
        p(max);
    }

    public void a(f fVar) {
        if (this.N == null) {
            this.N = new ArrayList();
        }
        this.N.add(fVar);
    }

    @Override // android.view.View, android.view.ViewGroup
    public void addFocusables(ArrayList<View> arrayList, int i2, int i3) {
        int size = arrayList.size();
        int descendantFocusability = getDescendantFocusability();
        if (descendantFocusability != 393216) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if (childAt.getVisibility() == 0) {
                    j(childAt);
                }
            }
        }
        if ((descendantFocusability == 262144 && size != arrayList.size()) || !isFocusable()) {
            return;
        }
        if ((i3 & 1) != 1 || !isInTouchMode() || isFocusableInTouchMode()) {
            arrayList.add(this);
        }
    }

    @Override // android.view.View, android.view.ViewGroup
    public void addTouchables(ArrayList<View> arrayList) {
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                j(childAt);
            }
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (!checkLayoutParams(layoutParams)) {
            layoutParams = generateLayoutParams(layoutParams);
        }
        LayoutParams layoutParams2 = (LayoutParams) layoutParams;
        boolean z2 = layoutParams2.a | (view.getClass().getAnnotation(c.class) != null);
        layoutParams2.a = z2;
        if (!this.n) {
            super.addView(view, i2, layoutParams);
        } else if (!z2) {
            layoutParams2.c = true;
            addViewInLayout(view, i2, layoutParams);
        } else {
            throw new IllegalStateException("Cannot add pager decor view during layout");
        }
    }

    public void b(g gVar) {
        if (this.L == null) {
            this.L = new ArrayList();
        }
        this.L.add(gVar);
    }

    /* JADX WARNING: Removed duplicated region for block: B:36:0x00bb  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean c(int r7) {
        /*
        // Method dump skipped, instructions count: 195
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.c(int):boolean");
    }

    public boolean canScrollHorizontally(int i2) {
        return false;
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void computeScroll() {
        this.h = true;
        if (this.g.isFinished() || !this.g.computeScrollOffset()) {
            e(true);
            return;
        }
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        int currX = this.g.getCurrX();
        int currY = this.g.getCurrY();
        if (!(scrollX == currX && scrollY == currY)) {
            scrollTo(currX, currY);
            if (!p(currX)) {
                this.g.abortAnimation();
                scrollTo(0, currY);
            }
        }
        int i2 = c3.g;
        postInvalidateOnAnimation();
    }

    /* access modifiers changed from: protected */
    public boolean d(View view, boolean z2, int i2, int i3, int i4) {
        int i5;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int scrollX = view.getScrollX();
            int scrollY = view.getScrollY();
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                int i6 = i3 + scrollX;
                if (i6 >= childAt.getLeft() && i6 < childAt.getRight() && (i5 = i4 + scrollY) >= childAt.getTop() && i5 < childAt.getBottom() && d(childAt, true, i2, i6 - childAt.getLeft(), i5 - childAt.getTop())) {
                    return true;
                }
            }
        }
        if (!z2 || !view.canScrollHorizontally(-i2)) {
            return false;
        }
        return true;
    }

    /* JADX WARNING: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean dispatchKeyEvent(android.view.KeyEvent r6) {
        /*
            r5 = this;
            boolean r0 = super.dispatchKeyEvent(r6)
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L_0x0059
            int r0 = r6.getAction()
            if (r0 != 0) goto L_0x0056
            int r0 = r6.getKeyCode()
            r3 = 21
            r4 = 2
            if (r0 == r3) goto L_0x0044
            r3 = 22
            if (r0 == r3) goto L_0x0036
            r3 = 61
            if (r0 == r3) goto L_0x0020
            goto L_0x0056
        L_0x0020:
            boolean r0 = r6.hasNoModifiers()
            if (r0 == 0) goto L_0x002b
            boolean r6 = r5.c(r4)
            goto L_0x0057
        L_0x002b:
            boolean r6 = r6.hasModifiers(r2)
            if (r6 == 0) goto L_0x0056
            boolean r6 = r5.c(r2)
            goto L_0x0057
        L_0x0036:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L_0x003d
            goto L_0x0056
        L_0x003d:
            r6 = 66
            boolean r6 = r5.c(r6)
            goto L_0x0057
        L_0x0044:
            boolean r6 = r6.hasModifiers(r4)
            if (r6 == 0) goto L_0x004f
            boolean r6 = r5.o()
            goto L_0x0057
        L_0x004f:
            r6 = 17
            boolean r6 = r5.c(r6)
            goto L_0x0057
        L_0x0056:
            r6 = 0
        L_0x0057:
            if (r6 == 0) goto L_0x005a
        L_0x0059:
            r1 = 1
        L_0x005a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 4096) {
            return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                j(childAt);
            }
        }
        return false;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        boolean z2 = false;
        if (getOverScrollMode() != 0) {
            this.G.finish();
            this.H.finish();
        } else {
            if (!this.G.isFinished()) {
                int save = canvas.save();
                int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int width = getWidth();
                canvas.rotate(270.0f);
                canvas.translate((float) (getPaddingTop() + (-height)), this.k * ((float) width));
                this.G.setSize(height, width);
                z2 = false | this.G.draw(canvas);
                canvas.restoreToCount(save);
            }
            if (!this.H.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                canvas.rotate(90.0f);
                canvas.translate((float) (-getPaddingTop()), (-(this.l + 1.0f)) * ((float) width2));
                this.H.setSize(height2, width2);
                z2 |= this.H.draw(canvas);
                canvas.restoreToCount(save2);
            }
        }
        if (z2) {
            int i2 = c3.g;
            postInvalidateOnAnimation();
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    /* access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return generateDefaultLayoutParams();
    }

    /* access modifiers changed from: protected */
    public int getChildDrawingOrder(int i2, int i3) {
        throw null;
    }

    public int i() {
        return this.e;
    }

    /* access modifiers changed from: package-private */
    public d j(View view) {
        if (this.b.size() <= 0) {
            return null;
        }
        Objects.requireNonNull(this.b.get(0));
        throw null;
    }

    /* access modifiers changed from: package-private */
    public d l(int i2) {
        for (int i3 = 0; i3 < this.b.size(); i3++) {
            d dVar = this.b.get(i3);
            if (dVar.a == i2) {
                return dVar;
            }
        }
        return null;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0064  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void m(int r13, float r14, int r15) {
        /*
        // Method dump skipped, instructions count: 143
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.m(int, float, int):void");
    }

    /* access modifiers changed from: package-private */
    public boolean o() {
        if (this.e <= 0) {
            return false;
        }
        A(false);
        return true;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.I = true;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        removeCallbacks(this.O);
        Scroller scroller = this.g;
        if (scroller != null && !scroller.isFinished()) {
            this.g.abortAnimation();
        }
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action == 3 || action == 1) {
            v();
            return false;
        }
        if (action != 0) {
            if (this.q) {
                return true;
            }
            if (this.r) {
                return false;
            }
        }
        if (action == 0) {
            float x2 = motionEvent.getX();
            this.x = x2;
            this.v = x2;
            float y2 = motionEvent.getY();
            this.y = y2;
            this.w = y2;
            this.z = motionEvent.getPointerId(0);
            this.r = false;
            this.h = true;
            this.g.computeScrollOffset();
            if (this.P != 2 || Math.abs(this.g.getFinalX() - this.g.getCurrX()) <= this.E) {
                e(false);
                this.q = false;
            } else {
                this.g.abortAnimation();
                r();
                this.q = true;
                u(true);
                z(1);
            }
        } else if (action == 2) {
            int i2 = this.z;
            if (i2 != -1) {
                int findPointerIndex = motionEvent.findPointerIndex(i2);
                float x3 = motionEvent.getX(findPointerIndex);
                float f2 = x3 - this.v;
                float abs = Math.abs(f2);
                float y3 = motionEvent.getY(findPointerIndex);
                float abs2 = Math.abs(y3 - this.y);
                if (f2 != 0.0f) {
                    float f3 = this.v;
                    if (!((f3 < ((float) this.t) && f2 > 0.0f) || (f3 > ((float) (getWidth() - this.t)) && f2 < 0.0f)) && d(this, false, (int) f2, (int) x3, (int) y3)) {
                        this.v = x3;
                        this.w = y3;
                        this.r = true;
                        return false;
                    }
                }
                float f4 = (float) this.u;
                if (abs > f4 && abs * 0.5f > abs2) {
                    this.q = true;
                    u(true);
                    z(1);
                    this.v = f2 > 0.0f ? this.x + ((float) this.u) : this.x - ((float) this.u);
                    this.w = y3;
                    A(true);
                } else if (abs2 > f4) {
                    this.r = true;
                }
                if (this.q) {
                    q(x3);
                    throw null;
                }
            }
        } else if (action == 6) {
            n(motionEvent);
        }
        if (this.A == null) {
            this.A = VelocityTracker.obtain();
        }
        this.A.addMovement(motionEvent);
        return this.q;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0071  */
    /* JADX WARNING: Removed duplicated region for block: B:27:0x008e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onLayout(boolean r19, int r20, int r21, int r22, int r23) {
        /*
        // Method dump skipped, instructions count: 233
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onLayout(boolean, int, int, int, int):void");
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x0082  */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0089  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x008e  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x0093  */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x00a2  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x00a8  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onMeasure(int r14, int r15) {
        /*
        // Method dump skipped, instructions count: 243
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.viewpager.widget.ViewPager.onMeasure(int, int):void");
    }

    /* access modifiers changed from: protected */
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        int i3;
        int i4;
        int childCount = getChildCount();
        int i5 = -1;
        if ((i2 & 2) != 0) {
            i5 = childCount;
            i4 = 1;
            i3 = 0;
        } else {
            i3 = childCount - 1;
            i4 = -1;
        }
        while (i3 != i5) {
            View childAt = getChildAt(i3);
            if (childAt.getVisibility() == 0) {
                j(childAt);
            }
            i3 += i4;
        }
        return false;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        this.f = savedState.e;
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.d = this.e;
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 == i4) {
            return;
        }
        if (i4 <= 0 || this.b.isEmpty()) {
            d l2 = l(this.e);
            int min = (int) ((l2 != null ? Math.min(l2.b, this.l) : 0.0f) * ((float) ((i2 - getPaddingLeft()) - getPaddingRight())));
            if (min != getScrollX()) {
                e(false);
                scrollTo(min, getScrollY());
            }
        } else if (!this.g.isFinished()) {
            this.g.setFinalX(this.e * h());
        } else {
            scrollTo((int) ((((float) getScrollX()) / ((float) (((i4 - getPaddingLeft()) - getPaddingRight()) + 0))) * ((float) (((i2 - getPaddingLeft()) - getPaddingRight()) + 0))), getScrollY());
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.F) {
            return true;
        }
        if (!(motionEvent.getAction() == 0 && motionEvent.getEdgeFlags() == 0)) {
        }
        return false;
    }

    /* access modifiers changed from: package-private */
    public void r() {
        int i2 = this.e;
        if (i2 != i2) {
            l(i2);
            this.e = i2;
        }
    }

    public void removeView(View view) {
        if (this.n) {
            removeViewInLayout(view);
        } else {
            super.removeView(view);
        }
    }

    public void s(f fVar) {
        List<f> list = this.N;
        if (list != null) {
            list.remove(fVar);
        }
    }

    public void t(g gVar) {
        List<g> list = this.L;
        if (list != null) {
            list.remove(gVar);
        }
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == null;
    }

    public void x(int i2) {
        A(false);
    }

    /* access modifiers changed from: package-private */
    public g y(g gVar) {
        g gVar2 = this.M;
        this.M = gVar;
        return gVar2;
    }

    /* access modifiers changed from: package-private */
    public void z(int i2) {
        if (this.P != i2) {
            this.P = i2;
            List<g> list = this.L;
            if (list != null) {
                int size = list.size();
                for (int i3 = 0; i3 < size; i3++) {
                    g gVar = this.L.get(i3);
                    if (gVar != null) {
                        gVar.b(i2);
                    }
                }
            }
            g gVar2 = this.M;
            if (gVar2 != null) {
                gVar2.b(i2);
            }
        }
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
