package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.f;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.h;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.floatingactionbutton.e;
import com.google.android.material.internal.VisibilityAwareImageButton;
import com.google.android.material.internal.i;
import com.google.android.material.internal.j;
import com.google.android.material.stateful.ExtendableSavedState;
import java.util.List;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

@CoordinatorLayout.c(Behavior.class)
public class FloatingActionButton extends VisibilityAwareImageButton implements b3, h, ux, ty {
    private ColorStateList c;
    private PorterDuff.Mode d;
    private ColorStateList e;
    private PorterDuff.Mode f;
    private ColorStateList g;
    private int h;
    private int i;
    private int j;
    private int k;
    private int l;
    boolean m;
    final Rect n;
    private final Rect o;
    private final f p;
    private final vx q;
    private e r;

    public static class Behavior extends BaseBehavior<FloatingActionButton> {
        public Behavior() {
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static abstract class a {
    }

    /* access modifiers changed from: private */
    public class b implements fy {
        b() {
        }
    }

    /* access modifiers changed from: package-private */
    public class c<T extends FloatingActionButton> implements e.g {
        private final sx<T> a;

        c(sx<T> sxVar) {
            this.a = sxVar;
        }

        /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: sx<T extends com.google.android.material.floatingactionbutton.FloatingActionButton> */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.e.g
        public void a() {
            this.a.b(FloatingActionButton.this);
        }

        /* JADX DEBUG: Multi-variable search result rejected for r0v0, resolved type: sx<T extends com.google.android.material.floatingactionbutton.FloatingActionButton> */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.material.floatingactionbutton.e.g
        public void b() {
            this.a.a(FloatingActionButton.this);
        }

        public boolean equals(Object obj) {
            return (obj instanceof c) && ((c) obj).a.equals(this.a);
        }

        public int hashCode() {
            return this.a.hashCode();
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.im);
    }

    private void A() {
        Drawable drawable = getDrawable();
        if (drawable != null) {
            ColorStateList colorStateList = this.e;
            if (colorStateList == null) {
                androidx.core.graphics.drawable.a.a(drawable);
                return;
            }
            int colorForState = colorStateList.getColorForState(getDrawableState(), 0);
            PorterDuff.Mode mode = this.f;
            if (mode == null) {
                mode = PorterDuff.Mode.SRC_IN;
            }
            drawable.mutate().setColorFilter(androidx.appcompat.widget.e.e(colorForState, mode));
        }
    }

    private static int B(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i3);
        if (mode == Integer.MIN_VALUE) {
            return Math.min(i2, size);
        }
        if (mode == 0) {
            return i2;
        }
        if (mode == 1073741824) {
            return size;
        }
        throw new IllegalArgumentException();
    }

    private e t() {
        e eVar;
        if (this.r == null) {
            if (Build.VERSION.SDK_INT >= 21) {
                eVar = new h(this, new b());
            } else {
                eVar = new e(this, new b());
            }
            this.r = eVar;
        }
        return this.r;
    }

    private int w(int i2) {
        int i3 = this.j;
        if (i3 != 0) {
            return i3;
        }
        Resources resources = getResources();
        if (i2 != -1) {
            if (i2 != 1) {
                return resources.getDimensionPixelSize(R.dimen.n3);
            }
            return resources.getDimensionPixelSize(R.dimen.n2);
        } else if (Math.max(resources.getConfiguration().screenWidthDp, resources.getConfiguration().screenHeightDp) < 470) {
            return w(1);
        } else {
            return w(0);
        }
    }

    private void z(Rect rect) {
        int i2 = rect.left;
        Rect rect2 = this.n;
        rect.left = i2 + rect2.left;
        rect.top += rect2.top;
        rect.right -= rect2.right;
        rect.bottom -= rect2.bottom;
    }

    /* access modifiers changed from: package-private */
    public void C(a aVar, boolean z) {
        t().G(null, z);
    }

    @Override // androidx.core.widget.h
    public ColorStateList a() {
        return this.e;
    }

    @Override // defpackage.ux
    public boolean b() {
        return this.q.b();
    }

    @Override // androidx.core.widget.h
    public PorterDuff.Mode c() {
        return this.f;
    }

    @Override // defpackage.b3
    public ColorStateList d() {
        return getBackgroundTintList();
    }

    /* access modifiers changed from: protected */
    public void drawableStateChanged() {
        super.drawableStateChanged();
        t().s(getDrawableState());
    }

    @Override // defpackage.ty
    public void e(qy qyVar) {
        t().B(qyVar);
    }

    @Override // androidx.core.widget.h
    public void f(ColorStateList colorStateList) {
        if (this.e != colorStateList) {
            this.e = colorStateList;
            A();
        }
    }

    @Override // defpackage.b3
    public PorterDuff.Mode g() {
        return getBackgroundTintMode();
    }

    public ColorStateList getBackgroundTintList() {
        return this.c;
    }

