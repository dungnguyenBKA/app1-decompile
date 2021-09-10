package com.google.android.material.bottomnavigation;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.i0;
import androidx.customview.view.AbsSavedState;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.i;
import com.google.android.material.internal.j;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

public class BottomNavigationView extends FrameLayout {
    public static final /* synthetic */ int g = 0;
    private final g b;
    final BottomNavigationMenuView c;
    private final BottomNavigationPresenter d;
    private ColorStateList e;
    private MenuInflater f;

    static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        Bundle d;

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

        @Override // androidx.customview.view.AbsSavedState
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeBundle(this.d);
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.d = parcel.readBundle(classLoader == null ? getClass().getClassLoader() : classLoader);
        }
    }

    class a implements g.a {
        a() {
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(g gVar, MenuItem menuItem) {
            BottomNavigationView bottomNavigationView = BottomNavigationView.this;
            int i = BottomNavigationView.g;
            Objects.requireNonNull(bottomNavigationView);
            Objects.requireNonNull(BottomNavigationView.this);
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(g gVar) {
        }
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.bn);
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
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.a());
        this.b.D(savedState.d);
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        Bundle bundle = new Bundle();
        savedState.d = bundle;
        this.b.F(bundle);
        return savedState;
    }

    public void setElevation(float f2) {
        super.setElevation(f2);
        Drawable background = getBackground();
        if (background instanceof my) {
            ((my) background).E(f2);
        }
    }

    public BottomNavigationView(Context context, AttributeSet attributeSet, int i) {
        super(i.e(context, attributeSet, i, R.style.p_), attributeSet, i);
        BottomNavigationPresenter bottomNavigationPresenter = new BottomNavigationPresenter();
        this.d = bottomNavigationPresenter;
        Context context2 = getContext();
        g aVar = new a(context2);
        this.b = aVar;
        BottomNavigationMenuView bottomNavigationMenuView = new BottomNavigationMenuView(context2, null);
        this.c = bottomNavigationMenuView;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        bottomNavigationMenuView.setLayoutParams(layoutParams);
        bottomNavigationPresenter.a(bottomNavigationMenuView);
        bottomNavigationPresenter.l(1);
        bottomNavigationMenuView.v(bottomNavigationPresenter);
        aVar.b(bottomNavigationPresenter);
        bottomNavigationPresenter.h(getContext(), aVar);
        i0 g2 = i.g(context2, attributeSet, R$styleable.d, i, R.style.p_, 8, 7);
        if (g2.r(5)) {
            bottomNavigationMenuView.m(g2.c(5));
        } else {
            bottomNavigationMenuView.m(bottomNavigationMenuView.e(16842808));
        }
        bottomNavigationMenuView.q(g2.f(4, getResources().getDimensionPixelSize(R.dimen.mq)));
        if (g2.r(8)) {
            bottomNavigationMenuView.s(g2.n(8, 0));
        }
        if (g2.r(7)) {
            bottomNavigationMenuView.r(g2.n(7, 0));
        }
        if (g2.r(9)) {
            bottomNavigationMenuView.t(g2.c(9));
        }
        if (getBackground() == null || (getBackground() instanceof ColorDrawable)) {
            my myVar = new my();
            Drawable background = getBackground();
            if (background instanceof ColorDrawable) {
                myVar.F(ColorStateList.valueOf(((ColorDrawable) background).getColor()));
            }
            myVar.A(context2);
            int i2 = c3.g;
            setBackground(myVar);
        }
        if (g2.r(1)) {
            c3.w(this, (float) g2.f(1, 0));
        }
        androidx.core.graphics.drawable.a.g(getBackground().mutate(), yx.b(context2, g2, 0));
        int l = g2.l(10, -1);
        if (bottomNavigationMenuView.h() != l) {
            bottomNavigationMenuView.u(l);
            bottomNavigationPresenter.c(false);
        }
        boolean a2 = g2.a(3, true);
        if (bottomNavigationMenuView.j() != a2) {
            bottomNavigationMenuView.p(a2);
            bottomNavigationPresenter.c(false);
        }
        int n = g2.n(2, 0);
        if (n != 0) {
            bottomNavigationMenuView.o(n);
        } else {
            ColorStateList b2 = yx.b(context2, g2, 6);
            if (this.e != b2) {
                this.e = b2;
                if (b2 == null) {
                    bottomNavigationMenuView.n(null);
                } else {
                    ColorStateList a3 = dy.a(b2);
                    if (Build.VERSION.SDK_INT >= 21) {
                        bottomNavigationMenuView.n(new RippleDrawable(a3, null, null));
                    } else {
                        GradientDrawable gradientDrawable = new GradientDrawable();
                        gradientDrawable.setCornerRadius(1.0E-5f);
                        Drawable j = androidx.core.graphics.drawable.a.j(gradientDrawable);
                        androidx.core.graphics.drawable.a.g(j, a3);
                        bottomNavigationMenuView.n(j);
                    }
                }
            } else if (b2 == null && bottomNavigationMenuView.g() != null) {
                bottomNavigationMenuView.n(null);
            }
        }
        if (g2.r(11)) {
            int n2 = g2.n(11, 0);
            bottomNavigationPresenter.m(true);
            if (this.f == null) {
                this.f = new p(getContext());
            }
            this.f.inflate(n2, aVar);
            bottomNavigationPresenter.m(false);
            bottomNavigationPresenter.c(true);
        }
        g2.v();
        addView(bottomNavigationMenuView, layoutParams);
        if (Build.VERSION.SDK_INT < 21) {
            View view = new View(context2);
            view.setBackgroundColor(androidx.core.content.a.b(context2, R.color.c8));
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, getResources().getDimensionPixelSize(R.dimen.mu)));
            addView(view);
        }
        aVar.G(new a());
        j.a(this, new b(this));
    }
}
