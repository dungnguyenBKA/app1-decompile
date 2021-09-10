package com.google.android.material.appbar;

import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

@CoordinatorLayout.c(Behavior.class)
public class AppBarLayout extends LinearLayout {
    private int b;
    private int c;
    private int d;
    private int e;
    private boolean f;
    private int g;
    private l3 h;
    private List<b> i;
    private boolean j;
    private boolean k;
    private boolean l;
    private int m;
    private WeakReference<View> n;
    private ValueAnimator o;
    private int[] p;
    private Drawable q;

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends HeaderScrollingViewBehavior {
        public ScrollingViewBehavior() {
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        public float G(View view) {
            int i;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int h = appBarLayout.h();
                int c = appBarLayout.c();
                CoordinatorLayout.Behavior c2 = ((CoordinatorLayout.e) appBarLayout.getLayoutParams()).c();
                int H = c2 instanceof BaseBehavior ? ((BaseBehavior) c2).H() : 0;
                if ((c == 0 || h + H > c) && (i = h - c) != 0) {
                    return (((float) H) / ((float) i)) + 1.0f;
                }
            }
            return 0.0f;
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderScrollingViewBehavior
        public int I(View view) {
            if (view instanceof AppBarLayout) {
                return ((AppBarLayout) view).h();
            }
            return view.getMeasuredHeight();
        }

        /* access modifiers changed from: package-private */
        /* renamed from: L */
        public AppBarLayout E(List<View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = list.get(i);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean g(CoordinatorLayout coordinatorLayout, View view, View view2) {
            CoordinatorLayout.Behavior c = ((CoordinatorLayout.e) view2.getLayoutParams()).c();
            if (c instanceof BaseBehavior) {
                c3.o(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) c).j) + J()) - F(view2));
            }
            if (!(view2 instanceof AppBarLayout)) {
                return false;
            }
            AppBarLayout appBarLayout = (AppBarLayout) view2;
            if (!appBarLayout.j()) {
                return false;
            }
            appBarLayout.q(appBarLayout.r(view));
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean t(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z) {
            AppBarLayout L = E(coordinatorLayout.t(view));
            if (L != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.c;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    L.o(false, !z);
                    return true;
                }
            }
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.C);
            K(obtainStyledAttributes.getDimensionPixelSize(0, 0));
            obtainStyledAttributes.recycle();
        }
    }

    class a implements y2 {
        a() {
        }

        @Override // defpackage.y2
        public l3 a(View view, l3 l3Var) {
            AppBarLayout.this.l(l3Var);
            return l3Var;
        }
    }

    public interface b<T extends AppBarLayout> {
        void a(T t, int i);
    }

    public interface c extends b<AppBarLayout> {
    }

    public AppBarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.aj);
    }

    private void p(boolean z, boolean z2, boolean z3) {
        int i2 = 0;
        int i3 = (z ? 1 : 2) | (z2 ? 4 : 0);
        if (z3) {
            i2 = 8;
        }
        this.g = i3 | i2;
        requestLayout();
    }

    private boolean s() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        if (childAt.getVisibility() == 8) {
            return false;
        }
        int i2 = c3.g;
        if (!childAt.getFitsSystemWindows()) {
            return true;
        }
        return false;
    }

    private void t() {
        setWillNotDraw(!(this.q != null && g() > 0));
    }

    public void a(c cVar) {
        if (this.i == null) {
            this.i = new ArrayList();
        }
        if (cVar != null && !this.i.contains(cVar)) {
            this.i.add(cVar);
        }
    }

    /* access modifiers changed from: protected */
    /* renamed from: b */
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if (layoutParams instanceof LinearLayout.LayoutParams) {
            return new LayoutParams((LinearLayout.LayoutParams) layoutParams);
        }
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            return new LayoutParams((ViewGroup.MarginLayoutParams) layoutParams);
        }
        return new LayoutParams(layoutParams);
    }

    /* access modifiers changed from: package-private */
    public int c() {
        int i2;
        int i3 = this.d;
        if (i3 != -1) {
            return i3;
        }
        int i4 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = layoutParams.a;
            if ((i5 & 5) == 5) {
                int i6 = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                if ((i5 & 8) != 0) {
                    int i7 = c3.g;
                    i2 = i6 + childAt.getMinimumHeight();
                } else if ((i5 & 2) != 0) {
                    int i8 = c3.g;
                    i2 = i6 + (measuredHeight - childAt.getMinimumHeight());
                } else {
                    i2 = i6 + measuredHeight;
                }
                if (childCount == 0) {
                    int i9 = c3.g;
                    if (childAt.getFitsSystemWindows()) {
                        i2 = Math.min(i2, measuredHeight - g());
                    }
                }
                i4 += i2;
            } else if (i4 > 0) {
                break;
            }
        }
        int max = Math.max(0, i4);
        this.d = max;
        return max;
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    /* access modifiers changed from: package-private */
    public int d() {
        int i2 = this.e;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + childAt.getMeasuredHeight();
            int i5 = layoutParams.a;
            if ((i5 & 1) == 0) {
                break;
            }
            i4 += measuredHeight;
            if ((i5 & 2) != 0) {
                int i6 = c3.g;
                i4 -= childAt.getMinimumHeight();
                break;
            }
            i3++;
        }
        int max = Math.max(0, i4);
        this.e = max;
        return max;
    }

    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.q != null && g() > 0) {
            int save = canvas.save();
            canvas.translate(0.0f, (float) (-this.b));
            this.q.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.q;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    public final int e() {
        int g2 = g();
        int i2 = c3.g;
        int minimumHeight = getMinimumHeight();
        if (minimumHeight == 0) {
            int childCount = getChildCount();
            minimumHeight = childCount >= 1 ? getChildAt(childCount - 1).getMinimumHeight() : 0;
            if (minimumHeight == 0) {
                return getHeight() / 3;
            }
        }
        return (minimumHeight * 2) + g2;
    }

    /* access modifiers changed from: package-private */
    public int f() {
        return this.g;
    }

    /* access modifiers changed from: package-private */
    public final int g() {
        l3 l3Var = this.h;
        if (l3Var != null) {
            return l3Var.e();
        }
        return 0;
    }

    /* access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.widget.LinearLayout
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    public final int h() {
        int i2 = this.c;
        if (i2 != -1) {
            return i2;
        }
        int childCount = getChildCount();
        int i3 = 0;
        int i4 = 0;
        while (true) {
            if (i3 >= childCount) {
                break;
            }
            View childAt = getChildAt(i3);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i5 = layoutParams.a;
            if ((i5 & 1) == 0) {
                break;
            }
            int i6 = measuredHeight + ((LinearLayout.LayoutParams) layoutParams).topMargin + ((LinearLayout.LayoutParams) layoutParams).bottomMargin + i4;
            if (i3 == 0) {
                int i7 = c3.g;
                if (childAt.getFitsSystemWindows()) {
                    i6 -= g();
                }
            }
            i4 = i6;
            if ((i5 & 2) != 0) {
                int i8 = c3.g;
                i4 -= childAt.getMinimumHeight();
                break;
            }
            i3++;
        }
        int max = Math.max(0, i4);
        this.c = max;
        return max;
    }

    /* access modifiers changed from: package-private */
    public boolean i() {
        return this.f;
    }

    public boolean j() {
        return this.l;
    }

    /* access modifiers changed from: package-private */
    public void k(int i2) {
        this.b = i2;
        if (!willNotDraw()) {
            int i3 = c3.g;
            postInvalidateOnAnimation();
        }
        List<b> list = this.i;
        if (list != null) {
            int size = list.size();
            for (int i4 = 0; i4 < size; i4++) {
                b bVar = this.i.get(i4);
                if (bVar != null) {
                    bVar.a(this, i2);
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    public l3 l(l3 l3Var) {
        int i2 = c3.g;
        l3 l3Var2 = getFitsSystemWindows() ? l3Var : null;
        if (!Objects.equals(this.h, l3Var2)) {
            this.h = l3Var2;
            t();
            requestLayout();
        }
        return l3Var;
    }

    public void m(c cVar) {
        List<b> list = this.i;
        if (list != null && cVar != null) {
            list.remove(cVar);
        }
    }

    /* access modifiers changed from: package-private */
    public void n() {
        this.g = 0;
    }

    public void o(boolean z, boolean z2) {
        p(z, z2, true);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof my) {
            ny.b(this, (my) background);
        }
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i2) {
        if (this.p == null) {
            this.p = new int[4];
        }
        int[] iArr = this.p;
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + iArr.length);
        boolean z = this.j;
        iArr[0] = z ? R.attr.ri : -2130903714;
        iArr[1] = (!z || !this.k) ? -2130903715 : R.attr.rj;
        iArr[2] = z ? R.attr.rg : -2130903712;
        iArr[3] = (!z || !this.k) ? -2130903711 : R.attr.rf;
        return LinearLayout.mergeDrawableStates(onCreateDrawableState, iArr);
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WeakReference<View> weakReference = this.n;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.n = null;
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        boolean z2;
        super.onLayout(z, i2, i3, i4, i5);
        int i6 = c3.g;
        boolean z3 = true;
        if (getFitsSystemWindows() && s()) {
            int g2 = g();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                c3.o(getChildAt(childCount), g2);
            }
        }
        this.c = -1;
        this.d = -1;
        this.e = -1;
        this.f = false;
        int childCount2 = getChildCount();
        int i7 = 0;
        while (true) {
            if (i7 >= childCount2) {
                break;
            } else if (((LayoutParams) getChildAt(i7).getLayoutParams()).b != null) {
                this.f = true;
                break;
            } else {
                i7++;
            }
        }
        Drawable drawable = this.q;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), g());
        }
        if (!this.l) {
            int childCount3 = getChildCount();
            int i8 = 0;
            while (true) {
                if (i8 >= childCount3) {
                    z2 = false;
                    break;
                }
                int i9 = ((LayoutParams) getChildAt(i8).getLayoutParams()).a;
                if ((i9 & 1) == 1 && (i9 & 10) != 0) {
                    z2 = true;
                    break;
                }
                i8++;
            }
            if (!z2) {
                z3 = false;
            }
        }
        if (this.j != z3) {
            this.j = z3;
            refreshDrawableState();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i3);
        if (mode != 1073741824) {
            int i4 = c3.g;
            if (getFitsSystemWindows() && s()) {
                int measuredHeight = getMeasuredHeight();
                if (mode == Integer.MIN_VALUE) {
                    measuredHeight = androidx.core.app.b.o(getMeasuredHeight() + g(), 0, View.MeasureSpec.getSize(i3));
                } else if (mode == 0) {
                    measuredHeight += g();
                }
                setMeasuredDimension(getMeasuredWidth(), measuredHeight);
            }
        }
        this.c = -1;
        this.d = -1;
        this.e = -1;
    }

    /* access modifiers changed from: package-private */
    public boolean q(boolean z) {
        if (this.k == z) {
            return false;
        }
        this.k = z;
        refreshDrawableState();
        if (this.l && (getBackground() instanceof my)) {
            my myVar = (my) getBackground();
            float dimension = getResources().getDimension(R.dimen.mk);
            float f2 = z ? 0.0f : dimension;
            if (!z) {
                dimension = 0.0f;
            }
            ValueAnimator valueAnimator = this.o;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            ValueAnimator ofFloat = ValueAnimator.ofFloat(f2, dimension);
            this.o = ofFloat;
            ofFloat.setDuration((long) getResources().getInteger(R.integer.c));
            this.o.setInterpolator(jx.a);
            this.o.addUpdateListener(new a(this, myVar));
            this.o.start();
        }
        return true;
    }

    /* access modifiers changed from: package-private */
    public boolean r(View view) {
        int i2;
        View view2 = null;
        if (this.n == null && (i2 = this.m) != -1) {
            View findViewById = view != null ? view.findViewById(i2) : null;
            if (findViewById == null && (getParent() instanceof ViewGroup)) {
                findViewById = ((ViewGroup) getParent()).findViewById(this.m);
            }
            if (findViewById != null) {
                this.n = new WeakReference<>(findViewById);
            }
        }
        WeakReference<View> weakReference = this.n;
        if (weakReference != null) {
            view2 = weakReference.get();
        }
        if (view2 != null) {
            view = view2;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    public void setElevation(float f2) {
        super.setElevation(f2);
        Drawable background = getBackground();
        if (background instanceof my) {
            ((my) background).E(f2);
        }
    }

    public void setOrientation(int i2) {
        if (i2 == 1) {
            super.setOrientation(i2);
            return;
        }
        throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.q;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.q;
    }

    protected static class BaseBehavior<T extends AppBarLayout> extends HeaderBehavior<T> {
        private int j;
        private int k;
        private ValueAnimator l;
        private int m = -1;
        private boolean n;
        private float o;
        private WeakReference<View> p;

        public BaseBehavior() {
        }

        private void N(CoordinatorLayout coordinatorLayout, T t, int i, float f) {
            int i2;
            int abs = Math.abs(H() - i);
            float abs2 = Math.abs(f);
            if (abs2 > 0.0f) {
                i2 = Math.round((((float) abs) / abs2) * 1000.0f) * 3;
            } else {
                i2 = (int) (((((float) abs) / ((float) t.getHeight())) + 1.0f) * 150.0f);
            }
            int H = H();
            if (H == i) {
                ValueAnimator valueAnimator = this.l;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.l.cancel();
                    return;
                }
                return;
            }
            ValueAnimator valueAnimator2 = this.l;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.l = valueAnimator3;
                valueAnimator3.setInterpolator(jx.e);
                this.l.addUpdateListener(new b(this, coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.l.setDuration((long) Math.min(i2, 600));
            this.l.setIntValues(H, i);
            this.l.start();
        }

        private static boolean O(int i, int i2) {
            return (i & i2) == i2;
        }

        private View P(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = coordinatorLayout.getChildAt(i);
                if ((childAt instanceof s2) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        private void Y(CoordinatorLayout coordinatorLayout, T t) {
            int H = H();
            int childCount = t.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    i = -1;
                    break;
                }
                View childAt = t.getChildAt(i);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                if (O(layoutParams.a, 32)) {
                    top -= ((LinearLayout.LayoutParams) layoutParams).topMargin;
                    bottom += ((LinearLayout.LayoutParams) layoutParams).bottomMargin;
                }
                int i2 = -H;
                if (top <= i2 && bottom >= i2) {
                    break;
                }
                i++;
            }
            if (i >= 0) {
                View childAt2 = t.getChildAt(i);
                LayoutParams layoutParams2 = (LayoutParams) childAt2.getLayoutParams();
                int i3 = layoutParams2.a;
                if ((i3 & 17) == 17) {
                    int i4 = -childAt2.getTop();
                    int i5 = -childAt2.getBottom();
                    if (i == t.getChildCount() - 1) {
                        i5 += t.g();
                    }
                    if (O(i3, 2)) {
                        int i6 = c3.g;
                        i5 += childAt2.getMinimumHeight();
                    } else if (O(i3, 5)) {
                        int i7 = c3.g;
                        int minimumHeight = childAt2.getMinimumHeight() + i5;
                        if (H < minimumHeight) {
                            i4 = minimumHeight;
                        } else {
                            i5 = minimumHeight;
                        }
                    }
                    if (O(i3, 32)) {
                        i4 += ((LinearLayout.LayoutParams) layoutParams2).topMargin;
                        i5 -= ((LinearLayout.LayoutParams) layoutParams2).bottomMargin;
                    }
                    if (H < (i5 + i4) / 2) {
                        i4 = i5;
                    }
                    N(coordinatorLayout, t, androidx.core.app.b.o(i4, -t.h(), 0), 0.0f);
                }
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:25:0x0064  */
        /* JADX WARNING: Removed duplicated region for block: B:28:0x0072  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        private void Z(androidx.coordinatorlayout.widget.CoordinatorLayout r7, T r8, int r9, int r10, boolean r11) {
            /*
            // Method dump skipped, instructions count: 166
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.Z(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        public boolean E(View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            WeakReference<View> weakReference = this.p;
            if (weakReference == null) {
                return true;
            }
            View view2 = weakReference.get();
            if (view2 == null || !view2.isShown() || view2.canScrollVertically(-1)) {
                return false;
            }
            return true;
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        public int F(View view) {
            return -((AppBarLayout) view).d();
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        public int G(View view) {
            return ((AppBarLayout) view).h();
        }

        /* access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        public int H() {
            return B() + this.j;
        }

        /* JADX DEBUG: Multi-variable search result rejected for r1v0, resolved type: com.google.android.material.appbar.AppBarLayout$BaseBehavior<T extends com.google.android.material.appbar.AppBarLayout> */
        /* JADX WARN: Multi-variable type inference failed */
        /* access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.HeaderBehavior
        public void I(CoordinatorLayout coordinatorLayout, View view) {
            AppBarLayout appBarLayout = (AppBarLayout) view;
            Y(coordinatorLayout, appBarLayout);
            if (appBarLayout.j()) {
                appBarLayout.q(appBarLayout.r(P(coordinatorLayout)));
            }
        }

        /* JADX DEBUG: Multi-variable search result rejected for r7v0, resolved type: com.google.android.material.appbar.AppBarLayout$BaseBehavior<T extends com.google.android.material.appbar.AppBarLayout> */
        /* JADX WARN: Multi-variable type inference failed */
        /* access modifiers changed from: package-private */
        /* JADX WARNING: Removed duplicated region for block: B:34:0x00aa  */
        /* JADX WARNING: Removed duplicated region for block: B:35:0x00ad  */
        @Override // com.google.android.material.appbar.HeaderBehavior
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public int L(androidx.coordinatorlayout.widget.CoordinatorLayout r8, android.view.View r9, int r10, int r11, int r12) {
            /*
            // Method dump skipped, instructions count: 186
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.L(androidx.coordinatorlayout.widget.CoordinatorLayout, android.view.View, int, int, int):int");
        }

        /* renamed from: Q */
        public boolean k(CoordinatorLayout coordinatorLayout, T t, int i) {
            int i2;
            super.k(coordinatorLayout, t, i);
            int f = t.f();
            int i3 = this.m;
            if (i3 >= 0 && (f & 8) == 0) {
                View childAt = t.getChildAt(i3);
                int i4 = -childAt.getBottom();
                if (this.n) {
                    i2 = childAt.getMinimumHeight() + t.g();
                } else {
                    i2 = Math.round(((float) childAt.getHeight()) * this.o);
                }
                K(coordinatorLayout, t, i2 + i4);
            } else if (f != 0) {
                boolean z = (f & 4) != 0;
                if ((f & 2) != 0) {
                    int i5 = -t.h();
                    if (z) {
                        N(coordinatorLayout, t, i5, 0.0f);
                    } else {
                        K(coordinatorLayout, t, i5);
                    }
                } else if ((f & 1) != 0) {
                    if (z) {
                        N(coordinatorLayout, t, 0, 0.0f);
                    } else {
                        K(coordinatorLayout, t, 0);
                    }
                }
            }
            t.n();
            this.m = -1;
            D(androidx.core.app.b.o(B(), -t.h(), 0));
            Z(coordinatorLayout, t, B(), 0, true);
            t.k(B());
            return true;
        }

        /* renamed from: R */
        public boolean l(CoordinatorLayout coordinatorLayout, T t, int i, int i2, int i3, int i4) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.e) t.getLayoutParams())).height != -2) {
                return false;
            }
            coordinatorLayout.C(t, i, i2, View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        /* renamed from: S */
        public void p(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int[] iArr, int i3) {
            int i4;
            int i5;
            if (i2 != 0) {
                if (i2 < 0) {
                    int i6 = -t.h();
                    i5 = i6;
                    i4 = t.c() + i6;
                } else {
                    i5 = -t.h();
                    i4 = 0;
                }
                if (i5 != i4) {
                    iArr[1] = J(coordinatorLayout, t, i2, i5, i4);
                }
            }
            if (t.j()) {
                t.q(t.r(view));
            }
        }

        /* renamed from: T */
        public void r(CoordinatorLayout coordinatorLayout, T t, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
            if (i4 < 0) {
                iArr[1] = J(coordinatorLayout, t, i4, -t.d(), 0);
            }
        }

        /* renamed from: U */
        public void u(CoordinatorLayout coordinatorLayout, T t, Parcelable parcelable) {
            if (parcelable instanceof SavedState) {
                SavedState savedState = (SavedState) parcelable;
                savedState.a();
                this.m = savedState.d;
                this.o = savedState.e;
                this.n = savedState.f;
                return;
            }
            this.m = -1;
        }

        /* renamed from: V */
        public Parcelable v(CoordinatorLayout coordinatorLayout, T t) {
            AbsSavedState absSavedState = View.BaseSavedState.EMPTY_STATE;
            int B = B();
            int childCount = t.getChildCount();
            boolean z = false;
            for (int i = 0; i < childCount; i++) {
                View childAt = t.getChildAt(i);
                int bottom = childAt.getBottom() + B;
                if (childAt.getTop() + B <= 0 && bottom >= 0) {
                    SavedState savedState = new SavedState(absSavedState);
                    savedState.d = i;
                    int i2 = c3.g;
                    if (bottom == childAt.getMinimumHeight() + t.g()) {
                        z = true;
                    }
                    savedState.f = z;
                    savedState.e = ((float) bottom) / ((float) childAt.getHeight());
                    return savedState;
                }
            }
            return absSavedState;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:13:0x0029, code lost:
            if (((r3.h() != 0) && r2.getHeight() - r4.getHeight() <= r3.getHeight()) != false) goto L_0x002d;
         */
        /* renamed from: W */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean x(androidx.coordinatorlayout.widget.CoordinatorLayout r2, T r3, android.view.View r4, android.view.View r5, int r6, int r7) {
            /*
                r1 = this;
                r5 = r6 & 2
                r6 = 1
                r0 = 0
                if (r5 == 0) goto L_0x002c
                boolean r5 = r3.j()
                if (r5 != 0) goto L_0x002d
                int r5 = r3.h()
                if (r5 == 0) goto L_0x0014
                r5 = 1
                goto L_0x0015
            L_0x0014:
                r5 = 0
            L_0x0015:
                if (r5 == 0) goto L_0x0028
                int r2 = r2.getHeight()
                int r4 = r4.getHeight()
                int r2 = r2 - r4
                int r3 = r3.getHeight()
                if (r2 > r3) goto L_0x0028
                r2 = 1
                goto L_0x0029
            L_0x0028:
                r2 = 0
            L_0x0029:
                if (r2 == 0) goto L_0x002c
                goto L_0x002d
            L_0x002c:
                r6 = 0
            L_0x002d:
                if (r6 == 0) goto L_0x0036
                android.animation.ValueAnimator r2 = r1.l
                if (r2 == 0) goto L_0x0036
                r2.cancel()
            L_0x0036:
                r2 = 0
                r1.p = r2
                r1.k = r7
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.x(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, android.view.View, android.view.View, int, int):boolean");
        }

        /* renamed from: X */
        public void z(CoordinatorLayout coordinatorLayout, T t, View view, int i) {
            if (this.k == 0 || i == 1) {
                Y(coordinatorLayout, t);
                if (t.j()) {
                    t.q(t.r(view));
                }
            }
            this.p = new WeakReference<>(view);
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        /* access modifiers changed from: protected */
        public static class SavedState extends androidx.customview.view.AbsSavedState {
            public static final Parcelable.Creator<SavedState> CREATOR = new a();
            int d;
            float e;
            boolean f;

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
                this.e = parcel.readFloat();
                this.f = parcel.readByte() != 0;
            }

            @Override // androidx.customview.view.AbsSavedState
            public void writeToParcel(Parcel parcel, int i) {
                super.writeToParcel(parcel, i);
                parcel.writeInt(this.d);
                parcel.writeFloat(this.e);
                parcel.writeByte(this.f ? (byte) 1 : 0);
            }

            public SavedState(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    public AppBarLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.c = -1;
        this.d = -1;
        this.e = -1;
        this.g = 0;
        boolean z = true;
        setOrientation(1);
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 21) {
            setOutlineProvider(ViewOutlineProvider.BOUNDS);
            e.a(this, attributeSet, i2, R.style.p9);
        }
        TypedArray f2 = i.f(context, attributeSet, R$styleable.a, i2, R.style.p9, new int[0]);
        Drawable drawable = f2.getDrawable(0);
        int i4 = c3.g;
        setBackground(drawable);
        if (getBackground() instanceof ColorDrawable) {
            my myVar = new my();
            myVar.F(ColorStateList.valueOf(((ColorDrawable) getBackground()).getColor()));
            myVar.A(context);
            setBackground(myVar);
        }
        if (f2.hasValue(4)) {
            p(f2.getBoolean(4, false), false, false);
        }
        if (i3 >= 21 && f2.hasValue(3)) {
            int integer = getResources().getInteger(R.integer.c);
            StateListAnimator stateListAnimator = new StateListAnimator();
            long j2 = (long) integer;
            stateListAnimator.addState(new int[]{16842766, R.attr.ri, -2130903715}, ObjectAnimator.ofFloat(this, "elevation", 0.0f).setDuration(j2));
            stateListAnimator.addState(new int[]{16842766}, ObjectAnimator.ofFloat(this, "elevation", (float) f2.getDimensionPixelSize(3, 0)).setDuration(j2));
            stateListAnimator.addState(new int[0], ObjectAnimator.ofFloat(this, "elevation", 0.0f).setDuration(0L));
            setStateListAnimator(stateListAnimator);
        }
        if (i3 >= 26) {
            if (f2.hasValue(2)) {
                setKeyboardNavigationCluster(f2.getBoolean(2, false));
            }
            if (f2.hasValue(1)) {
                setTouchscreenBlocksFocus(f2.getBoolean(1, false));
            }
        }
        this.l = f2.getBoolean(5, false);
        this.m = f2.getResourceId(6, -1);
        Drawable drawable2 = f2.getDrawable(7);
        Drawable drawable3 = this.q;
        if (drawable3 != drawable2) {
            Drawable drawable4 = null;
            if (drawable3 != null) {
                drawable3.setCallback(null);
            }
            drawable4 = drawable2 != null ? drawable2.mutate() : drawable4;
            this.q = drawable4;
            if (drawable4 != null) {
                if (drawable4.isStateful()) {
                    this.q.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.e(this.q, getLayoutDirection());
                this.q.setVisible(getVisibility() != 0 ? false : z, false);
                this.q.setCallback(this);
            }
            t();
            postInvalidateOnAnimation();
        }
        f2.recycle();
        c3.x(this, new a());
    }

    /* access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.widget.LinearLayout
    /* renamed from: generateDefaultLayoutParams  reason: collision with other method in class */
    public LinearLayout.LayoutParams m4generateDefaultLayoutParams() {
        return new LayoutParams(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.widget.LinearLayout, android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    @Override // android.widget.LinearLayout, android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: generateLayoutParams  reason: collision with other method in class */
    public LinearLayout.LayoutParams m5generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public static class LayoutParams extends LinearLayout.LayoutParams {
        int a = 1;
        Interpolator b;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.b);
            this.a = obtainStyledAttributes.getInt(0, 0);
            if (obtainStyledAttributes.hasValue(1)) {
                this.b = AnimationUtils.loadInterpolator(context, obtainStyledAttributes.getResourceId(1, 0));
            }
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public LayoutParams(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }

        public LayoutParams(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }
}
