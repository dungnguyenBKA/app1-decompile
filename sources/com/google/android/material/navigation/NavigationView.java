package com.google.android.material.navigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.i0;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.ScrimInsetsFrameLayout;
import com.google.android.material.internal.c;
import com.google.android.material.internal.d;
import com.google.android.material.internal.i;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class NavigationView extends ScrimInsetsFrameLayout {
    private static final int[] m = {16842912};
    private static final int[] n = {-16842910};
    private final c g;
    private final d h;
    private final int i;
    private final int[] j;
    private MenuInflater k;
    private ViewTreeObserver.OnGlobalLayoutListener l;

    class a implements g.a {
        a() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(g gVar, MenuItem menuItem) {
            Objects.requireNonNull(NavigationView.this);
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(g gVar) {
        }
    }

    public NavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.os);
    }

    private ColorStateList f(int i2) {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(i2, typedValue, true)) {
            return null;
        }
        ColorStateList a2 = d.a(getContext(), typedValue.resourceId);
        if (!getContext().getTheme().resolveAttribute(R.attr.ea, typedValue, true)) {
            return null;
        }
        int i3 = typedValue.data;
        int defaultColor = a2.getDefaultColor();
        int[] iArr = n;
        return new ColorStateList(new int[][]{iArr, m, FrameLayout.EMPTY_STATE_SET}, new int[]{a2.getColorForState(iArr, defaultColor), i3, defaultColor});
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    public void a(l3 l3Var) {
        this.h.l(l3Var);
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable background = getBackground();
        if (background instanceof my) {
            ny.b(this, (my) background);
        }
    }

    /* access modifiers changed from: protected */
    @Override // com.google.android.material.internal.ScrimInsetsFrameLayout
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getViewTreeObserver().removeOnGlobalLayoutListener(this.l);
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        if (mode == Integer.MIN_VALUE) {
            i2 = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(i2), this.i), 1073741824);
        } else if (mode == 0) {
            i2 = View.MeasureSpec.makeMeasureSpec(this.i, 1073741824);
        }
        super.onMeasure(i2, i3);
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        this.g.D(savedState.d);
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.d = bundle;
        this.g.F(bundle);
        return savedState;
    }

    public void setElevation(float f) {
        if (Build.VERSION.SDK_INT >= 21) {
            super.setElevation(f);
        }
        Drawable background = getBackground();
        if (background instanceof my) {
            ((my) background).E(f);
        }
    }

    public void setOverScrollMode(int i2) {
        super.setOverScrollMode(i2);
        d dVar = this.h;
        if (dVar != null) {
            dVar.y(i2);
        }
    }

    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public Bundle d;

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
            this.d = parcel.readBundle(classLoader);
        }

        @Override // androidx.customview.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.d);
        }

        public SavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public NavigationView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        ColorStateList colorStateList;
        boolean z;
        int i3;
        d dVar = new d();
        this.h = dVar;
        this.j = new int[2];
        c cVar = new c(context);
        this.g = cVar;
        i0 g2 = i.g(context, attributeSet, R$styleable.A, i2, R.style.pd, new int[0]);
        if (g2.r(0)) {
            Drawable g3 = g2.g(0);
            int i4 = c3.g;
            setBackground(g3);
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            Drawable background = getBackground();
            my myVar = new my();
            if (background instanceof ColorDrawable) {
                myVar.F(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            myVar.A(context);
            int i5 = c3.g;
            setBackground(myVar);
        }
        if (g2.r(3)) {
            setElevation((float) g2.f(3, 0));
        }
        setFitsSystemWindows(g2.a(1, false));
        this.i = g2.f(2, 0);
        if (g2.r(9)) {
            colorStateList = g2.c(9);
        } else {
            colorStateList = f(16842808);
        }
        if (g2.r(18)) {
            i3 = g2.n(18, 0);
            z = true;
        } else {
            i3 = 0;
            z = false;
        }
        if (g2.r(8)) {
            dVar.t(g2.f(8, 0));
        }
        ColorStateList colorStateList2 = g2.r(19) ? g2.c(19) : null;
        if (!z && colorStateList2 == null) {
            colorStateList2 = f(16842806);
        }
        Drawable g4 = g2.g(5);
        if (g4 == null) {
            if (g2.r(11) || g2.r(12)) {
                my myVar2 = new my(qy.a(getContext(), g2.n(11, 0), g2.n(12, 0)).m());
                myVar2.F(yx.b(getContext(), g2, 13));
                g4 = new InsetDrawable((Drawable) myVar2, g2.f(16, 0), g2.f(17, 0), g2.f(15, 0), g2.f(14, 0));
            }
        }
        if (g2.r(6)) {
            dVar.r(g2.f(6, 0));
        }
        int f = g2.f(7, 0);
        dVar.v(g2.k(10, 1));
        cVar.G(new a());
        dVar.p(1);
        dVar.h(context, cVar);
        dVar.u(colorStateList);
        dVar.y(getOverScrollMode());
        if (z) {
            dVar.w(i3);
        }
        dVar.x(colorStateList2);
        dVar.q(g4);
        dVar.s(f);
        cVar.b(dVar);
        addView((View) dVar.m(this));
        if (g2.r(20)) {
            int n2 = g2.n(20, 0);
            dVar.z(true);
            if (this.k == null) {
                this.k = new p(getContext());
            }
            this.k.inflate(n2, cVar);
            dVar.z(false);
            dVar.c(false);
        }
        if (g2.r(4)) {
            dVar.n(g2.n(4, 0));
        }
        g2.v();
        this.l = new a(this);
        getViewTreeObserver().addOnGlobalLayoutListener(this.l);
    }
}
