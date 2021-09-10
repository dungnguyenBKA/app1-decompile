package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$styleable;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.internal.i;
import com.google.android.material.internal.j;
import defpackage.qy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class BottomAppBar extends Toolbar implements CoordinatorLayout.b {
    public static final /* synthetic */ int e0;
    private final int Q;
    private final my R;
    private Animator S;
    private int T;
    private boolean U;
    private int V;
    private boolean W;
    private Behavior a0;
    private int b0;
    AnimatorListenerAdapter c0;
    sx<FloatingActionButton> d0;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        int d;
        boolean e;

        static class a implements Parcelable.ClassLoaderCreator<SavedState> {
            a() {
            }

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

        @Override // androidx.customview.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.d);
            parcel.writeInt(this.e ? 1 : 0);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = parcel.readInt();
            this.e = parcel.readInt() != 0;
        }
    }

    /* access modifiers changed from: package-private */
    public class a extends AnimatorListenerAdapter {
        a() {
            BottomAppBar.this = r1;
        }

        public void onAnimationStart(Animator animator) {
            BottomAppBar bottomAppBar = BottomAppBar.this;
            BottomAppBar.k0(bottomAppBar, bottomAppBar.T, BottomAppBar.this.W);
        }
    }

    /* access modifiers changed from: package-private */
    public class b implements sx<FloatingActionButton> {
        b() {
            BottomAppBar.this = r1;
        }

        @Override // defpackage.sx
        public void a(FloatingActionButton floatingActionButton) {
            FloatingActionButton floatingActionButton2 = floatingActionButton;
            BottomAppBar.this.R.G(floatingActionButton2.getVisibility() == 0 ? floatingActionButton2.getScaleY() : 0.0f);
        }

        @Override // defpackage.sx
        public void b(FloatingActionButton floatingActionButton) {
            FloatingActionButton floatingActionButton2 = floatingActionButton;
            float translationX = floatingActionButton2.getTranslationX();
            if (BottomAppBar.this.w0().d() != translationX) {
                BottomAppBar.this.w0().g(translationX);
                BottomAppBar.this.R.invalidateSelf();
            }
            float f = -floatingActionButton2.getTranslationY();
            if (BottomAppBar.this.w0().b() != f) {
                BottomAppBar.this.w0().e(f);
                BottomAppBar.this.R.invalidateSelf();
            }
            BottomAppBar.this.R.G(floatingActionButton2.getVisibility() == 0 ? floatingActionButton2.getScaleY() : 0.0f);
        }
    }

    /* access modifiers changed from: package-private */
    public class c implements j.b {
        c() {
            BottomAppBar.this = r1;
        }

        @Override // com.google.android.material.internal.j.b
        public l3 a(View view, l3 l3Var, j.c cVar) {
            BottomAppBar.this.b0 = l3Var.b();
            int b = l3Var.b() + cVar.d;
            cVar.d = b;
            int i = cVar.a;
            int i2 = cVar.b;
            int i3 = cVar.c;
            int i4 = c3.g;
            view.setPaddingRelative(i, i2, i3, b);
            return l3Var;
        }
    }

    public BottomAppBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bm);
    }

    static FloatingActionButton f0(BottomAppBar bottomAppBar) {
        View r0 = bottomAppBar.r0();
        if (r0 instanceof FloatingActionButton) {
            return (FloatingActionButton) r0;
        }
        return null;
    }

    static int h0(BottomAppBar bottomAppBar) {
        return bottomAppBar.b0;
    }

    static void k0(BottomAppBar bottomAppBar, int i, boolean z) {
        Objects.requireNonNull(bottomAppBar);
        int i2 = c3.g;
        if (bottomAppBar.isLaidOut()) {
            Animator animator = bottomAppBar.S;
            if (animator != null) {
                animator.cancel();
            }
            ArrayList arrayList = new ArrayList();
            if (!bottomAppBar.x0()) {
                i = 0;
                z = false;
            }
            ActionMenuView s0 = bottomAppBar.s0();
            if (s0 != null) {
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(s0, "alpha", 1.0f);
                if (Math.abs(s0.getTranslationX() - ((float) bottomAppBar.t0(s0, i, z))) > 1.0f) {
                    ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(s0, "alpha", 0.0f);
                    ofFloat2.addListener(new b(bottomAppBar, s0, i, z));
                    AnimatorSet animatorSet = new AnimatorSet();
                    animatorSet.setDuration(150L);
                    animatorSet.playSequentially(ofFloat2, ofFloat);
                    arrayList.add(animatorSet);
                } else if (s0.getAlpha() < 1.0f) {
                    arrayList.add(ofFloat);
                }
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            animatorSet2.playTogether(arrayList);
            bottomAppBar.S = animatorSet2;
            animatorSet2.addListener(new a(bottomAppBar));
            bottomAppBar.S.start();
        }
    }

    static void o0(BottomAppBar bottomAppBar) {
        bottomAppBar.V++;
    }

    static void p0(BottomAppBar bottomAppBar) {
        bottomAppBar.V--;
    }

    /* JADX WARNING: Removed duplicated region for block: B:6:0x001e  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private android.view.View r0() {
        /*
            r4 = this;
            android.view.ViewParent r0 = r4.getParent()
            boolean r0 = r0 instanceof androidx.coordinatorlayout.widget.CoordinatorLayout
            r1 = 0
            if (r0 != 0) goto L_0x000a
            return r1
        L_0x000a:
            android.view.ViewParent r0 = r4.getParent()
            androidx.coordinatorlayout.widget.CoordinatorLayout r0 = (androidx.coordinatorlayout.widget.CoordinatorLayout) r0
            java.util.List r0 = r0.u(r4)
            java.util.Iterator r0 = r0.iterator()
        L_0x0018:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L_0x002d
            java.lang.Object r2 = r0.next()
            android.view.View r2 = (android.view.View) r2
            boolean r3 = r2 instanceof com.google.android.material.floatingactionbutton.FloatingActionButton
            if (r3 != 0) goto L_0x002c
            boolean r3 = r2 instanceof com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton
            if (r3 == 0) goto L_0x0018
        L_0x002c:
            return r2
        L_0x002d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomappbar.BottomAppBar.r0():android.view.View");
    }

    private ActionMenuView s0() {
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* access modifiers changed from: public */
    private float u0() {
        int i = this.T;
        int i2 = c3.g;
        int i3 = 1;
        boolean z = getLayoutDirection() == 1;
        if (i != 1) {
            return 0.0f;
        }
        int measuredWidth = (getMeasuredWidth() / 2) - this.Q;
        if (z) {
            i3 = -1;
        }
        return (float) (measuredWidth * i3);
    }

    private d w0() {
        return (d) this.R.v().i();
    }

    private boolean x0() {
        View r0 = r0();
        FloatingActionButton floatingActionButton = r0 instanceof FloatingActionButton ? (FloatingActionButton) r0 : null;
        return floatingActionButton != null && floatingActionButton.y();
    }

    private void y0() {
        w0().g(u0());
        View r0 = r0();
        this.R.G((!this.W || !x0()) ? 0.0f : 1.0f);
        if (r0 != null) {
            r0.setTranslationY(-w0().b());
            r0.setTranslationX(u0());
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void X(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void Z(CharSequence charSequence) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.Behavior a() {
        if (this.a0 == null) {
            this.a0 = new Behavior();
        }
        return this.a0;
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ny.b(this, this.R);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (z) {
            Animator animator = this.S;
            if (animator != null) {
                animator.cancel();
            }
            y0();
        }
        ActionMenuView s0 = s0();
        if (s0 != null) {
            s0.setAlpha(1.0f);
            if (!x0()) {
                s0.setTranslationX((float) t0(s0, 0, false));
            } else {
                s0.setTranslationX((float) t0(s0, this.T, this.W));
            }
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        this.T = savedState.d;
        this.W = savedState.e;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.d = this.T;
        savedState.e = this.W;
        return savedState;
    }

    public void setElevation(float f) {
        this.R.E(f);
        int u = this.R.u() - this.R.t();
        if (this.a0 == null) {
            this.a0 = new Behavior();
        }
        this.a0.D(this, u);
    }

    public int t0(ActionMenuView actionMenuView, int i, boolean z) {
        int i2 = c3.g;
        boolean z2 = getLayoutDirection() == 1;
        int measuredWidth = z2 ? getMeasuredWidth() : 0;
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            View childAt = getChildAt(i3);
            if ((childAt.getLayoutParams() instanceof Toolbar.LayoutParams) && (((Toolbar.LayoutParams) childAt.getLayoutParams()).a & 8388615) == 8388611) {
                if (z2) {
                    measuredWidth = Math.min(measuredWidth, childAt.getLeft());
                } else {
                    measuredWidth = Math.max(measuredWidth, childAt.getRight());
                }
            }
        }
        int right = measuredWidth - (z2 ? actionMenuView.getRight() : actionMenuView.getLeft());
        if (i != 1 || !z) {
            return 0;
        }
        return right;
    }

    public boolean v0() {
        return this.U;
    }

    public boolean z0(int i) {
        float f = (float) i;
        if (f == w0().c()) {
            return false;
        }
        w0().f(f);
        this.R.invalidateSelf();
        return true;
    }

    public BottomAppBar(Context context, AttributeSet attributeSet, int i) {
        super(i.e(context, attributeSet, i, R.style.pu), attributeSet, i);
        my myVar = new my();
        this.R = myVar;
        this.V = 0;
        this.W = true;
        this.c0 = new a();
        this.d0 = new b();
        Context context2 = getContext();
        TypedArray f = i.f(context2, attributeSet, R$styleable.c, i, R.style.pu, new int[0]);
        ColorStateList a2 = yx.a(context2, f, 0);
        int dimensionPixelSize = f.getDimensionPixelSize(1, 0);
        this.T = f.getInt(2, 0);
        f.getInt(3, 0);
        this.U = f.getBoolean(7, false);
        f.recycle();
        this.Q = getResources().getDimensionPixelOffset(R.dimen.rr);
        d dVar = new d((float) f.getDimensionPixelOffset(4, 0), (float) f.getDimensionPixelOffset(5, 0), (float) f.getDimensionPixelOffset(6, 0));
        qy.b bVar = new qy.b();
        bVar.v(dVar);
        myVar.e(bVar.m());
        myVar.M(2);
        myVar.I(Paint.Style.FILL);
        myVar.A(context2);
        setElevation((float) dimensionPixelSize);
        androidx.core.graphics.drawable.a.g(myVar, a2);
        int i2 = c3.g;
        setBackground(myVar);
        j.a(this, new c());
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {
        private final Rect e = new Rect();
        private WeakReference<BottomAppBar> f;
        private int g;
        private final View.OnLayoutChangeListener h = new a();

        /* access modifiers changed from: package-private */
        public class a implements View.OnLayoutChangeListener {
            a() {
                Behavior.this = r1;
            }

            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                floatingActionButton.u(Behavior.this.e);
                int height = Behavior.this.e.height();
                bottomAppBar.z0(height);
                CoordinatorLayout.e eVar = (CoordinatorLayout.e) view.getLayoutParams();
                if (Behavior.this.g == 0) {
                    int dimensionPixelOffset = bottomAppBar.getResources().getDimensionPixelOffset(R.dimen.rs);
                    ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = BottomAppBar.h0(bottomAppBar) + (dimensionPixelOffset - ((floatingActionButton.getMeasuredHeight() - height) / 2));
                }
            }
        }

        public Behavior() {
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean k(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i) {
            BottomAppBar bottomAppBar2 = bottomAppBar;
            this.f = new WeakReference<>(bottomAppBar2);
            View r0 = bottomAppBar2.r0();
            if (r0 != null) {
                int i2 = c3.g;
                if (!r0.isLaidOut()) {
                    CoordinatorLayout.e eVar = (CoordinatorLayout.e) r0.getLayoutParams();
                    eVar.d = 49;
                    this.g = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                    if (r0 instanceof FloatingActionButton) {
                        FloatingActionButton floatingActionButton = (FloatingActionButton) r0;
                        floatingActionButton.addOnLayoutChangeListener(this.h);
                        floatingActionButton.o(bottomAppBar2.c0);
                        floatingActionButton.p(new c(bottomAppBar2));
                        floatingActionButton.q(bottomAppBar2.d0);
                    }
                    bottomAppBar2.y0();
                }
            }
            coordinatorLayout.B(bottomAppBar2, i);
            super.k(coordinatorLayout, bottomAppBar2, i);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean x(CoordinatorLayout coordinatorLayout, View view, View view2, View view3, int i, int i2) {
            BottomAppBar bottomAppBar = (BottomAppBar) view;
            if (!bottomAppBar.v0()) {
                return false;
            }
            if (i2 == 0 ? w(coordinatorLayout, bottomAppBar, view2, view3, i) : false) {
                return true;
            }
            return false;
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }
}
