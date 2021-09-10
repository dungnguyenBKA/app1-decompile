package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.internal.i;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class CollapsingToolbarLayout extends FrameLayout {
    private boolean b;
    private int c;
    private Toolbar d;
    private View e;
    private View f;
    private int g;
    private int h;
    private int i;
    private int j;
    private final Rect k;
    final com.google.android.material.internal.a l;
    private boolean m;
    private boolean n;
    private Drawable o;
    Drawable p;
    private int q;
    private boolean r;
    private ValueAnimator s;
    private long t;
    private int u;
    private AppBarLayout.c v;
    int w;
    l3 x;

    class a implements y2 {
        a() {
        }

        @Override // defpackage.y2
        public l3 a(View view, l3 l3Var) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            Objects.requireNonNull(collapsingToolbarLayout);
            int i = c3.g;
            l3 l3Var2 = collapsingToolbarLayout.getFitsSystemWindows() ? l3Var : null;
            if (!Objects.equals(collapsingToolbarLayout.x, l3Var2)) {
                collapsingToolbarLayout.x = l3Var2;
                collapsingToolbarLayout.requestLayout();
            }
            return l3Var.a();
        }
    }

    private class b implements AppBarLayout.c {
        b() {
        }

        @Override // com.google.android.material.appbar.AppBarLayout.b
        public void a(AppBarLayout appBarLayout, int i) {
            CollapsingToolbarLayout collapsingToolbarLayout = CollapsingToolbarLayout.this;
            collapsingToolbarLayout.w = i;
            l3 l3Var = collapsingToolbarLayout.x;
            int e = l3Var != null ? l3Var.e() : 0;
            int childCount = CollapsingToolbarLayout.this.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = CollapsingToolbarLayout.this.getChildAt(i2);
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                d d = CollapsingToolbarLayout.d(childAt);
                int i3 = layoutParams.a;
                if (i3 == 1) {
                    d.e(androidx.core.app.b.o(-i, 0, CollapsingToolbarLayout.this.c(childAt)));
                } else if (i3 == 2) {
                    d.e(Math.round(((float) (-i)) * layoutParams.b));
                }
            }
            CollapsingToolbarLayout.this.g();
            CollapsingToolbarLayout collapsingToolbarLayout2 = CollapsingToolbarLayout.this;
            if (collapsingToolbarLayout2.p != null && e > 0) {
                int i4 = c3.g;
                collapsingToolbarLayout2.postInvalidateOnAnimation();
            }
            int height = CollapsingToolbarLayout.this.getHeight();
            CollapsingToolbarLayout collapsingToolbarLayout3 = CollapsingToolbarLayout.this;
            int i5 = c3.g;
            CollapsingToolbarLayout.this.l.E(((float) Math.abs(i)) / ((float) ((height - collapsingToolbarLayout3.getMinimumHeight()) - e)));
        }
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX DEBUG: Failed to insert an additional move for type inference into block B:46:0x0028 */
    private void a() {
        View view;
        if (this.b) {
            Toolbar toolbar = null;
            this.d = null;
            this.e = null;
            int i2 = this.c;
            if (i2 != -1) {
                Toolbar toolbar2 = (Toolbar) findViewById(i2);
                this.d = toolbar2;
                if (toolbar2 != null) {
                    ViewParent parent = toolbar2.getParent();
                    View view2 = toolbar2;
                    while (parent != this && parent != null) {
                        if (parent instanceof View) {
                            view2 = (View) parent;
                        }
                        parent = parent.getParent();
                        view2 = view2;
                    }
                    this.e = view2;
                }
            }
            if (this.d == null) {
                int childCount = getChildCount();
                int i3 = 0;
                while (true) {
                    if (i3 >= childCount) {
                        break;
                    }
                    View childAt = getChildAt(i3);
                    if (childAt instanceof Toolbar) {
                        toolbar = (Toolbar) childAt;
                        break;
                    }
                    i3++;
                }
                this.d = toolbar;
            }
            if (!this.m && (view = this.f) != null) {
                ViewParent parent2 = view.getParent();
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(this.f);
                }
            }
            if (this.m && this.d != null) {
                if (this.f == null) {
                    this.f = new View(getContext());
                }
                if (this.f.getParent() == null) {
                    this.d.addView(this.f, -1, -1);
                }
            }
            this.b = false;
        }
    }

    private static int b(View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return view.getHeight();
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        return view.getHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    static d d(View view) {
        d dVar = (d) view.getTag(R.id.tb);
        if (dVar != null) {
            return dVar;
        }
        d dVar2 = new d(view);
        view.setTag(R.id.tb, dVar2);
        return dVar2;
    }

    /* access modifiers changed from: package-private */
    public final int c(View view) {
        return ((getHeight() - d(view).b()) - view.getHeight()) - ((FrameLayout.LayoutParams) ((LayoutParams) view.getLayoutParams())).bottomMargin;
    }

    /* access modifiers changed from: protected */
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    public void draw(Canvas canvas) {
        Drawable drawable;
        super.draw(canvas);
        a();
        if (this.d == null && (drawable = this.o) != null && this.q > 0) {
            drawable.mutate().setAlpha(this.q);
            this.o.draw(canvas);
        }
        if (this.m && this.n) {
            this.l.f(canvas);
        }
        if (this.p != null && this.q > 0) {
            l3 l3Var = this.x;
            int e2 = l3Var != null ? l3Var.e() : 0;
            if (e2 > 0) {
                this.p.setBounds(0, -this.w, getWidth(), e2 - this.w);
                this.p.mutate().setAlpha(this.q);
                this.p.draw(canvas);
            }
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0018, code lost:
        r3 = true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean drawChild(android.graphics.Canvas r5, android.view.View r6, long r7) {
        /*
            r4 = this;
            android.graphics.drawable.Drawable r0 = r4.o
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L_0x002d
            int r3 = r4.q
            if (r3 <= 0) goto L_0x002d
            android.view.View r3 = r4.e
            if (r3 == 0) goto L_0x0014
            if (r3 != r4) goto L_0x0011
            goto L_0x0014
        L_0x0011:
            if (r6 != r3) goto L_0x001a
            goto L_0x0018
        L_0x0014:
            androidx.appcompat.widget.Toolbar r3 = r4.d
            if (r6 != r3) goto L_0x001a
        L_0x0018:
            r3 = 1
            goto L_0x001b
        L_0x001a:
            r3 = 0
        L_0x001b:
            if (r3 == 0) goto L_0x002d
            android.graphics.drawable.Drawable r0 = r0.mutate()
            int r3 = r4.q
            r0.setAlpha(r3)
            android.graphics.drawable.Drawable r0 = r4.o
            r0.draw(r5)
            r0 = 1
            goto L_0x002e
        L_0x002d:
            r0 = 0
        L_0x002e:
            boolean r5 = super.drawChild(r5, r6, r7)
            if (r5 != 0) goto L_0x0038
            if (r0 == 0) goto L_0x0037
            goto L_0x0038
        L_0x0037:
            r1 = 0
        L_0x0038:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.CollapsingToolbarLayout.drawChild(android.graphics.Canvas, android.view.View, long):boolean");
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.p;
        boolean z = false;
        if (drawable != null && drawable.isStateful()) {
            z = false | drawable.setState(drawableState);
        }
        Drawable drawable2 = this.o;
        if (drawable2 != null && drawable2.isStateful()) {
            z |= drawable2.setState(drawableState);
        }
        com.google.android.material.internal.a aVar = this.l;
        if (aVar != null) {
            z |= aVar.H(drawableState);
        }
        if (z) {
            invalidate();
        }
    }

    /* access modifiers changed from: package-private */
    public void e(int i2) {
        Toolbar toolbar;
        if (i2 != this.q) {
            if (!(this.o == null || (toolbar = this.d) == null)) {
                int i3 = c3.g;
                toolbar.postInvalidateOnAnimation();
            }
            this.q = i2;
            int i4 = c3.g;
            postInvalidateOnAnimation();
        }
    }

    public void f(CharSequence charSequence) {
        this.l.I(charSequence);
        setContentDescription(this.m ? this.l.m() : null);
    }

    /* access modifiers changed from: package-private */
    public final void g() {
        if (this.o != null || this.p != null) {
            int height = getHeight() + this.w;
            int i2 = this.u;
            int i3 = 0;
            if (i2 < 0) {
                l3 l3Var = this.x;
                int e2 = l3Var != null ? l3Var.e() : 0;
                int i4 = c3.g;
                int minimumHeight = getMinimumHeight();
                if (minimumHeight > 0) {
                    i2 = Math.min((minimumHeight * 2) + e2, getHeight());
                } else {
                    i2 = getHeight() / 3;
                }
            }
            boolean z = height < i2;
            int i5 = c3.g;
            boolean z2 = isLaidOut() && !isInEditMode();
            if (this.r != z) {
                int i6 = 255;
                if (z2) {
                    if (!z) {
                        i6 = 0;
                    }
                    a();
                    ValueAnimator valueAnimator = this.s;
                    if (valueAnimator == null) {
                        ValueAnimator valueAnimator2 = new ValueAnimator();
                        this.s = valueAnimator2;
                        valueAnimator2.setDuration(this.t);
                        this.s.setInterpolator(i6 > this.q ? jx.c : jx.d);
                        this.s.addUpdateListener(new c(this));
                    } else if (valueAnimator.isRunning()) {
                        this.s.cancel();
                    }
                    this.s.setIntValues(this.q, i6);
                    this.s.start();
                } else {
                    if (z) {
                        i3 = 255;
                    }
                    e(i3);
                }
                this.r = z;
            }
        }
    }

    /* access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.widget.FrameLayout
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ViewParent parent = getParent();
        if (parent instanceof AppBarLayout) {
            int i2 = c3.g;
            setFitsSystemWindows(((View) parent).getFitsSystemWindows());
            if (this.v == null) {
                this.v = new b();
            }
            ((AppBarLayout) parent).a(this.v);
            if (Build.VERSION.SDK_INT >= 20) {
                requestApplyInsets();
            } else {
                requestFitSystemWindows();
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        ViewParent parent = getParent();
        AppBarLayout.c cVar = this.v;
        if (cVar != null && (parent instanceof AppBarLayout)) {
            ((AppBarLayout) parent).m(cVar);
        }
        super.onDetachedFromWindow();
    }

    /* access modifiers changed from: protected */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        View view;
        super.onLayout(z, i2, i3, i4, i5);
        l3 l3Var = this.x;
        if (l3Var != null) {
            int e2 = l3Var.e();
            int childCount = getChildCount();
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                int i7 = c3.g;
                if (!childAt.getFitsSystemWindows() && childAt.getTop() < e2) {
                    c3.o(childAt, e2);
                }
            }
        }
        int childCount2 = getChildCount();
        for (int i8 = 0; i8 < childCount2; i8++) {
            d(getChildAt(i8)).d();
        }
        if (this.m && (view = this.f) != null) {
            int i9 = c3.g;
            boolean z2 = true;
            boolean z3 = view.isAttachedToWindow() && this.f.getVisibility() == 0;
            this.n = z3;
            if (z3) {
                if (getLayoutDirection() != 1) {
                    z2 = false;
                }
                View view2 = this.e;
                if (view2 == null) {
                    view2 = this.d;
                }
                int c2 = c(view2);
                com.google.android.material.internal.b.a(this, this.f, this.k);
                this.l.r(this.k.left + (z2 ? this.d.y() : this.d.z()), this.d.A() + this.k.top + c2, this.k.right + (z2 ? this.d.z() : this.d.y()), (this.k.bottom + c2) - this.d.x());
                this.l.x(z2 ? this.i : this.g, this.k.top + this.h, (i4 - i2) - (z2 ? this.g : this.i), (i5 - i3) - this.j);
                this.l.p();
            }
        }
        if (this.d != null) {
            if (this.m && TextUtils.isEmpty(this.l.m())) {
                f(this.d.w());
            }
            View view3 = this.e;
            if (view3 == null || view3 == this) {
                setMinimumHeight(b(this.d));
            } else {
                setMinimumHeight(b(view3));
            }
        }
        g();
        int childCount3 = getChildCount();
        for (int i10 = 0; i10 < childCount3; i10++) {
            d(getChildAt(i10)).a();
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        a();
        super.onMeasure(i2, i3);
        int mode = View.MeasureSpec.getMode(i3);
        l3 l3Var = this.x;
        int e2 = l3Var != null ? l3Var.e() : 0;
        if (mode == 0 && e2 > 0) {
            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() + e2, 1073741824));
        }
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int i2, int i3, int i4, int i5) {
        super.onSizeChanged(i2, i3, i4, i5);
        Drawable drawable = this.o;
        if (drawable != null) {
            drawable.setBounds(0, 0, i2, i3);
        }
    }

    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        Drawable drawable = this.p;
        if (!(drawable == null || drawable.isVisible() == z)) {
            this.p.setVisible(z, false);
        }
        Drawable drawable2 = this.o;
        if (drawable2 != null && drawable2.isVisible() != z) {
            this.o.setVisible(z, false);
        }
    }

    /* access modifiers changed from: protected */
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.o || drawable == this.p;
    }

    public CollapsingToolbarLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        boolean z = true;
        this.b = true;
        this.k = new Rect();
        this.u = -1;
        com.google.android.material.internal.a aVar = new com.google.android.material.internal.a(this);
        this.l = aVar;
        aVar.J(jx.e);
        TypedArray f2 = i.f(context, attributeSet, R$styleable.i, i2, R.style.pb, new int[0]);
        aVar.B(f2.getInt(3, 8388691));
        aVar.v(f2.getInt(0, 8388627));
        int dimensionPixelSize = f2.getDimensionPixelSize(4, 0);
        this.j = dimensionPixelSize;
        this.i = dimensionPixelSize;
        this.h = dimensionPixelSize;
        this.g = dimensionPixelSize;
        if (f2.hasValue(7)) {
            this.g = f2.getDimensionPixelSize(7, 0);
        }
        if (f2.hasValue(6)) {
            this.i = f2.getDimensionPixelSize(6, 0);
        }
        if (f2.hasValue(8)) {
            this.h = f2.getDimensionPixelSize(8, 0);
        }
        if (f2.hasValue(5)) {
            this.j = f2.getDimensionPixelSize(5, 0);
        }
        this.m = f2.getBoolean(14, true);
        f(f2.getText(13));
        aVar.z(R.style.j3);
        aVar.t(R.style.id);
        if (f2.hasValue(9)) {
            aVar.z(f2.getResourceId(9, 0));
        }
        if (f2.hasValue(1)) {
            aVar.t(f2.getResourceId(1, 0));
        }
        this.u = f2.getDimensionPixelSize(11, -1);
        this.t = (long) f2.getInt(10, 600);
        Drawable drawable = f2.getDrawable(2);
        Drawable drawable2 = this.o;
        Drawable drawable3 = null;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable mutate = drawable != null ? drawable.mutate() : null;
            this.o = mutate;
            if (mutate != null) {
                mutate.setBounds(0, 0, getWidth(), getHeight());
                this.o.setCallback(this);
                this.o.setAlpha(this.q);
            }
            int i3 = c3.g;
            postInvalidateOnAnimation();
        }
        Drawable drawable4 = f2.getDrawable(12);
        Drawable drawable5 = this.p;
        if (drawable5 != drawable4) {
            if (drawable5 != null) {
                drawable5.setCallback(null);
            }
            drawable3 = drawable4 != null ? drawable4.mutate() : drawable3;
            this.p = drawable3;
            if (drawable3 != null) {
                if (drawable3.isStateful()) {
                    this.p.setState(getDrawableState());
                }
                Drawable drawable6 = this.p;
                int i4 = c3.g;
                androidx.core.graphics.drawable.a.e(drawable6, getLayoutDirection());
                this.p.setVisible(getVisibility() != 0 ? false : z, false);
                this.p.setCallback(this);
                this.p.setAlpha(this.q);
            }
            int i5 = c3.g;
            postInvalidateOnAnimation();
        }
        this.c = f2.getResourceId(15, -1);
        f2.recycle();
        setWillNotDraw(false);
        c3.x(this, new a());
    }

    /* access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.widget.FrameLayout
    /* renamed from: generateDefaultLayoutParams  reason: collision with other method in class */
    public FrameLayout.LayoutParams m6generateDefaultLayoutParams() {
        return new LayoutParams(-1, -1);
    }

    @Override // android.widget.FrameLayout, android.widget.FrameLayout, android.view.ViewGroup
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* access modifiers changed from: protected */
    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public static class LayoutParams extends FrameLayout.LayoutParams {
        int a = 0;
        float b = 0.5f;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.j);
            this.a = obtainStyledAttributes.getInt(0, 0);
            this.b = obtainStyledAttributes.getFloat(1, 0.5f);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }
}
