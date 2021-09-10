package com.google.android.material.card;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Checkable;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import com.google.android.material.R$styleable;
import com.google.android.material.internal.i;
import photoeditor.cutout.backgrounderaser.R;

public class MaterialCardView extends CardView implements Checkable, ty {
    private static final int[] n = {16842911};
    private static final int[] o = {16842912};
    private static final int[] p = {R.attr.rh};
    private final a k;
    private boolean l;
    private boolean m;

    public MaterialCardView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.of);
    }

    @Override // defpackage.ty
    public void e(qy qyVar) {
        this.k.n(qyVar);
    }

    public boolean isChecked() {
        return this.m;
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        ny.b(this, this.k.e());
    }

    /* access modifiers changed from: protected */
    public int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 3);
        if (y()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, n);
        }
        if (isChecked()) {
            FrameLayout.mergeDrawableStates(onCreateDrawableState, o);
        }
        return onCreateDrawableState;
    }

    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(CardView.class.getName());
        accessibilityEvent.setChecked(isChecked());
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(CardView.class.getName());
        accessibilityNodeInfo.setCheckable(y());
        accessibilityNodeInfo.setClickable(isClickable());
        accessibilityNodeInfo.setChecked(isChecked());
    }

    /* access modifiers changed from: protected */
    @Override // androidx.cardview.widget.CardView
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.k.k(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    public void setBackgroundDrawable(Drawable drawable) {
        if (this.l) {
            if (!this.k.h()) {
                Log.i("MaterialCardView", "Setting a custom background is not supported.");
                this.k.l(true);
            }
            super.setBackgroundDrawable(drawable);
        }
    }

    public void setChecked(boolean z) {
        if (this.m != z) {
            toggle();
        }
    }

    public void setClickable(boolean z) {
        super.setClickable(z);
        this.k.q();
    }

    public void toggle() {
        if (y() && isEnabled()) {
            this.m = !this.m;
            refreshDrawableState();
            if (Build.VERSION.SDK_INT > 26) {
                this.k.d();
            }
        }
    }

    public boolean y() {
        a aVar = this.k;
        return aVar != null && aVar.i();
    }

    /* access modifiers changed from: package-private */
    public void z(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public MaterialCardView(Context context, AttributeSet attributeSet, int i) {
        super(i.e(context, attributeSet, i, R.style.qd), attributeSet, i);
        this.m = false;
        this.l = true;
        TypedArray f = i.f(getContext(), attributeSet, R$styleable.u, i, R.style.qd, new int[0]);
        a aVar = new a(this, attributeSet, i, R.style.qd);
        this.k = aVar;
        aVar.m(n());
        aVar.o(q(), s(), r(), p());
        aVar.j(f);
        f.recycle();
    }
}
