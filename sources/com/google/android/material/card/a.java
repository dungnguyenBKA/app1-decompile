package com.google.android.material.card;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.util.AttributeSet;
import androidx.core.app.b;
import com.google.android.material.R$styleable;
import defpackage.qy;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

class a {
    private static final int[] t = {16842912};
    private static final double u = Math.cos(Math.toRadians(45.0d));
    private final MaterialCardView a;
    private final Rect b = new Rect();
    private final my c;
    private final my d;
    private final int e;
    private final int f;
    private int g;
    private Drawable h;
    private Drawable i;
    private ColorStateList j;
    private ColorStateList k;
    private qy l;
    private ColorStateList m;
    private Drawable n;
    private LayerDrawable o;
    private my p;
    private my q;
    private boolean r = false;
    private boolean s;

    /* access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.card.a$a  reason: collision with other inner class name */
    public class C0073a extends InsetDrawable {
        C0073a(a aVar, Drawable drawable, int i, int i2, int i3, int i4) {
            super(drawable, i, i2, i3, i4);
        }

        public boolean getPadding(Rect rect) {
            return false;
        }
    }

    public a(MaterialCardView materialCardView, AttributeSet attributeSet, int i2, int i3) {
        this.a = materialCardView;
        my myVar = new my(qy.c(materialCardView.getContext(), attributeSet, i2, i3, new gy((float) 0)).m());
        this.c = myVar;
        myVar.A(materialCardView.getContext());
        myVar.K(-12303292);
        qy v = myVar.v();
        Objects.requireNonNull(v);
        qy.b bVar = new qy.b(v);
        TypedArray obtainStyledAttributes = materialCardView.getContext().obtainStyledAttributes(attributeSet, R$styleable.f, i2, R.style.fa);
        if (obtainStyledAttributes.hasValue(3)) {
            bVar.o(obtainStyledAttributes.getDimension(3, 0.0f));
        }
        this.d = new my();
        n(bVar.m());
        Resources resources = materialCardView.getResources();
        this.e = resources.getDimensionPixelSize(R.dimen.tm);
        this.f = resources.getDimensionPixelSize(R.dimen.tn);
        obtainStyledAttributes.recycle();
    }

    private float a() {
        return Math.max(Math.max(b(this.l.j(), this.c.x()), b(this.l.l(), this.c.y())), Math.max(b(this.l.f(), this.c.n()), b(this.l.d(), this.c.m())));
    }

    private float b(jy jyVar, float f2) {
        if (jyVar instanceof py) {
            double d2 = (double) f2;
            Double.isNaN(d2);
            return (float) ((1.0d - u) * d2);
        } else if (jyVar instanceof ky) {
            return f2 / 2.0f;
        } else {
            return 0.0f;
        }
    }

    private boolean c() {
        return Build.VERSION.SDK_INT >= 21 && this.c.C();
    }

    private Drawable f() {
        RippleDrawable rippleDrawable;
        if (this.n == null) {
            if (dy.a) {
                this.q = new my(this.l);
                rippleDrawable = new RippleDrawable(this.j, null, this.q);
            } else {
                StateListDrawable stateListDrawable = new StateListDrawable();
                my myVar = new my(this.l);
                this.p = myVar;
                myVar.F(this.j);
                stateListDrawable.addState(new int[]{16842919}, this.p);
                rippleDrawable = stateListDrawable;
            }
            this.n = rippleDrawable;
        }
        if (this.o == null) {
            StateListDrawable stateListDrawable2 = new StateListDrawable();
            Drawable drawable = this.i;
            if (drawable != null) {
                stateListDrawable2.addState(t, drawable);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{this.n, this.d, stateListDrawable2});
            this.o = layerDrawable;
            layerDrawable.setId(2, R.id.lj);
        }
        return this.o;
    }

    private Drawable g(Drawable drawable) {
        int i2;
        int i3;
        if ((Build.VERSION.SDK_INT < 21) || this.a.w()) {
            float f2 = 0.0f;
            int ceil = (int) Math.ceil((double) ((this.a.t() * 1.5f) + (p() ? a() : 0.0f)));
            float t2 = this.a.t();
            if (p()) {
                f2 = a();
            }
            i3 = (int) Math.ceil((double) (t2 + f2));
            i2 = ceil;
        } else {
            i3 = 0;
            i2 = 0;
        }
        return new C0073a(this, drawable, i3, i2, i3, i2);
    }

    private boolean p() {
        return this.a.u() && c() && this.a.w();
    }

    /* access modifiers changed from: package-private */
    public void d() {
        Drawable drawable = this.n;
        if (drawable != null) {
            Rect bounds = drawable.getBounds();
            int i2 = bounds.bottom;
            this.n.setBounds(bounds.left, bounds.top, bounds.right, i2 - 1);
            this.n.setBounds(bounds.left, bounds.top, bounds.right, i2);
        }
    }

