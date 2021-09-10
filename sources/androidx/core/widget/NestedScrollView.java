package androidx.core.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.FocusFinder;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.AnimationUtils;
import android.widget.EdgeEffect;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import android.widget.ScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.ads.AdError;
import defpackage.n3;
import java.util.ArrayList;

public class NestedScrollView extends FrameLayout implements v2, s2 {
    private static final a B = new a();
    private static final int[] C = {16843130};
    private b A;
    private long b;
    private final Rect c;
    private OverScroller d;
    private EdgeEffect e;
    private EdgeEffect f;
    private int g;
    private boolean h;
    private boolean i;
    private View j;
    private boolean k;
    private VelocityTracker l;
    private boolean m;
    private boolean n;
    private int o;
    private int p;
    private int q;
    private int r;
    private final int[] s;
    private final int[] t;
    private int u;
    private int v;
    private SavedState w;
    private final x2 x;
    private final t2 y;
    private float z;

    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public int b;

        static class a implements Parcelable.Creator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* Return type fixed from 'java.lang.Object[]' to match base method */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        public String toString() {
            StringBuilder q = ic.q("HorizontalScrollView.SavedState{");
            q.append(Integer.toHexString(System.identityHashCode(this)));
            q.append(" scrollPosition=");
            return ic.k(q, this.b, "}");
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.b);
        }

        SavedState(Parcel parcel) {
            super(parcel);
            this.b = parcel.readInt();
        }
    }

    static class a extends n2 {
        a() {
        }

        @Override // defpackage.n2
        public void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            accessibilityEvent.setClassName(ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.r() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setMaxScrollY(nestedScrollView.r());
        }

        @Override // defpackage.n2
        public void e(View view, n3 n3Var) {
            int r;
            super.e(view, n3Var);
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            n3Var.R(ScrollView.class.getName());
            if (nestedScrollView.isEnabled() && (r = nestedScrollView.r()) > 0) {
                n3Var.k0(true);
                if (nestedScrollView.getScrollY() > 0) {
                    n3Var.b(n3.a.i);
                    n3Var.b(n3.a.m);
                }
                if (nestedScrollView.getScrollY() < r) {
                    n3Var.b(n3.a.h);
                    n3Var.b(n3.a.n);
                }
            }
        }

        @Override // defpackage.n2
        public boolean h(View view, int i, Bundle bundle) {
            if (super.h(view, i, bundle)) {
                return true;
            }
            NestedScrollView nestedScrollView = (NestedScrollView) view;
            if (!nestedScrollView.isEnabled()) {
                return false;
            }
            if (i != 4096) {
                if (i == 8192 || i == 16908344) {
                    int max = Math.max(nestedScrollView.getScrollY() - ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), 0);
                    if (max == nestedScrollView.getScrollY()) {
                        return false;
                    }
                    nestedScrollView.E(0, max, true);
                    return true;
                } else if (i != 16908346) {
                    return false;
                }
            }
            int min = Math.min(nestedScrollView.getScrollY() + ((nestedScrollView.getHeight() - nestedScrollView.getPaddingBottom()) - nestedScrollView.getPaddingTop()), nestedScrollView.r());
            if (min == nestedScrollView.getScrollY()) {
                return false;
            }
            nestedScrollView.E(0, min, true);
            return true;
        }
    }

    public interface b {
        void a(NestedScrollView nestedScrollView, int i, int i2, int i3, int i4);
    }

    public NestedScrollView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private boolean A(int i2, int i3, int i4) {
        boolean z2;
        int height = getHeight();
        int scrollY = getScrollY();
        int i5 = height + scrollY;
        boolean z3 = i2 == 33;
        ArrayList focusables = getFocusables(2);
        int size = focusables.size();
        View view = null;
        boolean z4 = false;
        for (int i6 = 0; i6 < size; i6++) {
            View view2 = (View) focusables.get(i6);
            int top = view2.getTop();
            int bottom = view2.getBottom();
            if (i3 < bottom && top < i4) {
                boolean z5 = i3 < top && bottom < i4;
                if (view == null) {
                    view = view2;
                    z4 = z5;
                } else {
                    boolean z6 = (z3 && top < view.getTop()) || (!z3 && bottom > view.getBottom());
                    if (z4) {
                        if (z5) {
                            if (!z6) {
                            }
                        }
                    } else if (z5) {
                        view = view2;
                        z4 = true;
                    } else if (!z6) {
                    }
                    view = view2;
                }
            }
        }
        if (view == null) {
            view = this;
        }
        if (i3 < scrollY || i4 > i5) {
            f(z3 ? i3 - scrollY : i4 - i5);
            z2 = true;
        } else {
            z2 = false;
        }
        if (view != findFocus()) {
            view.requestFocus(i2);
        }
        return z2;
    }

    private void B(View view) {
        view.getDrawingRect(this.c);
        offsetDescendantRectToMyCoords(view, this.c);
        int d2 = d(this.c);
        if (d2 != 0) {
            scrollBy(0, d2);
        }
    }

    private void D(int i2, int i3, boolean z2) {
        if (getChildCount() != 0) {
            if (AnimationUtils.currentAnimationTimeMillis() - this.b > 250) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
                int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
                int scrollY = getScrollY();
                OverScroller overScroller = this.d;
                int scrollX = getScrollX();
                overScroller.startScroll(scrollX, scrollY, 0, Math.max(0, Math.min(i3 + scrollY, Math.max(0, height - height2))) - scrollY);
                z(z2);
            } else {
                if (!this.d.isFinished()) {
                    a();
                }
                scrollBy(i2, i3);
            }
            this.b = AnimationUtils.currentAnimationTimeMillis();
        }
    }

    private void a() {
        this.d.abortAnimation();
        this.y.m(1);
    }

    private static int c(int i2, int i3, int i4) {
        if (i3 >= i4 || i2 < 0) {
            return 0;
        }
        return i3 + i2 > i4 ? i4 - i3 : i2;
    }

    private void f(int i2) {
        if (i2 == 0) {
            return;
        }
        if (this.n) {
            D(0, i2, false);
        } else {
            scrollBy(0, i2);
        }
    }

    private void h() {
        this.k = false;
        y();
        this.y.m(0);
        EdgeEffect edgeEffect = this.e;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.f.onRelease();
        }
    }

    private void i() {
        if (getOverScrollMode() == 2) {
            this.e = null;
            this.f = null;
        } else if (this.e == null) {
            Context context = getContext();
            this.e = new EdgeEffect(context);
            this.f = new EdgeEffect(context);
        }
    }

    private static boolean t(View view, View view2) {
        if (view == view2) {
            return true;
        }
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup) || !t((View) parent, view2)) {
            return false;
        }
        return true;
    }

    private boolean u(View view, int i2, int i3) {
        view.getDrawingRect(this.c);
        offsetDescendantRectToMyCoords(view, this.c);
        return this.c.bottom + i2 >= getScrollY() && this.c.top - i2 <= getScrollY() + i3;
    }

    private void v(int i2, int i3, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i2);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.y.d(0, scrollY2, 0, i2 - scrollY2, null, i3, iArr);
    }

    private void w(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.r) {
            int i2 = actionIndex == 0 ? 1 : 0;
            this.g = (int) motionEvent.getY(i2);
            this.r = motionEvent.getPointerId(i2);
            VelocityTracker velocityTracker = this.l;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    private void y() {
        VelocityTracker velocityTracker = this.l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.l = null;
        }
    }

    private void z(boolean z2) {
        if (z2) {
            F(2, 1);
        } else {
            this.y.m(1);
        }
        this.v = getScrollY();
        int i2 = c3.g;
        postInvalidateOnAnimation();
    }

    public void C(b bVar) {
        this.A = bVar;
    }

    /* access modifiers changed from: package-private */
    public void E(int i2, int i3, boolean z2) {
        D(i2 - getScrollX(), i3 - getScrollY(), z2);
    }

    public boolean F(int i2, int i3) {
        return this.y.l(i2, i3);
    }

    public void G(int i2) {
        this.y.m(i2);
    }

    public void addView(View view) {
        if (getChildCount() <= 0) {
            super.addView(view);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    public boolean b(int i2) {
        View findFocus = findFocus();
        if (findFocus == this) {
            findFocus = null;
        }
        View findNextFocus = FocusFinder.getInstance().findNextFocus(this, findFocus, i2);
        int height = (int) (((float) getHeight()) * 0.5f);
        if (findNextFocus == null || !u(findNextFocus, height, getHeight())) {
            if (i2 == 33 && getScrollY() < height) {
                height = getScrollY();
            } else if (i2 == 130 && getChildCount() > 0) {
                View childAt = getChildAt(0);
                height = Math.min((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), height);
            }
            if (height == 0) {
                return false;
            }
            if (i2 != 130) {
                height = -height;
            }
            f(height);
        } else {
            findNextFocus.getDrawingRect(this.c);
            offsetDescendantRectToMyCoords(findNextFocus, this.c);
            f(d(this.c));
            findNextFocus.requestFocus(i2);
        }
        if (findFocus != null && findFocus.isFocused() && (!u(findFocus, 0, getHeight()))) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    public void computeScroll() {
        if (!this.d.isFinished()) {
            this.d.computeScrollOffset();
            int currY = this.d.getCurrY();
            int i2 = currY - this.v;
            this.v = currY;
            int[] iArr = this.t;
            boolean z2 = false;
            iArr[1] = 0;
            e(0, i2, iArr, null, 1);
            int i3 = i2 - this.t[1];
            int r2 = r();
            if (i3 != 0) {
                int scrollY = getScrollY();
                x(0, i3, getScrollX(), scrollY, 0, r2, 0, 0);
                int scrollY2 = getScrollY() - scrollY;
                int i4 = i3 - scrollY2;
                int[] iArr2 = this.t;
                iArr2[1] = 0;
                this.y.d(0, scrollY2, 0, i4, this.s, 1, iArr2);
                i3 = i4 - this.t[1];
            }
            if (i3 != 0) {
                int overScrollMode = getOverScrollMode();
                if (overScrollMode == 0 || (overScrollMode == 1 && r2 > 0)) {
                    z2 = true;
                }
                if (z2) {
                    i();
                    if (i3 < 0) {
                        if (this.e.isFinished()) {
                            this.e.onAbsorb((int) this.d.getCurrVelocity());
                        }
                    } else if (this.f.isFinished()) {
                        this.f.onAbsorb((int) this.d.getCurrVelocity());
                    }
                }
                a();
            }
            if (!this.d.isFinished()) {
                int i5 = c3.g;
                postInvalidateOnAnimation();
                return;
            }
            this.y.m(1);
        }
    }

    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    public int computeVerticalScrollOffset() {
        return Math.max(0, super.computeVerticalScrollOffset());
    }

    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int max = Math.max(0, bottom - height);
        if (scrollY < 0) {
            return bottom - scrollY;
        }
        return scrollY > max ? bottom + (scrollY - max) : bottom;
    }

    /* access modifiers changed from: protected */
    public int d(Rect rect) {
        int i2;
        int i3;
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i4 = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i5 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i4 - verticalFadingEdgeLength : i4;
        int i6 = rect.bottom;
        if (i6 > i5 && rect.top > scrollY) {
            if (rect.height() > height) {
                i3 = rect.top - scrollY;
            } else {
                i3 = rect.bottom - i5;
            }
            return Math.min(i3 + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i4);
        } else if (rect.top >= scrollY || i6 >= i5) {
            return 0;
        } else {
            if (rect.height() > height) {
                i2 = 0 - (i5 - rect.bottom);
            } else {
                i2 = 0 - (scrollY - rect.top);
            }
            return Math.max(i2, -getScrollY());
        }
    }

    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || j(keyEvent);
    }

    public boolean dispatchNestedFling(float f2, float f3, boolean z2) {
        return this.y.a(f2, f3, z2);
    }

    public boolean dispatchNestedPreFling(float f2, float f3) {
        return this.y.b(f2, f3);
    }

    public boolean dispatchNestedPreScroll(int i2, int i3, int[] iArr, int[] iArr2) {
        return e(i2, i3, iArr, iArr2, 0);
    }

    public boolean dispatchNestedScroll(int i2, int i3, int i4, int i5, int[] iArr) {
        return this.y.e(i2, i3, i4, i5, iArr);
    }

    public void draw(Canvas canvas) {
        int i2;
        super.draw(canvas);
        if (this.e != null) {
            int scrollY = getScrollY();
            int i3 = 0;
            if (!this.e.isFinished()) {
                int save = canvas.save();
                int width = getWidth();
                int height = getHeight();
                int min = Math.min(0, scrollY);
                int i4 = Build.VERSION.SDK_INT;
                if (i4 < 21 || getClipToPadding()) {
                    width -= getPaddingRight() + getPaddingLeft();
                    i2 = getPaddingLeft() + 0;
                } else {
                    i2 = 0;
                }
                if (i4 >= 21 && getClipToPadding()) {
                    height -= getPaddingBottom() + getPaddingTop();
                    min += getPaddingTop();
                }
                canvas.translate((float) i2, (float) min);
                this.e.setSize(width, height);
                if (this.e.draw(canvas)) {
                    int i5 = c3.g;
                    postInvalidateOnAnimation();
                }
                canvas.restoreToCount(save);
            }
            if (!this.f.isFinished()) {
                int save2 = canvas.save();
                int width2 = getWidth();
                int height2 = getHeight();
                int max = Math.max(r(), scrollY) + height2;
                int i6 = Build.VERSION.SDK_INT;
                if (i6 < 21 || getClipToPadding()) {
                    width2 -= getPaddingRight() + getPaddingLeft();
                    i3 = 0 + getPaddingLeft();
                }
                if (i6 >= 21 && getClipToPadding()) {
                    height2 -= getPaddingBottom() + getPaddingTop();
                    max -= getPaddingBottom();
                }
                canvas.translate((float) (i3 - width2), (float) max);
                canvas.rotate(180.0f, (float) width2, 0.0f);
                this.f.setSize(width2, height2);
                if (this.f.draw(canvas)) {
                    int i7 = c3.g;
                    postInvalidateOnAnimation();
                }
                canvas.restoreToCount(save2);
            }
        }
    }

    public boolean e(int i2, int i3, int[] iArr, int[] iArr2, int i4) {
        return this.y.c(i2, i3, iArr, iArr2, i4);
    }

    @Override // defpackage.v2
    public void g(View view, int i2, int i3, int i4, int i5, int i6, int[] iArr) {
        v(i5, i6, iArr);
    }

    /* access modifiers changed from: protected */
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        View childAt = getChildAt(0);
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return ((float) bottom) / ((float) verticalFadingEdgeLength);
        }
        return 1.0f;
    }

    public int getNestedScrollAxes() {
        return this.x.a();
    }

    /* access modifiers changed from: protected */
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return ((float) scrollY) / ((float) verticalFadingEdgeLength);
        }
        return 1.0f;
    }

    public boolean hasNestedScrollingParent() {
        return s(0);
    }

    @Override // defpackage.s2
    public boolean isNestedScrollingEnabled() {
        return this.y.j();
    }

    /* JADX WARNING: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0038  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean j(android.view.KeyEvent r7) {
        /*
        // Method dump skipped, instructions count: 253
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.j(android.view.KeyEvent):boolean");
    }

    public void k(int i2) {
        if (getChildCount() > 0) {
            this.d.fling(getScrollX(), getScrollY(), 0, i2, 0, 0, RecyclerView.UNDEFINED_DURATION, Integer.MAX_VALUE, 0, 0);
            z(true);
        }
    }

    public boolean l(int i2) {
        int childCount;
        boolean z2 = i2 == 130;
        int height = getHeight();
        Rect rect = this.c;
        rect.top = 0;
        rect.bottom = height;
        if (z2 && (childCount = getChildCount()) > 0) {
            View childAt = getChildAt(childCount - 1);
            this.c.bottom = getPaddingBottom() + childAt.getBottom() + ((FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            Rect rect2 = this.c;
            rect2.top = rect2.bottom - height;
        }
        Rect rect3 = this.c;
        return A(i2, rect3.top, rect3.bottom);
    }

    @Override // defpackage.u2
    public void m(View view, int i2, int i3, int i4, int i5, int i6) {
        v(i5, i6, null);
    }

    /* access modifiers changed from: protected */
    public void measureChild(View view, int i2, int i3) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft(), layoutParams.width), View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    /* access modifiers changed from: protected */
    public void measureChildWithMargins(View view, int i2, int i3, int i4, int i5) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(FrameLayout.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width), View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // defpackage.u2
    public boolean n(View view, View view2, int i2, int i3) {
        return (i2 & 2) != 0;
    }

    @Override // defpackage.u2
    public void o(View view, View view2, int i2, int i3) {
        this.x.b(i2, i3);
        F(2, i3);
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.i = false;
    }

    public boolean onGenericMotionEvent(MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && !this.k) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != 0.0f) {
                if (this.z == 0.0f) {
                    TypedValue typedValue = new TypedValue();
                    Context context = getContext();
                    if (context.getTheme().resolveAttribute(16842829, typedValue, true)) {
                        this.z = typedValue.getDimension(context.getResources().getDisplayMetrics());
                    } else {
                        throw new IllegalStateException("Expected theme to define listPreferredItemHeight.");
                    }
                }
                int r2 = r();
                int scrollY = getScrollY();
                int i2 = scrollY - ((int) (axisValue * this.z));
                if (i2 < 0) {
                    r2 = 0;
                } else if (i2 <= r2) {
                    r2 = i2;
                }
                if (r2 != scrollY) {
                    super.scrollTo(getScrollX(), r2);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARNING: Removed duplicated region for block: B:47:0x00e5  */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x00eb  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r12) {
        /*
        // Method dump skipped, instructions count: 282
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z2, int i2, int i3, int i4, int i5) {
        super.onLayout(z2, i2, i3, i4, i5);
        int i6 = 0;
        this.h = false;
        View view = this.j;
        if (view != null && t(view, this)) {
            B(this.j);
        }
        this.j = null;
        if (!this.i) {
            if (this.w != null) {
                scrollTo(getScrollX(), this.w.b);
                this.w = null;
            }
            if (getChildCount() > 0) {
                View childAt = getChildAt(0);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
                i6 = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = ((i5 - i3) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int c2 = c(scrollY, paddingTop, i6);
            if (c2 != scrollY) {
                scrollTo(getScrollX(), c2);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.i = true;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        if (this.m && View.MeasureSpec.getMode(i3) != 0 && getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(FrameLayout.getChildMeasureSpec(i2, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // defpackage.w2
    public boolean onNestedFling(View view, float f2, float f3, boolean z2) {
        if (z2) {
            return false;
        }
        dispatchNestedFling(0.0f, f3, true);
        k((int) f3);
        return true;
    }

    @Override // defpackage.w2
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return dispatchNestedPreFling(f2, f3);
    }

    @Override // defpackage.w2
    public void onNestedPreScroll(View view, int i2, int i3, int[] iArr) {
        e(i2, i3, iArr, null, 0);
    }

    @Override // defpackage.w2
    public void onNestedScroll(View view, int i2, int i3, int i4, int i5) {
        v(i5, 0, null);
    }

    @Override // defpackage.w2
    public void onNestedScrollAccepted(View view, View view2, int i2) {
        this.x.b(i2, 0);
        F(2, 0);
    }

    /* access modifiers changed from: protected */
    public void onOverScrolled(int i2, int i3, boolean z2, boolean z3) {
        super.scrollTo(i2, i3);
    }

    /* access modifiers changed from: protected */
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        View view;
        if (i2 == 2) {
            i2 = 130;
        } else if (i2 == 1) {
            i2 = 33;
        }
        if (rect == null) {
            view = FocusFinder.getInstance().findNextFocus(this, null, i2);
        } else {
            view = FocusFinder.getInstance().findNextFocusFromRect(this, rect, i2);
        }
        if (view != null && !(true ^ u(view, 0, getHeight()))) {
            return view.requestFocus(i2, rect);
        }
        return false;
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.w = savedState;
        requestLayout();
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.b = getScrollY();
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onScrollChanged(int i2, int i3, int i4, int i5) {
        super.onScrollChanged(i2, i3, i4, i5);
        b bVar = this.A;
        if (bVar != null) {
            bVar.a(this, i2, i3, i4, i5);
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        View findFocus = findFocus();
        if (findFocus != null && this != findFocus && u(findFocus, 0, i5)) {
            findFocus.getDrawingRect(this.c);
            offsetDescendantRectToMyCoords(findFocus, this.c);
            f(d(this.c));
        }
    }

    @Override // defpackage.w2
    public boolean onStartNestedScroll(View view, View view2, int i2) {
        return (i2 & 2) != 0;
    }

    @Override // defpackage.w2
    public void onStopNestedScroll(View view) {
        this.x.d(0);
        G(0);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        if (this.l == null) {
            this.l = VelocityTracker.obtain();
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.u = 0;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        obtain.offsetLocation(0.0f, (float) this.u);
        if (actionMasked != 0) {
            if (actionMasked == 1) {
                VelocityTracker velocityTracker = this.l;
                velocityTracker.computeCurrentVelocity(AdError.NETWORK_ERROR_CODE, (float) this.q);
                int yVelocity = (int) velocityTracker.getYVelocity(this.r);
                if (Math.abs(yVelocity) >= this.p) {
                    int i2 = -yVelocity;
                    float f2 = (float) i2;
                    if (!dispatchNestedPreFling(0.0f, f2)) {
                        dispatchNestedFling(0.0f, f2, true);
                        k(i2);
                    }
                } else if (this.d.springBack(getScrollX(), getScrollY(), 0, 0, 0, r())) {
                    int i3 = c3.g;
                    postInvalidateOnAnimation();
                }
                this.r = -1;
                h();
            } else if (actionMasked == 2) {
                int findPointerIndex = motionEvent.findPointerIndex(this.r);
                if (findPointerIndex == -1) {
                    StringBuilder q2 = ic.q("Invalid pointerId=");
                    q2.append(this.r);
                    q2.append(" in onTouchEvent");
                    Log.e("NestedScrollView", q2.toString());
                } else {
                    int y2 = (int) motionEvent.getY(findPointerIndex);
                    int i4 = this.g - y2;
                    if (!this.k && Math.abs(i4) > this.o) {
                        ViewParent parent2 = getParent();
                        if (parent2 != null) {
                            parent2.requestDisallowInterceptTouchEvent(true);
                        }
                        this.k = true;
                        i4 = i4 > 0 ? i4 - this.o : i4 + this.o;
                    }
                    int i5 = i4;
                    if (this.k) {
                        if (e(0, i5, this.t, this.s, 0)) {
                            i5 -= this.t[1];
                            this.u += this.s[1];
                        }
                        this.g = y2 - this.s[1];
                        int scrollY = getScrollY();
                        int r2 = r();
                        int overScrollMode = getOverScrollMode();
                        boolean z2 = overScrollMode == 0 || (overScrollMode == 1 && r2 > 0);
                        if (x(0, i5, 0, getScrollY(), 0, r2, 0, 0) && !s(0)) {
                            this.l.clear();
                        }
                        int scrollY2 = getScrollY() - scrollY;
                        int[] iArr = this.t;
                        iArr[1] = 0;
                        this.y.d(0, scrollY2, 0, i5 - scrollY2, this.s, 0, iArr);
                        int i6 = this.g;
                        int[] iArr2 = this.s;
                        this.g = i6 - iArr2[1];
                        this.u += iArr2[1];
                        if (z2) {
                            int i7 = i5 - this.t[1];
                            i();
                            int i8 = scrollY + i7;
                            if (i8 < 0) {
                                androidx.core.app.b.l0(this.e, ((float) i7) / ((float) getHeight()), motionEvent.getX(findPointerIndex) / ((float) getWidth()));
                                if (!this.f.isFinished()) {
                                    this.f.onRelease();
                                }
                            } else if (i8 > r2) {
                                androidx.core.app.b.l0(this.f, ((float) i7) / ((float) getHeight()), 1.0f - (motionEvent.getX(findPointerIndex) / ((float) getWidth())));
                                if (!this.e.isFinished()) {
                                    this.e.onRelease();
                                }
                            }
                            EdgeEffect edgeEffect = this.e;
                            if (edgeEffect != null && (!edgeEffect.isFinished() || !this.f.isFinished())) {
                                int i9 = c3.g;
                                postInvalidateOnAnimation();
                            }
                        }
                    }
                }
            } else if (actionMasked == 3) {
                if (this.k && getChildCount() > 0 && this.d.springBack(getScrollX(), getScrollY(), 0, 0, 0, r())) {
                    int i10 = c3.g;
                    postInvalidateOnAnimation();
                }
                this.r = -1;
                h();
            } else if (actionMasked == 5) {
                int actionIndex = motionEvent.getActionIndex();
                this.g = (int) motionEvent.getY(actionIndex);
                this.r = motionEvent.getPointerId(actionIndex);
            } else if (actionMasked == 6) {
                w(motionEvent);
                this.g = (int) motionEvent.getY(motionEvent.findPointerIndex(this.r));
            }
        } else if (getChildCount() == 0) {
            return false;
        } else {
            boolean z3 = !this.d.isFinished();
            this.k = z3;
            if (z3 && (parent = getParent()) != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            if (!this.d.isFinished()) {
                a();
            }
            this.g = (int) motionEvent.getY();
            this.r = motionEvent.getPointerId(0);
            F(2, 0);
        }
        VelocityTracker velocityTracker2 = this.l;
        if (velocityTracker2 != null) {
            velocityTracker2.addMovement(obtain);
        }
        obtain.recycle();
        return true;
    }

    @Override // defpackage.u2
    public void p(View view, int i2) {
        this.x.d(i2);
        G(i2);
    }

    @Override // defpackage.u2
    public void q(View view, int i2, int i3, int[] iArr, int i4) {
        e(i2, i3, iArr, null, i4);
    }

    /* access modifiers changed from: package-private */
    public int r() {
        if (getChildCount() <= 0) {
            return 0;
        }
        View childAt = getChildAt(0);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
        return Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    public void requestChildFocus(View view, View view2) {
        if (!this.h) {
            B(view2);
        } else {
            this.j = view2;
        }
        super.requestChildFocus(view, view2);
    }

    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z2) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int d2 = d(rect);
        boolean z3 = d2 != 0;
        if (z3) {
            if (z2) {
                scrollBy(0, d2);
            } else {
                D(0, d2, false);
            }
        }
        return z3;
    }

    public void requestDisallowInterceptTouchEvent(boolean z2) {
        if (z2) {
            y();
        }
        super.requestDisallowInterceptTouchEvent(z2);
    }

    public void requestLayout() {
        this.h = true;
        super.requestLayout();
    }

    public boolean s(int i2) {
        return this.y.i(i2);
    }

    public void scrollTo(int i2, int i3) {
        if (getChildCount() > 0) {
            View childAt = getChildAt(0);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) childAt.getLayoutParams();
            int c2 = c(i2, (getWidth() - getPaddingLeft()) - getPaddingRight(), childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin);
            int c3 = c(i3, (getHeight() - getPaddingTop()) - getPaddingBottom(), childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin);
            if (c2 != getScrollX() || c3 != getScrollY()) {
                super.scrollTo(c2, c3);
            }
        }
    }

    public void setNestedScrollingEnabled(boolean z2) {
        this.y.k(z2);
    }

    public boolean shouldDelayChildPressedState() {
        return true;
    }

    public boolean startNestedScroll(int i2) {
        return this.y.l(i2, 0);
    }

    @Override // defpackage.s2
    public void stopNestedScroll() {
        this.y.m(0);
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0057  */
    /* JADX WARNING: Removed duplicated region for block: B:36:0x005a  */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x0083 A[ADDED_TO_REGION] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean x(int r13, int r14, int r15, int r16, int r17, int r18, int r19, int r20) {
        /*
        // Method dump skipped, instructions count: 135
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.x(int, int, int, int, int, int, int, int):boolean");
    }

    public NestedScrollView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.c = new Rect();
        this.h = true;
        this.i = false;
        this.j = null;
        this.k = false;
        this.n = true;
        this.r = -1;
        this.s = new int[2];
        this.t = new int[2];
        this.d = new OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(262144);
        setWillNotDraw(false);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        this.o = viewConfiguration.getScaledTouchSlop();
        this.p = viewConfiguration.getScaledMinimumFlingVelocity();
        this.q = viewConfiguration.getScaledMaximumFlingVelocity();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C, i2, 0);
        boolean z2 = obtainStyledAttributes.getBoolean(0, false);
        if (z2 != this.m) {
            this.m = z2;
            requestLayout();
        }
        obtainStyledAttributes.recycle();
        this.x = new x2();
        this.y = new t2(this);
        setNestedScrollingEnabled(true);
        c3.u(this, B);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2) {
        if (getChildCount() <= 0) {
            super.addView(view, i2);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i2, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() <= 0) {
            super.addView(view, i2, layoutParams);
            return;
        }
        throw new IllegalStateException("ScrollView can host only one direct child");
    }
}
