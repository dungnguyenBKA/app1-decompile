package androidx.slidingpanelayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import androidx.customview.view.AbsSavedState;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.u3;
import java.util.ArrayList;
import java.util.Objects;
import org.apache.http.HttpStatus;

public class SlidingPaneLayout extends ViewGroup {
    private int b;
    private final int c;
    private boolean d;
    View e;
    float f;
    int g;
    boolean h;
    private float i;
    private float j;
    final u3 k;
    boolean l;
    private boolean m;
    private final Rect n;
    final ArrayList<b> o;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        boolean d;

        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

            /* Return type fixed from 'java.lang.Object' to match base method */
            @Override // android.os.Parcelable.ClassLoaderCreator
            public SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, null);
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

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // androidx.customview.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.d ? 1 : 0);
        }

        SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, null);
            this.d = parcel.readInt() != 0;
        }
    }

    class a extends n2 {
        private final Rect d = new Rect();

        a() {
        }

        @Override // defpackage.n2
        public void d(View view, AccessibilityEvent accessibilityEvent) {
            super.d(view, accessibilityEvent);
            accessibilityEvent.setClassName(SlidingPaneLayout.class.getName());
        }

        @Override // defpackage.n2
        public void e(View view, n3 n3Var) {
            n3 G = n3.G(n3Var);
            super.e(view, G);
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
            n3Var.e0(G.p());
            G.I();
            n3Var.R(SlidingPaneLayout.class.getName());
            n3Var.n0(view);
            int i = c3.g;
            ViewParent parentForAccessibility = view.getParentForAccessibility();
            if (parentForAccessibility instanceof View) {
                n3Var.h0((View) parentForAccessibility);
            }
            int childCount = SlidingPaneLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = SlidingPaneLayout.this.getChildAt(i2);
                if (!SlidingPaneLayout.this.c(childAt) && childAt.getVisibility() == 0) {
                    childAt.setImportantForAccessibility(1);
                    n3Var.c(childAt);
                }
            }
        }

        @Override // defpackage.n2
        public boolean g(ViewGroup viewGroup, View view, AccessibilityEvent accessibilityEvent) {
            if (!SlidingPaneLayout.this.c(view)) {
                return super.g(viewGroup, view, accessibilityEvent);
            }
            return false;
        }
    }

    /* access modifiers changed from: private */
    public class b implements Runnable {
        final View b;

        b(View view) {
            this.b = view;
        }

        public void run() {
            if (this.b.getParent() == SlidingPaneLayout.this) {
                this.b.setLayerType(0, null);
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                View view = this.b;
                Objects.requireNonNull(slidingPaneLayout);
                Paint paint = ((LayoutParams) view.getLayoutParams()).d;
                int i = c3.g;
                view.setLayerPaint(paint);
            }
            SlidingPaneLayout.this.o.remove(this);
        }
    }

    private class c extends u3.c {
        c() {
        }

        @Override // defpackage.u3.c
        public int a(View view, int i, int i2) {
            LayoutParams layoutParams = (LayoutParams) SlidingPaneLayout.this.e.getLayoutParams();
            if (SlidingPaneLayout.this.d()) {
                int width = SlidingPaneLayout.this.getWidth() - (SlidingPaneLayout.this.e.getWidth() + (SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin));
                return Math.max(Math.min(i, width), width - SlidingPaneLayout.this.g);
            }
            int paddingLeft = SlidingPaneLayout.this.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            return Math.min(Math.max(i, paddingLeft), SlidingPaneLayout.this.g + paddingLeft);
        }

        @Override // defpackage.u3.c
        public int b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // defpackage.u3.c
        public int d(View view) {
            return SlidingPaneLayout.this.g;
        }

        @Override // defpackage.u3.c
        public void f(int i, int i2) {
            SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
            slidingPaneLayout.k.c(slidingPaneLayout.e, i2);
        }

        @Override // defpackage.u3.c
        public void i(View view, int i) {
            SlidingPaneLayout.this.f();
        }

        @Override // defpackage.u3.c
        public void j(int i) {
            if (SlidingPaneLayout.this.k.t() == 0) {
                SlidingPaneLayout slidingPaneLayout = SlidingPaneLayout.this;
                if (slidingPaneLayout.f == 0.0f) {
                    slidingPaneLayout.h(slidingPaneLayout.e);
                    SlidingPaneLayout slidingPaneLayout2 = SlidingPaneLayout.this;
                    View view = slidingPaneLayout2.e;
                    slidingPaneLayout2.sendAccessibilityEvent(32);
                    SlidingPaneLayout.this.l = false;
                    return;
                }
                View view2 = slidingPaneLayout.e;
                slidingPaneLayout.sendAccessibilityEvent(32);
                SlidingPaneLayout.this.l = true;
            }
        }

        @Override // defpackage.u3.c
        public void k(View view, int i, int i2, int i3, int i4) {
            SlidingPaneLayout.this.e(i);
            SlidingPaneLayout.this.invalidate();
        }

        @Override // defpackage.u3.c
        public void l(View view, float f, float f2) {
            int i;
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (SlidingPaneLayout.this.d()) {
                int paddingRight = SlidingPaneLayout.this.getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                if (f < 0.0f || (f == 0.0f && SlidingPaneLayout.this.f > 0.5f)) {
                    paddingRight += SlidingPaneLayout.this.g;
                }
                i = (SlidingPaneLayout.this.getWidth() - paddingRight) - SlidingPaneLayout.this.e.getWidth();
            } else {
                i = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + SlidingPaneLayout.this.getPaddingLeft();
                if (f > 0.0f || (f == 0.0f && SlidingPaneLayout.this.f > 0.5f)) {
                    i += SlidingPaneLayout.this.g;
                }
            }
            SlidingPaneLayout.this.k.F(i, view.getTop());
            SlidingPaneLayout.this.invalidate();
        }

        @Override // defpackage.u3.c
        public boolean m(View view, int i) {
            if (SlidingPaneLayout.this.h) {
                return false;
            }
            return ((LayoutParams) view.getLayoutParams()).b;
        }
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private boolean a(int i2) {
        if (!this.m && !g(0.0f)) {
            return false;
        }
        this.l = false;
        return true;
    }

    private void b(View view, float f2, int i2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (f2 > 0.0f && i2 != 0) {
            int i3 = (((int) (((float) ((-16777216 & i2) >>> 24)) * f2)) << 24) | (i2 & 16777215);
            if (layoutParams.d == null) {
                layoutParams.d = new Paint();
            }
            layoutParams.d.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_OVER));
            if (view.getLayerType() != 2) {
                view.setLayerType(2, layoutParams.d);
            }
            Paint paint = ((LayoutParams) view.getLayoutParams()).d;
            int i4 = c3.g;
            view.setLayerPaint(paint);
        } else if (view.getLayerType() != 0) {
            Paint paint2 = layoutParams.d;
            if (paint2 != null) {
                paint2.setColorFilter(null);
            }
            b bVar = new b(view);
            this.o.add(bVar);
            int i5 = c3.g;
            postOnAnimation(bVar);
        }
    }

    /* access modifiers changed from: package-private */
    public boolean c(View view) {
        if (view == null) {
            return false;
        }
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        if (!this.d || !layoutParams.c || this.f <= 0.0f) {
            return false;
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof LayoutParams) && super.checkLayoutParams(layoutParams);
    }

    public void computeScroll() {
        if (!this.k.k(true)) {
            return;
        }
        if (!this.d) {
            this.k.a();
            return;
        }
        int i2 = c3.g;
        postInvalidateOnAnimation();
    }

    /* access modifiers changed from: package-private */
    public boolean d() {
        int i2 = c3.g;
        return getLayoutDirection() == 1;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        d();
        if (getChildCount() > 1) {
            getChildAt(1);
        }
    }

    /* access modifiers changed from: protected */
    public boolean drawChild(Canvas canvas, View view, long j2) {
        LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
        int save = canvas.save();
        if (this.d && !layoutParams.b && this.e != null) {
            canvas.getClipBounds(this.n);
            if (d()) {
                Rect rect = this.n;
                rect.left = Math.max(rect.left, this.e.getRight());
            } else {
                Rect rect2 = this.n;
                rect2.right = Math.min(rect2.right, this.e.getLeft());
            }
            canvas.clipRect(this.n);
        }
        boolean drawChild = super.drawChild(canvas, view, j2);
        canvas.restoreToCount(save);
        return drawChild;
    }

    /* access modifiers changed from: package-private */
    public void e(int i2) {
        if (this.e == null) {
            this.f = 0.0f;
            return;
        }
        boolean d2 = d();
        LayoutParams layoutParams = (LayoutParams) this.e.getLayoutParams();
        int width = this.e.getWidth();
        if (d2) {
            i2 = (getWidth() - i2) - width;
        }
        float paddingRight = ((float) (i2 - ((d2 ? getPaddingRight() : getPaddingLeft()) + (d2 ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin)))) / ((float) this.g);
        this.f = paddingRight;
        if (layoutParams.c) {
            b(this.e, paddingRight, this.b);
        }
    }

    /* access modifiers changed from: package-private */
    public void f() {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() == 4) {
                childAt.setVisibility(0);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public boolean g(float f2) {
        int i2;
        if (!this.d) {
            return false;
        }
        boolean d2 = d();
        LayoutParams layoutParams = (LayoutParams) this.e.getLayoutParams();
        if (d2) {
            int paddingRight = getPaddingRight() + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            int width = this.e.getWidth();
            i2 = (int) (((float) getWidth()) - (((f2 * ((float) this.g)) + ((float) paddingRight)) + ((float) width)));
        } else {
            i2 = (int) ((f2 * ((float) this.g)) + ((float) (getPaddingLeft() + ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin)));
        }
        u3 u3Var = this.k;
        View view = this.e;
        if (!u3Var.H(view, i2, view.getTop())) {
            return false;
        }
        f();
        int i3 = c3.g;
        postInvalidateOnAnimation();
        return true;
    }

    /* access modifiers changed from: protected */
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams();
    }

    /* access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof ViewGroup.MarginLayoutParams ? new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams) : new LayoutParams(layoutParams);
    }

    /* access modifiers changed from: package-private */
    public void h(View view) {
        int i2;
        int i3;
        int i4;
        int i5;
        View childAt;
        boolean z;
        View view2 = view;
        boolean d2 = d();
        int width = d2 ? getWidth() - getPaddingRight() : getPaddingLeft();
        int paddingLeft = d2 ? getPaddingLeft() : getWidth() - getPaddingRight();
        int paddingTop = getPaddingTop();
        int height = getHeight() - getPaddingBottom();
        if (view2 == null || !view.isOpaque()) {
            i5 = 0;
            i4 = 0;
            i3 = 0;
            i2 = 0;
        } else {
            i5 = view.getLeft();
            i4 = view.getRight();
            i3 = view.getTop();
            i2 = view.getBottom();
        }
        int childCount = getChildCount();
        int i6 = 0;
        while (i6 < childCount && (childAt = getChildAt(i6)) != view2) {
            if (childAt.getVisibility() == 8) {
                z = d2;
            } else {
                z = d2;
                childAt.setVisibility((Math.max(d2 ? paddingLeft : width, childAt.getLeft()) < i5 || Math.max(paddingTop, childAt.getTop()) < i3 || Math.min(d2 ? width : paddingLeft, childAt.getRight()) > i4 || Math.min(height, childAt.getBottom()) > i2) ? 0 : 4);
            }
            i6++;
            view2 = view;
            d2 = z;
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.m = true;
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.m = true;
        int size = this.o.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.o.get(i2).run();
        }
        this.o.clear();
    }

    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        View childAt;
        int actionMasked = motionEvent.getActionMasked();
        if (!this.d && actionMasked == 0 && getChildCount() > 1 && (childAt = getChildAt(1)) != null) {
            this.l = !this.k.w(childAt, (int) motionEvent.getX(), (int) motionEvent.getY());
        }
        if (!this.d || (this.h && actionMasked != 0)) {
            this.k.b();
            return super.onInterceptTouchEvent(motionEvent);
        } else if (actionMasked == 3 || actionMasked == 1) {
            this.k.b();
            return false;
        } else {
            if (actionMasked == 0) {
                this.h = false;
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                this.i = x;
                this.j = y;
                if (this.k.w(this.e, (int) x, (int) y) && c(this.e)) {
                    z = true;
                    if (this.k.G(motionEvent) && !z) {
                        return false;
                    }
                }
            } else if (actionMasked == 2) {
                float x2 = motionEvent.getX();
                float y2 = motionEvent.getY();
                float abs = Math.abs(x2 - this.i);
                float abs2 = Math.abs(y2 - this.j);
                if (abs > ((float) this.k.s()) && abs2 > abs) {
                    this.k.b();
                    this.h = true;
                    return false;
                }
            }
            z = false;
            return this.k.G(motionEvent) ? true : true;
        }
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        int i8;
        boolean d2 = d();
        if (d2) {
            this.k.D(2);
        } else {
            this.k.D(1);
        }
        int i9 = i4 - i2;
        int paddingRight = d2 ? getPaddingRight() : getPaddingLeft();
        int paddingLeft = d2 ? getPaddingLeft() : getPaddingRight();
        int paddingTop = getPaddingTop();
        int childCount = getChildCount();
        if (this.m) {
            this.f = (!this.d || !this.l) ? 0.0f : 1.0f;
        }
        int i10 = paddingRight;
        for (int i11 = 0; i11 < childCount; i11++) {
            View childAt = getChildAt(i11);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                if (layoutParams.b) {
                    int i12 = i9 - paddingLeft;
                    int min = (Math.min(paddingRight, i12 - this.c) - i10) - (((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin);
                    this.g = min;
                    int i13 = d2 ? ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                    layoutParams.c = (measuredWidth / 2) + ((i10 + i13) + min) > i12;
                    int i14 = (int) (((float) min) * this.f);
                    i6 = i13 + i14 + i10;
                    this.f = ((float) i14) / ((float) min);
                } else {
                    boolean z2 = this.d;
                    i6 = paddingRight;
                }
                if (d2) {
                    i8 = (i9 - i6) + 0;
                    i7 = i8 - measuredWidth;
                } else {
                    i7 = i6 + 0;
                    i8 = i7 + measuredWidth;
                }
                childAt.layout(i7, paddingTop, i8, childAt.getMeasuredHeight() + paddingTop);
                paddingRight = childAt.getWidth() + paddingRight;
                i10 = i6;
            }
        }
        if (this.m) {
            if (!this.d) {
                for (int i15 = 0; i15 < childCount; i15++) {
                    b(getChildAt(i15), 0.0f, this.b);
                }
            } else if (((LayoutParams) this.e.getLayoutParams()).c) {
                b(this.e, this.f, this.b);
            }
            h(this.e);
        }
        this.m = false;
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        float f2;
        int i12;
        int i13;
        int i14;
        int i15;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        if (mode != 1073741824) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Width must have an exact value or MATCH_PARENT");
            } else if (mode != Integer.MIN_VALUE && mode == 0) {
                size = HttpStatus.SC_MULTIPLE_CHOICES;
            }
        } else if (mode2 == 0) {
            if (!isInEditMode()) {
                throw new IllegalStateException("Height must not be UNSPECIFIED");
            } else if (mode2 == 0) {
                mode2 = RecyclerView.UNDEFINED_DURATION;
                size2 = HttpStatus.SC_MULTIPLE_CHOICES;
            }
        }
        boolean z = false;
        if (mode2 == Integer.MIN_VALUE) {
            i4 = (size2 - getPaddingTop()) - getPaddingBottom();
            i5 = 0;
        } else if (mode2 != 1073741824) {
            i5 = 0;
            i4 = 0;
        } else {
            i5 = (size2 - getPaddingTop()) - getPaddingBottom();
            i4 = i5;
        }
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int childCount = getChildCount();
        if (childCount > 2) {
            Log.e("SlidingPaneLayout", "onMeasure: More than two child views are not supported.");
        }
        this.e = null;
        int i16 = paddingLeft;
        int i17 = 0;
        boolean z2 = false;
        float f3 = 0.0f;
        while (true) {
            i6 = 8;
            if (i17 >= childCount) {
                break;
            }
            View childAt = getChildAt(i17);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            if (childAt.getVisibility() == 8) {
                layoutParams.c = z;
            } else {
                float f4 = layoutParams.a;
                if (f4 > 0.0f) {
                    f3 += f4;
                    if (((ViewGroup.MarginLayoutParams) layoutParams).width == 0) {
                    }
                }
                int i18 = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                int i19 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                if (i19 == -2) {
                    i12 = View.MeasureSpec.makeMeasureSpec(paddingLeft - i18, RecyclerView.UNDEFINED_DURATION);
                    f2 = f3;
                    i13 = RecyclerView.UNDEFINED_DURATION;
                } else {
                    f2 = f3;
                    i13 = RecyclerView.UNDEFINED_DURATION;
                    if (i19 == -1) {
                        i12 = View.MeasureSpec.makeMeasureSpec(paddingLeft - i18, 1073741824);
                    } else {
                        i12 = View.MeasureSpec.makeMeasureSpec(i19, 1073741824);
                    }
                }
                int i20 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                if (i20 == -2) {
                    i14 = View.MeasureSpec.makeMeasureSpec(i4, i13);
                } else {
                    if (i20 == -1) {
                        i15 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                    } else {
                        i15 = View.MeasureSpec.makeMeasureSpec(i20, 1073741824);
                    }
                    i14 = i15;
                }
                childAt.measure(i12, i14);
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                if (mode2 == i13 && measuredHeight > i5) {
                    i5 = Math.min(measuredHeight, i4);
                }
                i16 -= measuredWidth;
                boolean z3 = i16 < 0;
                layoutParams.b = z3;
                z2 |= z3;
                if (z3) {
                    this.e = childAt;
                }
                f3 = f2;
            }
            i17++;
            z = false;
        }
        if (z2 || f3 > 0.0f) {
            int i21 = paddingLeft - this.c;
            int i22 = 0;
            while (i22 < childCount) {
                View childAt2 = getChildAt(i22);
                if (childAt2.getVisibility() != i6) {
                    LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                    if (childAt2.getVisibility() != i6) {
                        boolean z4 = ((ViewGroup.MarginLayoutParams) layoutParams2).width == 0 && layoutParams2.a > 0.0f;
                        if (z4) {
                            i8 = 0;
                        } else {
                            i8 = childAt2.getMeasuredWidth();
                        }
                        if (!z2 || childAt2 == this.e) {
                            if (layoutParams2.a > 0.0f) {
                                if (((ViewGroup.MarginLayoutParams) layoutParams2).width == 0) {
                                    int i23 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                    if (i23 == -2) {
                                        i9 = View.MeasureSpec.makeMeasureSpec(i4, RecyclerView.UNDEFINED_DURATION);
                                    } else if (i23 == -1) {
                                        i9 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                                    } else {
                                        i9 = View.MeasureSpec.makeMeasureSpec(i23, 1073741824);
                                    }
                                } else {
                                    i9 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                                }
                                if (z2) {
                                    int i24 = paddingLeft - (((ViewGroup.MarginLayoutParams) layoutParams2).leftMargin + ((ViewGroup.MarginLayoutParams) layoutParams2).rightMargin);
                                    i7 = i21;
                                    int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i24, 1073741824);
                                    if (i8 != i24) {
                                        childAt2.measure(makeMeasureSpec, i9);
                                    }
                                    i22++;
                                    i21 = i7;
                                    i6 = 8;
                                } else {
                                    i7 = i21;
                                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(i8 + ((int) ((layoutParams2.a * ((float) Math.max(0, i16))) / f3)), 1073741824), i9);
                                    i22++;
                                    i21 = i7;
                                    i6 = 8;
                                }
                            }
                        } else if (((ViewGroup.MarginLayoutParams) layoutParams2).width < 0 && (i8 > i21 || layoutParams2.a > 0.0f)) {
                            if (z4) {
                                int i25 = ((ViewGroup.MarginLayoutParams) layoutParams2).height;
                                if (i25 == -2) {
                                    i11 = View.MeasureSpec.makeMeasureSpec(i4, RecyclerView.UNDEFINED_DURATION);
                                    i10 = 1073741824;
                                } else if (i25 == -1) {
                                    i10 = 1073741824;
                                    i11 = View.MeasureSpec.makeMeasureSpec(i4, 1073741824);
                                } else {
                                    i10 = 1073741824;
                                    i11 = View.MeasureSpec.makeMeasureSpec(i25, 1073741824);
                                }
                            } else {
                                i10 = 1073741824;
                                i11 = View.MeasureSpec.makeMeasureSpec(childAt2.getMeasuredHeight(), 1073741824);
                            }
                            childAt2.measure(View.MeasureSpec.makeMeasureSpec(i21, i10), i11);
                        }
                    }
                }
                i7 = i21;
                i22++;
                i21 = i7;
                i6 = 8;
            }
        }
        setMeasuredDimension(size, getPaddingBottom() + getPaddingTop() + i5);
        this.d = z2;
        if (this.k.t() != 0 && !z2) {
            this.k.a();
        }
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        if (!savedState.d) {
            a(0);
        } else if (this.m || g(1.0f)) {
            this.l = true;
        }
        this.l = savedState.d;
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        boolean z;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        boolean z2 = this.d;
        if (z2) {
            z = !z2 || this.f == 1.0f;
        } else {
            z = this.l;
        }
        savedState.d = z;
        return savedState;
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        if (i2 != i4) {
            this.m = true;
        }
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.d) {
            return super.onTouchEvent(motionEvent);
        }
        this.k.x(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            this.i = x;
            this.j = y;
        } else if (actionMasked == 1 && c(this.e)) {
            float x2 = motionEvent.getX();
            float y2 = motionEvent.getY();
            float f2 = x2 - this.i;
            float f3 = y2 - this.j;
            int s = this.k.s();
            if ((f3 * f3) + (f2 * f2) < ((float) (s * s)) && this.k.w(this.e, (int) x2, (int) y2)) {
                a(0);
            }
        }
        return true;
    }

    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (!isInTouchMode() && !this.d) {
            this.l = view == this.e;
        }
    }

    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        private static final int[] e = {16843137};
        public float a = 0.0f;
        boolean b;
        boolean c;
        Paint d;

        public LayoutParams() {
            super(-1, -1);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e);
            this.a = obtainStyledAttributes.getFloat(0, 0.0f);
            obtainStyledAttributes.recycle();
        }
    }

    public SlidingPaneLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.b = -858993460;
        this.m = true;
        this.n = new Rect();
        this.o = new ArrayList<>();
        float f2 = context.getResources().getDisplayMetrics().density;
        this.c = (int) ((32.0f * f2) + 0.5f);
        setWillNotDraw(false);
        c3.u(this, new a());
        setImportantForAccessibility(1);
        u3 l2 = u3.l(this, 0.5f, new c());
        this.k = l2;
        l2.E(f2 * 400.0f);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }
}