    /* access modifiers changed from: package-private */
    public my e() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public boolean h() {
        return this.r;
    }

    /* access modifiers changed from: package-private */
    public boolean i() {
        return this.s;
    }

    /* access modifiers changed from: package-private */
    public void j(TypedArray typedArray) {
        Drawable drawable;
        ColorStateList a2 = yx.a(this.a.getContext(), typedArray, 8);
        this.m = a2;
        if (a2 == null) {
            this.m = ColorStateList.valueOf(-1);
        }
        this.g = typedArray.getDimensionPixelSize(9, 0);
        boolean z = typedArray.getBoolean(0, false);
        this.s = z;
        this.a.setLongClickable(z);
        this.k = yx.a(this.a.getContext(), typedArray, 3);
        Drawable c2 = yx.c(this.a.getContext(), typedArray, 2);
        this.i = c2;
        if (c2 != null) {
            Drawable j2 = androidx.core.graphics.drawable.a.j(c2.mutate());
            this.i = j2;
            androidx.core.graphics.drawable.a.g(j2, this.k);
        }
        if (this.o != null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            Drawable drawable2 = this.i;
            if (drawable2 != null) {
                stateListDrawable.addState(t, drawable2);
            }
            this.o.setDrawableByLayerId(R.id.lj, stateListDrawable);
        }
        ColorStateList a3 = yx.a(this.a.getContext(), typedArray, 4);
        this.j = a3;
        if (a3 == null) {
            this.j = ColorStateList.valueOf(b.H(this.a, R.attr.e2));
        }
        ColorStateList a4 = yx.a(this.a.getContext(), typedArray, 1);
        my myVar = this.d;
        if (a4 == null) {
            a4 = ColorStateList.valueOf(0);
        }
        myVar.F(a4);
        if (!dy.a || (drawable = this.n) == null) {
            my myVar2 = this.p;
            if (myVar2 != null) {
                myVar2.F(this.j);
            }
        } else {
            ((RippleDrawable) drawable).setColor(this.j);
        }
        this.c.E(this.a.o());
        this.d.O((float) this.g, this.m);
        this.a.z(g(this.c));
        Drawable f2 = this.a.isClickable() ? f() : this.d;
        this.h = f2;
        this.a.setForeground(g(f2));
    }

    /* access modifiers changed from: package-private */
    public void k(int i2, int i3) {
        int i4;
        int i5;
        if (this.o != null) {
            int i6 = this.e;
            int i7 = this.f;
            int i8 = (i2 - i6) - i7;
            int i9 = (i3 - i6) - i7;
            MaterialCardView materialCardView = this.a;
            int i10 = c3.g;
            if (materialCardView.getLayoutDirection() == 1) {
                i4 = i8;
                i5 = i6;
            } else {
                i5 = i8;
                i4 = i6;
            }
            this.o.setLayerInset(2, i5, this.e, i4, i9);
        }
    }

    /* access modifiers changed from: package-private */
    public void l(boolean z) {
        this.r = z;
    }

    /* access modifiers changed from: package-private */
    public void m(ColorStateList colorStateList) {
        this.c.F(colorStateList);
    }

    /* access modifiers changed from: package-private */
    public void n(qy qyVar) {
        this.l = qyVar;
        this.c.e(qyVar);
        my myVar = this.d;
        if (myVar != null) {
            myVar.e(qyVar);
        }
        my myVar2 = this.q;
        if (myVar2 != null) {
            myVar2.e(qyVar);
        }
        my myVar3 = this.p;
        if (myVar3 != null) {
            myVar3.e(qyVar);
        }
    }

    /* access modifiers changed from: package-private */
    public void o(int i2, int i3, int i4, int i5) {
        this.b.set(i2, i3, i4, i5);
        boolean z = false;
        if ((this.a.u() && !c()) || p()) {
            z = true;
        }
        float f2 = 0.0f;
        float a2 = z ? a() : 0.0f;
        if (this.a.u() && (Build.VERSION.SDK_INT < 21 || this.a.w())) {
            double d2 = 1.0d - u;
            double v = (double) this.a.v();
            Double.isNaN(v);
            Double.isNaN(v);
            Double.isNaN(v);
            f2 = (float) (d2 * v);
        }
        int i6 = (int) (a2 - f2);
        MaterialCardView materialCardView = this.a;
        Rect rect = this.b;
        materialCardView.x(rect.left + i6, rect.top + i6, rect.right + i6, rect.bottom + i6);
    }

    /* access modifiers changed from: package-private */
    public void q() {
        Drawable drawable = this.h;
        Drawable f2 = this.a.isClickable() ? f() : this.d;
        this.h = f2;
        if (drawable == f2) {
            return;
        }
        if (Build.VERSION.SDK_INT < 23 || !(this.a.getForeground() instanceof InsetDrawable)) {
            this.a.setForeground(g(f2));
        } else {
            ((InsetDrawable) this.a.getForeground()).setDrawable(f2);
        }
    }
}
