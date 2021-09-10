package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import androidx.appcompat.view.menu.i;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.l0;
import androidx.core.widget.c;
import photoeditor.cutout.backgrounderaser.R;

public class NavigationMenuItemView extends ForegroundLinearLayout implements n.a {
    private static final int[] G = {16842912};
    private FrameLayout A;
    private i B;
    private ColorStateList C;
    private boolean D;
    private Drawable E;
    private final n2 F;
    private int w;
    private boolean x;
    boolean y;
    private final CheckedTextView z;

    class a extends n2 {
        a() {
        }

        @Override // defpackage.n2
        public void e(View view, n3 n3Var) {
            super.e(view, n3Var);
            n3Var.P(NavigationMenuItemView.this.y);
        }
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void A(int i) {
        this.w = i;
    }

    /* access modifiers changed from: package-private */
    public void B(ColorStateList colorStateList) {
        this.C = colorStateList;
        this.D = colorStateList != null;
        i iVar = this.B;
        if (iVar != null) {
            y(iVar.getIcon());
        }
    }

    public void C(int i) {
        this.z.setMaxLines(i);
    }

    public void D(boolean z2) {
        this.x = z2;
    }

    public void E(int i) {
        c.h(this.z, i);
    }

    public void F(ColorStateList colorStateList) {
        this.z.setTextColor(colorStateList);
    }

    @Override // androidx.appcompat.view.menu.n.a
    public i c() {
        return this.B;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean f() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void k(i iVar, int i) {
        StateListDrawable stateListDrawable;
        this.B = iVar;
        setVisibility(iVar.isVisible() ? 0 : 8);
        boolean z2 = true;
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(R.attr.e2, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(G, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            int i2 = c3.g;
            setBackground(stateListDrawable);
        }
        boolean isCheckable = iVar.isCheckable();
        refreshDrawableState();
        if (this.y != isCheckable) {
            this.y = isCheckable;
            this.F.i(this.z, 2048);
        }
        boolean isChecked = iVar.isChecked();
        refreshDrawableState();
        this.z.setChecked(isChecked);
        setEnabled(iVar.isEnabled());
        this.z.setText(iVar.getTitle());
        y(iVar.getIcon());
        View actionView = iVar.getActionView();
        if (actionView != null) {
            if (this.A == null) {
                this.A = (FrameLayout) ((ViewStub) findViewById(R.id.gb)).inflate();
            }
            this.A.removeAllViews();
            this.A.addView(actionView);
        }
        setContentDescription(iVar.getContentDescription());
        l0.b(this, iVar.getTooltipText());
        if (!(this.B.getTitle() == null && this.B.getIcon() == null && this.B.getActionView() != null)) {
            z2 = false;
        }
        if (z2) {
            this.z.setVisibility(8);
            FrameLayout frameLayout = this.A;
            if (frameLayout != null) {
                LinearLayoutCompat.LayoutParams layoutParams = (LinearLayoutCompat.LayoutParams) frameLayout.getLayoutParams();
                ((ViewGroup.MarginLayoutParams) layoutParams).width = -1;
                this.A.setLayoutParams(layoutParams);
                return;
            }
            return;
        }
        this.z.setVisibility(0);
        FrameLayout frameLayout2 = this.A;
        if (frameLayout2 != null) {
            LinearLayoutCompat.LayoutParams layoutParams2 = (LinearLayoutCompat.LayoutParams) frameLayout2.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams2).width = -2;
            this.A.setLayoutParams(layoutParams2);
        }
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 1);
        i iVar = this.B;
        if (iVar != null && iVar.isCheckable() && this.B.isChecked()) {
            ViewGroup.mergeDrawableStates(onCreateDrawableState, G);
        }
        return onCreateDrawableState;
    }

    public void x() {
        FrameLayout frameLayout = this.A;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        this.z.setCompoundDrawables(null, null, null, null);
    }

    public void y(Drawable drawable) {
        if (drawable != null) {
            if (this.D) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = androidx.core.graphics.drawable.a.j(drawable).mutate();
                androidx.core.graphics.drawable.a.g(drawable, this.C);
            }
            int i = this.w;
            drawable.setBounds(0, 0, i, i);
        } else if (this.x) {
            if (this.E == null) {
                Drawable c = c1.c(getResources(), R.drawable.jy, getContext().getTheme());
                this.E = c;
                if (c != null) {
                    int i2 = this.w;
                    c.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.E;
        }
        this.z.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    public void z(int i) {
        this.z.setCompoundDrawablePadding(i);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a aVar = new a();
        this.F = aVar;
        w(0);
        LayoutInflater.from(context).inflate(R.layout.b0, (ViewGroup) this, true);
        this.w = context.getResources().getDimensionPixelSize(R.dimen.n8);
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(R.id.gc);
        this.z = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        c3.u(checkedTextView, aVar);
    }
}
