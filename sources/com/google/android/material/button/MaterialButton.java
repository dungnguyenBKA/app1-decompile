package com.google.android.material.button;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatButton;
import com.google.android.material.R$styleable;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.i;
import com.google.android.material.internal.j;
import java.util.Iterator;
import java.util.LinkedHashSet;
import photoeditor.cutout.backgrounderaser.R;

public class MaterialButton extends AppCompatButton implements Checkable, ty {
    private static final int[] p = {16842911};
    private static final int[] q = {16842912};
    private final a d;
    private final LinkedHashSet<a> e;
    private b f;
    private PorterDuff.Mode g;
    private ColorStateList h;
    private Drawable i;
    private int j;
    private int k;
    private int l;
    private boolean m;
    private boolean n;
    private int o;

    public interface a {
        void a(MaterialButton materialButton, boolean z);
    }

    /* access modifiers changed from: package-private */
    public interface b {
    }

    public MaterialButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.o4);
    }

    private boolean m() {
        a aVar = this.d;
        return aVar != null && !aVar.i();
    }

    private void s(boolean z) {
        Drawable drawable = this.i;
        boolean z2 = false;
        if (drawable != null) {
            Drawable mutate = androidx.core.graphics.drawable.a.j(drawable).mutate();
            this.i = mutate;
            androidx.core.graphics.drawable.a.g(mutate, this.h);
            PorterDuff.Mode mode = this.g;
            if (mode != null) {
                androidx.core.graphics.drawable.a.h(this.i, mode);
            }
            int i2 = this.j;
            if (i2 == 0) {
                i2 = this.i.getIntrinsicWidth();
            }
            int i3 = this.j;
            if (i3 == 0) {
                i3 = this.i.getIntrinsicHeight();
            }
            Drawable drawable2 = this.i;
            int i4 = this.k;
            drawable2.setBounds(i4, 0, i2 + i4, i3);
        }
        int i5 = this.o;
        boolean z3 = i5 == 1 || i5 == 2;
        if (!z) {
            Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
            Drawable drawable3 = compoundDrawablesRelative[0];
            Drawable drawable4 = compoundDrawablesRelative[2];
            if ((z3 && drawable3 != this.i) || (!z3 && drawable4 != this.i)) {
                z2 = true;
            }
            if (!z2) {
                return;
            }
            if (z3) {
                setCompoundDrawablesRelative(this.i, null, null, null);
            } else {
                setCompoundDrawablesRelative(null, null, this.i, null);
            }
        } else if (z3) {
            setCompoundDrawablesRelative(this.i, null, null, null);
        } else {
            setCompoundDrawablesRelative(null, null, this.i, null);
        }
    }

    private void t() {
        if (this.i != null && getLayout() != null) {
            int i2 = this.o;
            boolean z = true;
            if (i2 == 1 || i2 == 3) {
                this.k = 0;
                s(false);
                return;
            }
            TextPaint paint = getPaint();
            String charSequence = getText().toString();
            if (getTransformationMethod() != null) {
                charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
            }
            int min = Math.min((int) paint.measureText(charSequence), getLayout().getEllipsizedWidth());
            int i3 = this.j;
            if (i3 == 0) {
                i3 = this.i.getIntrinsicWidth();
            }
            int measuredWidth = getMeasuredWidth() - min;
            int i4 = c3.g;
            int paddingEnd = ((((measuredWidth - getPaddingEnd()) - i3) - this.l) - getPaddingStart()) / 2;
            boolean z2 = getLayoutDirection() == 1;
            if (this.o != 4) {
                z = false;
            }
            if (z2 != z) {
                paddingEnd = -paddingEnd;
            }
            if (this.k != paddingEnd) {
                this.k = paddingEnd;
                s(false);
            }
        }
    }

    public void b(a aVar) {
        this.e.add(aVar);
    }

    public Drawable c() {
        return this.i;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, defpackage.b3
    public ColorStateList d() {
        if (m()) {
            return this.d.f();
        }
        return super.d();
    }

    @Override // defpackage.ty
    public void e(qy qyVar) {
        if (m()) {
            this.d.n(qyVar);
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    public int f() {
        return this.j;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, defpackage.b3
    public PorterDuff.Mode g() {
        if (m()) {
            return this.d.g();
        }
        return super.g();
    }

    public ColorStateList getBackgroundTintList() {
        if (m()) {
            return this.d.f();
        }
        return super.d();
    }

    public PorterDuff.Mode getBackgroundTintMode() {
        if (m()) {
            return this.d.g();
        }
        return super.g();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, defpackage.b3
    public void h(ColorStateList colorStateList) {
        if (m()) {
            this.d.p(colorStateList);
        } else {
            super.h(colorStateList);
        }
    }

    public qy i() {
        if (m()) {
            return this.d.d();
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public boolean isChecked() {
        return this.m;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, defpackage.b3
    public void j(PorterDuff.Mode mode) {
        if (m()) {
            this.d.q(mode);
        } else {
            super.j(mode);
        }
    }

    public int k() {
        if (m()) {
            return this.d.e();
        }
        return 0;
    }

    public boolean l() {
        a aVar = this.d;
        return aVar != null && aVar.j();
    }

    public void n(a aVar) {
        this.e.remove(aVar);
    }

    public void o(boolean z) {
        if (m()) {
            this.d.m(z);
        }
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ny.b(this, this.d.b());
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i2) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i2 + 2);
        if (l()) {
            Button.mergeDrawableStates(onCreateDrawableState, p);
        }
        if (isChecked()) {
            Button.mergeDrawableStates(onCreateDrawableState, q);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName((l() ? CompoundButton.class : Button.class).getName());
        accessibilityEvent.setChecked(isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName((l() ? CompoundButton.class : Button.class).getName());
        accessibilityNodeInfo.setCheckable(l());
        accessibilityNodeInfo.setChecked(isChecked());
        accessibilityNodeInfo.setClickable(isClickable());
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatButton
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        a aVar;
        super.onLayout(z, i2, i3, i4, i5);
        if (Build.VERSION.SDK_INT == 21 && (aVar = this.d) != null) {
            aVar.r(i5 - i3, i4 - i2);
        }
    }

    /* access modifiers changed from: protected */
    public void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        t();
    }

    /* access modifiers changed from: protected */
    @Override // androidx.appcompat.widget.AppCompatButton
    public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
        super.onTextChanged(charSequence, i2, i3, i4);
        t();
    }

    /* access modifiers changed from: package-private */
    public void p(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public boolean performClick() {
        toggle();
        return super.performClick();
    }

    /* access modifiers changed from: package-private */
    public void q(b bVar) {
        this.f = bVar;
    }

    /* access modifiers changed from: package-private */
    public void r(boolean z) {
        if (m()) {
            this.d.o(z);
        }
    }

    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    public void setBackgroundColor(int i2) {
        if (m()) {
            a aVar = this.d;
            if (aVar.b() != null) {
                aVar.b().setTint(i2);
                return;
            }
            return;
        }
        super.setBackgroundColor(i2);
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setBackgroundDrawable(Drawable drawable) {
        if (!m()) {
            super.setBackgroundDrawable(drawable);
        } else if (drawable != getBackground()) {
            Log.w("MaterialButton", "Do not set the background; MaterialButton manages its own background drawable.");
            this.d.l();
            super.setBackgroundDrawable(drawable);
        } else {
            getBackground().setState(drawable.getState());
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setBackgroundResource(int i2) {
        setBackgroundDrawable(i2 != 0 ? d.b(getContext(), i2) : null);
    }

    public void setBackgroundTintList(ColorStateList colorStateList) {
        h(colorStateList);
    }

    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        j(mode);
    }

    public void setChecked(boolean z) {
        if (l() && isEnabled() && this.m != z) {
            this.m = z;
            refreshDrawableState();
            if (!this.n) {
                this.n = true;
                Iterator<a> it = this.e.iterator();
                while (it.hasNext()) {
                    it.next().a(this, this.m);
                }
                this.n = false;
            }
        }
    }

    public void setElevation(float f2) {
        super.setElevation(f2);
        if (m()) {
            this.d.b().E(f2);
        }
    }

    public void setPressed(boolean z) {
        b bVar = this.f;
        if (bVar != null) {
            MaterialButtonToggleGroup.e eVar = (MaterialButtonToggleGroup.e) bVar;
            MaterialButtonToggleGroup.this.l(getId(), isChecked());
            MaterialButtonToggleGroup.this.invalidate();
        }
        super.setPressed(z);
    }

    public void toggle() {
        setChecked(!this.m);
    }

    public MaterialButton(Context context, AttributeSet attributeSet, int i2) {
        super(i.e(context, attributeSet, i2, R.style.q2), attributeSet, i2);
        this.e = new LinkedHashSet<>();
        boolean z = false;
        this.m = false;
        this.n = false;
        Context context2 = getContext();
        TypedArray f2 = i.f(context2, attributeSet, R$styleable.q, i2, R.style.q2, new int[0]);
        this.l = f2.getDimensionPixelSize(11, 0);
        this.g = j.d(f2.getInt(14, -1), PorterDuff.Mode.SRC_IN);
        this.h = yx.a(getContext(), f2, 13);
        this.i = yx.c(getContext(), f2, 9);
        this.o = f2.getInteger(10, 1);
        this.j = f2.getDimensionPixelSize(12, 0);
        a aVar = new a(this, qy.c(context2, attributeSet, i2, R.style.q2, new gy((float) 0)).m());
        this.d = aVar;
        aVar.k(f2);
        f2.recycle();
        setCompoundDrawablePadding(this.l);
        s(this.i != null ? true : z);
    }
}
