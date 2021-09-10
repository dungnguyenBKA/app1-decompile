package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R$styleable;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import java.util.List;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.b {
    static final Property<View, Float> A = new c(Float.class, "width");
    static final Property<View, Float> B = new d(Float.class, "height");
    private final Rect r;
    private int s;
    private final a t;
    private final i u;
    private final i v;
    private final i w;
    private final i x;
    private final CoordinatorLayout.Behavior<ExtendedFloatingActionButton> y;
    private boolean z;

    class a implements i {
        a() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.i
        public int getHeight() {
            return ExtendedFloatingActionButton.this.getMeasuredHeight();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.i
        public int getWidth() {
            return ExtendedFloatingActionButton.this.getMeasuredWidth();
        }
    }

    class b implements i {
        b() {
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.i
        public int getHeight() {
            return ExtendedFloatingActionButton.this.F();
        }

        @Override // com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.i
        public int getWidth() {
            return ExtendedFloatingActionButton.this.F();
        }
    }

    static class c extends Property<View, Float> {
        c(Class cls, String str) {
            super(cls, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf((float) view.getLayoutParams().width);
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(View view, Float f) {
            View view2 = view;
            view2.getLayoutParams().width = f.intValue();
            view2.requestLayout();
        }
    }

    static class d extends Property<View, Float> {
        d(Class cls, String str) {
            super(cls, str);
        }

        /* Return type fixed from 'java.lang.Object' to match base method */
        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object] */
        @Override // android.util.Property
        public Float get(View view) {
            return Float.valueOf((float) view.getLayoutParams().height);
        }

        /* JADX DEBUG: Method arguments types fixed to match base method, original types: [java.lang.Object, java.lang.Object] */
        @Override // android.util.Property
        public void set(View view, Float f) {
            View view2 = view;
            view2.getLayoutParams().height = f.intValue();
            view2.requestLayout();
        }
    }

    class e extends b {
        private final i g;
        private final boolean h;

        e(a aVar, i iVar, boolean z) {
            super(ExtendedFloatingActionButton.this, aVar);
            this.g = iVar;
            this.h = z;
        }

        @Override // com.google.android.material.floatingactionbutton.i
        public int b() {
            return R.animator.h;
        }

        @Override // com.google.android.material.floatingactionbutton.i
        public void c() {
            ExtendedFloatingActionButton.this.z = this.h;
            ViewGroup.LayoutParams layoutParams = ExtendedFloatingActionButton.this.getLayoutParams();
            if (layoutParams != null) {
                if (this.h) {
                    ExtendedFloatingActionButton.this.measure(0, 0);
                }
                layoutParams.width = this.g.getWidth();
                layoutParams.height = this.g.getHeight();
                ExtendedFloatingActionButton.this.requestLayout();
            }
        }

        @Override // com.google.android.material.floatingactionbutton.i
        public boolean d() {
            return this.h == ExtendedFloatingActionButton.this.z || ExtendedFloatingActionButton.this.c() == null || TextUtils.isEmpty(ExtendedFloatingActionButton.this.getText());
        }

        @Override // com.google.android.material.floatingactionbutton.i, com.google.android.material.floatingactionbutton.b
        public void e() {
            super.e();
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(false);
        }

        @Override // com.google.android.material.floatingactionbutton.i, com.google.android.material.floatingactionbutton.b
        public AnimatorSet f() {
            px i2 = i();
            if (i2.h("width")) {
                PropertyValuesHolder[] e = i2.e("width");
                e[0].setFloatValues((float) ExtendedFloatingActionButton.this.getWidth(), (float) this.g.getWidth());
                i2.i("width", e);
            }
            if (i2.h("height")) {
                PropertyValuesHolder[] e2 = i2.e("height");
                e2[0].setFloatValues((float) ExtendedFloatingActionButton.this.getHeight(), (float) this.g.getHeight());
                i2.i("height", e2);
            }
            return h(i2);
        }

        @Override // com.google.android.material.floatingactionbutton.i
        public void g(g gVar) {
        }

        @Override // com.google.android.material.floatingactionbutton.i, com.google.android.material.floatingactionbutton.b
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.z = this.h;
            ExtendedFloatingActionButton.this.setHorizontallyScrolling(true);
        }
    }

    class f extends b {
        private boolean g;

        public f(a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.i, com.google.android.material.floatingactionbutton.b
        public void a() {
            super.a();
            this.g = true;
        }

        @Override // com.google.android.material.floatingactionbutton.i
        public int b() {
            return R.animator.i;
        }

        @Override // com.google.android.material.floatingactionbutton.i
        public void c() {
            ExtendedFloatingActionButton.this.setVisibility(8);
        }

        @Override // com.google.android.material.floatingactionbutton.i
        public boolean d() {
            return ExtendedFloatingActionButton.E(ExtendedFloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.i, com.google.android.material.floatingactionbutton.b
        public void e() {
            super.e();
            ExtendedFloatingActionButton.this.s = 0;
            if (!this.g) {
                ExtendedFloatingActionButton.this.setVisibility(8);
            }
        }

        @Override // com.google.android.material.floatingactionbutton.i
        public void g(g gVar) {
        }

        @Override // com.google.android.material.floatingactionbutton.i, com.google.android.material.floatingactionbutton.b
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            this.g = false;
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.s = 1;
        }
    }

    public static abstract class g {
    }

    class h extends b {
        public h(a aVar) {
            super(ExtendedFloatingActionButton.this, aVar);
        }

        @Override // com.google.android.material.floatingactionbutton.i
        public int b() {
            return R.animator.j;
        }

        @Override // com.google.android.material.floatingactionbutton.i
        public void c() {
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.setAlpha(1.0f);
            ExtendedFloatingActionButton.this.setScaleY(1.0f);
            ExtendedFloatingActionButton.this.setScaleX(1.0f);
        }

        @Override // com.google.android.material.floatingactionbutton.i
        public boolean d() {
            return ExtendedFloatingActionButton.D(ExtendedFloatingActionButton.this);
        }

        @Override // com.google.android.material.floatingactionbutton.i, com.google.android.material.floatingactionbutton.b
        public void e() {
            super.e();
            ExtendedFloatingActionButton.this.s = 0;
        }

        @Override // com.google.android.material.floatingactionbutton.i
        public void g(g gVar) {
        }

        @Override // com.google.android.material.floatingactionbutton.i, com.google.android.material.floatingactionbutton.b
        public void onAnimationStart(Animator animator) {
            super.onAnimationStart(animator);
            ExtendedFloatingActionButton.this.setVisibility(0);
            ExtendedFloatingActionButton.this.s = 2;
        }
    }

    interface i {
        int getHeight();

        int getWidth();
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.i5);
    }

    /* JADX WARNING: Removed duplicated region for block: B:4:0x000d A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static boolean D(com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton r3) {
        /*
            int r0 = r3.getVisibility()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L_0x000f
            int r3 = r3.s
            r0 = 2
            if (r3 != r0) goto L_0x0014
        L_0x000d:
            r1 = 1
            goto L_0x0014
        L_0x000f:
            int r3 = r3.s
            if (r3 == r2) goto L_0x0014
            goto L_0x000d
        L_0x0014:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.D(com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton):boolean");
    }

    /* JADX WARNING: Removed duplicated region for block: B:4:0x000c A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static boolean E(com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton r3) {
        /*
            int r0 = r3.getVisibility()
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L_0x000e
            int r3 = r3.s
            if (r3 != r2) goto L_0x0014
        L_0x000c:
            r1 = 1
            goto L_0x0014
        L_0x000e:
            int r3 = r3.s
            r0 = 2
            if (r3 == r0) goto L_0x0014
            goto L_0x000c
        L_0x0014:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton.E(com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton):boolean");
    }

    static void w(ExtendedFloatingActionButton extendedFloatingActionButton, i iVar) {
        Objects.requireNonNull(extendedFloatingActionButton);
        if (!iVar.d()) {
            int i2 = c3.g;
            if (!(extendedFloatingActionButton.isLaidOut() && !extendedFloatingActionButton.isInEditMode())) {
                iVar.c();
                iVar.g(null);
                return;
            }
            extendedFloatingActionButton.measure(0, 0);
            AnimatorSet f2 = iVar.f();
            f2.addListener(new d(extendedFloatingActionButton, iVar));
            for (Animator.AnimatorListener animatorListener : ((b) iVar).j()) {
                f2.addListener(animatorListener);
            }
            f2.start();
        }
    }

    /* access modifiers changed from: package-private */
    public int F() {
        int i2 = c3.g;
        return f() + (Math.min(getPaddingStart(), getPaddingEnd()) * 2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.Behavior<ExtendedFloatingActionButton> a() {
        return this.y;
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.material.button.MaterialButton
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.z && TextUtils.isEmpty(getText()) && c() != null) {
            this.z = false;
            this.u.c();
        }
    }

    public ExtendedFloatingActionButton(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.r = new Rect();
        this.s = 0;
        a aVar = new a();
        this.t = aVar;
        h hVar = new h(aVar);
        this.w = hVar;
        f fVar = new f(aVar);
        this.x = fVar;
        this.z = true;
        this.y = new ExtendedFloatingActionButtonBehavior(context, attributeSet);
        TypedArray f2 = com.google.android.material.internal.i.f(context, attributeSet, R$styleable.k, i2, R.style.qo, new int[0]);
        px a2 = px.a(context, f2, 3);
        px a3 = px.a(context, f2, 2);
        px a4 = px.a(context, f2, 1);
        px a5 = px.a(context, f2, 4);
        a aVar2 = new a();
        e eVar = new e(aVar2, new a(), true);
        this.v = eVar;
        e eVar2 = new e(aVar2, new b(), false);
        this.u = eVar2;
        hVar.k(a2);
        fVar.k(a3);
        eVar.k(a4);
        eVar2.k(a5);
        f2.recycle();
        e(qy.c(context, attributeSet, i2, R.style.qo, qy.m).m());
    }

    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.Behavior<T> {
        private Rect a;
        private boolean b;
        private boolean c;

        public ExtendedFloatingActionButtonBehavior() {
            this.b = false;
            this.c = true;
        }

        private static boolean C(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.e) {
                return ((CoordinatorLayout.e) layoutParams).c() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean D(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            CoordinatorLayout.e eVar = (CoordinatorLayout.e) extendedFloatingActionButton.getLayoutParams();
            if ((this.b || this.c) && eVar.b() == view.getId()) {
                return true;
            }
            return false;
        }

        private boolean E(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            i iVar;
            i iVar2;
            if (!D(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.a == null) {
                this.a = new Rect();
            }
            Rect rect = this.a;
            com.google.android.material.internal.b.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.e()) {
                if (this.c) {
                    iVar2 = extendedFloatingActionButton.u;
                } else {
                    iVar2 = extendedFloatingActionButton.x;
                }
                ExtendedFloatingActionButton.w(extendedFloatingActionButton, iVar2);
                return true;
            }
            if (this.c) {
                iVar = extendedFloatingActionButton.v;
            } else {
                iVar = extendedFloatingActionButton.w;
            }
            ExtendedFloatingActionButton.w(extendedFloatingActionButton, iVar);
            return true;
        }

        private boolean F(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            i iVar;
            i iVar2;
            if (!D(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.e) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                if (this.c) {
                    iVar2 = extendedFloatingActionButton.u;
                } else {
                    iVar2 = extendedFloatingActionButton.x;
                }
                ExtendedFloatingActionButton.w(extendedFloatingActionButton, iVar2);
                return true;
            }
            if (this.c) {
                iVar = extendedFloatingActionButton.v;
            } else {
                iVar = extendedFloatingActionButton.w;
            }
            ExtendedFloatingActionButton.w(extendedFloatingActionButton, iVar);
            return true;
        }

        public boolean B(ExtendedFloatingActionButton extendedFloatingActionButton, Rect rect) {
            Rect rect2 = extendedFloatingActionButton.r;
            rect.set(extendedFloatingActionButton.getLeft() + rect2.left, extendedFloatingActionButton.getTop() + rect2.top, extendedFloatingActionButton.getRight() - rect2.right, extendedFloatingActionButton.getBottom() - rect2.bottom);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public /* bridge */ /* synthetic */ boolean a(CoordinatorLayout coordinatorLayout, View view, Rect rect) {
            return B((ExtendedFloatingActionButton) view, rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public void f(CoordinatorLayout.e eVar) {
            if (eVar.h == 0) {
                eVar.h = 80;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean g(CoordinatorLayout coordinatorLayout, View view, View view2) {
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            if (view2 instanceof AppBarLayout) {
                E(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton);
                return false;
            } else if (!C(view2)) {
                return false;
            } else {
                F(view2, extendedFloatingActionButton);
                return false;
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
        public boolean k(CoordinatorLayout coordinatorLayout, View view, int i) {
            int i2;
            ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) view;
            List<View> t = coordinatorLayout.t(extendedFloatingActionButton);
            int size = t.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size; i4++) {
                View view2 = t.get(i4);
                if (!(view2 instanceof AppBarLayout)) {
                    if (C(view2) && F(view2, extendedFloatingActionButton)) {
                        break;
                    }
                } else if (E(coordinatorLayout, (AppBarLayout) view2, extendedFloatingActionButton)) {
                    break;
                }
            }
            coordinatorLayout.B(extendedFloatingActionButton, i);
            Rect rect = extendedFloatingActionButton.r;
            if (rect == null || rect.centerX() <= 0 || rect.centerY() <= 0) {
                return true;
            }
            CoordinatorLayout.e eVar = (CoordinatorLayout.e) extendedFloatingActionButton.getLayoutParams();
            if (extendedFloatingActionButton.getRight() >= coordinatorLayout.getWidth() - ((ViewGroup.MarginLayoutParams) eVar).rightMargin) {
                i2 = rect.right;
            } else {
                i2 = extendedFloatingActionButton.getLeft() <= ((ViewGroup.MarginLayoutParams) eVar).leftMargin ? -rect.left : 0;
            }
            if (extendedFloatingActionButton.getBottom() >= coordinatorLayout.getHeight() - ((ViewGroup.MarginLayoutParams) eVar).bottomMargin) {
                i3 = rect.bottom;
            } else if (extendedFloatingActionButton.getTop() <= ((ViewGroup.MarginLayoutParams) eVar).topMargin) {
                i3 = -rect.top;
            }
            if (i3 != 0) {
                c3.o(extendedFloatingActionButton, i3);
            }
            if (i2 == 0) {
                return true;
            }
            c3.n(extendedFloatingActionButton, i2);
            return true;
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.l);
            this.b = obtainStyledAttributes.getBoolean(0, false);
            this.c = obtainStyledAttributes.getBoolean(1, true);
            obtainStyledAttributes.recycle();
        }
    }
}