    public PorterDuff.Mode getBackgroundTintMode() {
        return this.d;
    }

    @Override // defpackage.b3
    public void h(ColorStateList colorStateList) {
        setBackgroundTintList(colorStateList);
    }

    @Override // androidx.core.widget.h
    public void i(PorterDuff.Mode mode) {
        if (this.f != mode) {
            this.f = mode;
            A();
        }
    }

    @Override // defpackage.b3
    public void j(PorterDuff.Mode mode) {
        setBackgroundTintMode(mode);
    }

    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        t().p();
    }

    public void o(Animator.AnimatorListener animatorListener) {
        t().d(animatorListener);
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        t().q();
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        t().r();
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int v = v();
        this.k = (v - this.l) / 2;
        t().J();
        int min = Math.min(B(v, i2), B(v, i3));
        Rect rect = this.n;
        setMeasuredDimension(rect.left + min + rect.right, min + rect.top + rect.bottom);
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof ExtendableSavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        ExtendableSavedState extendableSavedState = (ExtendableSavedState) parcelable;
        super.onRestoreInstanceState(extendableSavedState.a());
        vx vxVar = this.q;
        Bundle orDefault = extendableSavedState.d.getOrDefault("expandableWidgetHelper", null);
        Objects.requireNonNull(orDefault);
        vxVar.c(orDefault);
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        Parcelable onSaveInstanceState = super.onSaveInstanceState();
        if (onSaveInstanceState == null) {
            onSaveInstanceState = new Bundle();
        }
        ExtendableSavedState extendableSavedState = new ExtendableSavedState(onSaveInstanceState);
        extendableSavedState.d.put("expandableWidgetHelper", this.q.d());
        return extendableSavedState;
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || !r(this.o) || this.o.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
            return super.onTouchEvent(motionEvent);
        }
        return false;
    }

    public void p(Animator.AnimatorListener animatorListener) {
        t().e(animatorListener);
    }

    public void q(sx<? extends FloatingActionButton> sxVar) {
        t().f(new c(sxVar));
    }

    @Deprecated
    public boolean r(Rect rect) {
        int i2 = c3.g;
        if (!isLaidOut()) {
            return false;
        }
        rect.set(0, 0, getWidth(), getHeight());
        z(rect);
        return true;
    }

    public int s() {
        return this.q.a();
    }

    public void setBackgroundColor(int i2) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    public void setBackgroundDrawable(Drawable drawable) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    public void setBackgroundResource(int i2) {
        Log.i("FloatingActionButton", "Setting a custom background is not supported.");
    }

    public void setBackgroundTintList(ColorStateList colorStateList) {
        if (this.c != colorStateList) {
            this.c = colorStateList;
            e t = t();
            my myVar = t.b;
            if (myVar != null) {
                myVar.setTintList(colorStateList);
            }
            c cVar = t.d;
            if (cVar != null) {
                cVar.b(colorStateList);
            }
        }
    }

    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.d != mode) {
            this.d = mode;
            my myVar = t().b;
            if (myVar != null) {
                myVar.setTintMode(mode);
            }
        }
    }

    public void setElevation(float f2) {
        super.setElevation(f2);
        my myVar = t().b;
        if (myVar != null) {
            myVar.E(f2);
        }
    }

    public void setImageDrawable(Drawable drawable) {
        if (getDrawable() != drawable) {
            super.setImageDrawable(drawable);
            t().I();
            if (this.e != null) {
                A();
            }
        }
    }

    public void setImageResource(int i2) {
        this.p.f(i2);
        A();
    }

    public void setScaleX(float f2) {
        super.setScaleX(f2);
        t().v();
    }

    public void setScaleY(float f2) {
        super.setScaleY(f2);
        t().v();
    }

    public void setTranslationX(float f2) {
        super.setTranslationX(f2);
        t().w();
    }

    public void setTranslationY(float f2) {
        super.setTranslationY(f2);
        t().w();
    }

    public void setTranslationZ(float f2) {
        super.setTranslationZ(f2);
        t().w();
    }

    @Override // com.google.android.material.internal.VisibilityAwareImageButton
    public void setVisibility(int i2) {
        super.setVisibility(i2);
    }

    public void u(Rect rect) {
        rect.set(0, 0, getMeasuredWidth(), getMeasuredHeight());
        z(rect);
    }

    /* access modifiers changed from: package-private */
    public int v() {
        return w(this.i);
    }

    /* access modifiers changed from: package-private */
    public void x(a aVar, boolean z) {
        t().m(null, z);
    }

    public boolean y() {
        return t().o();
    }

    protected static class BaseBehavior<T extends FloatingActionButton> extends CoordinatorLayout.Behavior<T> {
        private Rect a;
        private boolean b;

        public BaseBehavior() {
            this.b = true;
        }

        private static boolean C(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.e) {
                return ((CoordinatorLayout.e) layoutParams).c() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean F(View view, FloatingActionButton floatingActionButton) {
            CoordinatorLayout.e eVar = (CoordinatorLayout.e) floatingActionButton.getLayoutParams();
            if (this.b && eVar.b() == view.getId() && floatingActionButton.k() == 0) {
                return true;
            }
            return false;
        }

        private boolean G(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, FloatingActionButton floatingActionButton) {
            if (!F(appBarLayout, floatingActionButton)) {
                return false;
            }
            if (this.a == null) {
                this.a = new Rect();
            }
            Rect rect = this.a;
            com.google.android.material.internal.b.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.e()) {
                floatingActionButton.x(null, false);
                return true;
            }
            floatingActionButton.C(null, false);
            return true;
        }

        private boolean H(View view, FloatingActionButton floatingActionButton) {
            if (!F(view, floatingActionButton)) {
                return false;
            }
            if (view.getTop() < (floatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.e) floatingActionButton.getLayoutParams())).topMargin) {
                floatingActionButton.x(null, false);
                return true;
            }
            floatingActionButton.C(null, false);
            return true;
        }

        /* renamed from: B */
        public boolean a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, Rect rect) {
            Rect rect2 = floatingActionButton.n;
            rect.set(floatingActionButton.getLeft() + rect2.left, floatingActionButton.getTop() + rect2.top, floatingActionButton.getRight() - rect2.right, floatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        /* renamed from: D */
        public boolean g(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                G(coordinatorLayout, (AppBarLayout) view, floatingActionButton);
                return false;
            } else if (!C(view)) {
                return false;
            } else {
                H(view, floatingActionButton);
                return false;
            }
        }

        /* renamed from: E */
        public boolean k(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, int i) {
            int i2;
            List<View> t = coordinatorLayout.t(floatingActionButton);
            int size = t.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                View view = t.get(i4);
                if (!(view instanceof AppBarLayout)) {
                    if (C(view) && H(view, floatingActionButton)) {
                        break;
                    }
                } else if (G(coordinatorLayout, (AppBarLayout) view, floatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.B(floatingActionButton, i);
            Rect rect = floatingActionButton.n;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return true;
            }
            CoordinatorLayout.e eVar = (CoordinatorLayout.e) floatingActionButton.getLayoutParams();
            if (floatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) eVar).rightMargin) {
                i2 = rect.right;
            } else {
                i2 = floatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) eVar).leftMargin ? -rect.left : 0;
            }
            if (floatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin) {
                i3 = rect.bottom;
            } else if (floatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) eVar).topMargin) {
                i3 = -rect.top;
            }
            if (i3 != 0) {
                c3.o(floatingActionButton, i3);
            }
            if (i2 == 0) {
                return true;
            }
            c3.n(floatingActionButton, i2);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void f(CoordinatorLayout.e eVar) {
            if (eVar.h == 0) {
                eVar.h = 80;
            }
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.n);
            this.b = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
        }
    }

    public FloatingActionButton(Context context, AttributeSet attributeSet, int i2) {
        super(i.e(context, attributeSet, i2, R.style.pc), attributeSet, i2);
        this.n = new Rect();
        this.o = new Rect();
        Context context2 = getContext();
        TypedArray f2 = i.f(context2, attributeSet, R$styleable.m, i2, R.style.pc, new int[0]);
        this.c = yx.a(context2, f2, 0);
        this.d = j.d(f2.getInt(1, -1), null);
        this.g = yx.a(context2, f2, 11);
        this.i = f2.getInt(6, -1);
        this.j = f2.getDimensionPixelSize(5, 0);
        this.h = f2.getDimensionPixelSize(2, 0);
        float dimension = f2.getDimension(3, 0.0f);
        float dimension2 = f2.getDimension(8, 0.0f);
        float dimension3 = f2.getDimension(10, 0.0f);
        this.m = f2.getBoolean(15, false);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.ue);
        this.l = f2.getDimensionPixelSize(9, 0);
        px a2 = px.a(context2, f2, 14);
        px a3 = px.a(context2, f2, 7);
        qy m2 = qy.c(context2, attributeSet, i2, R.style.pc, qy.m).m();
        boolean z = f2.getBoolean(4, false);
        f2.recycle();
        f fVar = new f(this);
        this.p = fVar;
        fVar.e(attributeSet, i2);
        this.q = new vx(this);
        t().B(m2);
        t().n(this.c, this.d, this.g, this.h);
        t().j = dimensionPixelSize;
        e t = t();
        if (t.g != dimension) {
            t.g = dimension;
            t.t(dimension, t.h, t.i);
        }
        e t2 = t();
        if (t2.h != dimension2) {
            t2.h = dimension2;
            t2.t(t2.g, dimension2, t2.i);
        }
        e t3 = t();
        if (t3.i != dimension3) {
            t3.i = dimension3;
            t3.t(t3.g, t3.h, dimension3);
        }
        t().A(this.l);
        t().C(a2);
        t().y(a3);
        t().f = z;
        setScaleType(ImageView.ScaleType.MATRIX);
    }
}
