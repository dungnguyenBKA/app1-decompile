package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.view.View;
import java.util.ArrayList;
import java.util.Objects;
import photoeditor.cutout.backgrounderaser.R;

/* access modifiers changed from: package-private */
public class h extends e {

    static class a extends my {
        a(qy qyVar) {
            super(qyVar);
        }

        @Override // defpackage.my
        public boolean isStateful() {
            return true;
        }
    }

    h(FloatingActionButton floatingActionButton, fy fyVar) {
        super(floatingActionButton, fyVar);
    }

    private Animator L(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.x, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat(this.x, View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(e.E);
        return animatorSet;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.e
    public boolean D() {
        return FloatingActionButton.this.m || !F();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.e
    public void H() {
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.e
    public my j() {
        qy qyVar = this.a;
        Objects.requireNonNull(qyVar);
        return new a(qyVar);
    }

    @Override // com.google.android.material.floatingactionbutton.e
    public float k() {
        return this.x.getElevation();
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.e
    public void l(Rect rect) {
        if (FloatingActionButton.this.m) {
            super.l(rect);
        } else if (!F()) {
            int v = (this.j - this.x.v()) / 2;
            rect.set(v, v, v, v);
        } else {
            rect.set(0, 0, 0, 0);
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.e
    public void n(ColorStateList colorStateList, PorterDuff.Mode mode, ColorStateList colorStateList2, int i) {
        Drawable drawable;
        qy qyVar = this.a;
        Objects.requireNonNull(qyVar);
        a aVar = new a(qyVar);
        this.b = aVar;
        aVar.setTintList(colorStateList);
        if (mode != null) {
            this.b.setTintMode(mode);
        }
        this.b.A(this.x.getContext());
        if (i > 0) {
            Context context = this.x.getContext();
            qy qyVar2 = this.a;
            Objects.requireNonNull(qyVar2);
            c cVar = new c(qyVar2);
            cVar.d(androidx.core.content.a.b(context, R.color.d6), androidx.core.content.a.b(context, R.color.d5), androidx.core.content.a.b(context, R.color.d3), androidx.core.content.a.b(context, R.color.d4));
            cVar.c((float) i);
            cVar.b(colorStateList);
            this.d = cVar;
            c cVar2 = this.d;
            Objects.requireNonNull(cVar2);
            my myVar = this.b;
            Objects.requireNonNull(myVar);
            drawable = new LayerDrawable(new Drawable[]{cVar2, myVar});
        } else {
            this.d = null;
            drawable = this.b;
        }
        RippleDrawable rippleDrawable = new RippleDrawable(dy.c(colorStateList2), drawable, null);
        this.c = rippleDrawable;
        this.e = rippleDrawable;
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.e
    public void p() {
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.e
    public void s(int[] iArr) {
        if (Build.VERSION.SDK_INT != 21) {
            return;
        }
        if (this.x.isEnabled()) {
            this.x.setElevation(this.g);
            if (this.x.isPressed()) {
                this.x.setTranslationZ(this.i);
            } else if (this.x.isFocused() || this.x.isHovered()) {
                this.x.setTranslationZ(this.h);
            } else {
                this.x.setTranslationZ(0.0f);
            }
        } else {
            this.x.setElevation(0.0f);
            this.x.setTranslationZ(0.0f);
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.e
    public void t(float f, float f2, float f3) {
        int i = Build.VERSION.SDK_INT;
        if (i == 21) {
            this.x.refreshDrawableState();
        } else {
            StateListAnimator stateListAnimator = new StateListAnimator();
            stateListAnimator.addState(e.F, L(f, f3));
            stateListAnimator.addState(e.G, L(f, f2));
            stateListAnimator.addState(e.H, L(f, f2));
            stateListAnimator.addState(e.I, L(f, f2));
            AnimatorSet animatorSet = new AnimatorSet();
            ArrayList arrayList = new ArrayList();
            arrayList.add(ObjectAnimator.ofFloat(this.x, "elevation", f).setDuration(0L));
            if (i >= 22 && i <= 24) {
                FloatingActionButton floatingActionButton = this.x;
                arrayList.add(ObjectAnimator.ofFloat(floatingActionButton, View.TRANSLATION_Z, floatingActionButton.getTranslationZ()).setDuration(100L));
            }
            arrayList.add(ObjectAnimator.ofFloat(this.x, View.TRANSLATION_Z, 0.0f).setDuration(100L));
            animatorSet.playSequentially((Animator[]) arrayList.toArray(new Animator[0]));
            animatorSet.setInterpolator(e.E);
            stateListAnimator.addState(e.J, animatorSet);
            stateListAnimator.addState(e.K, L(0.0f, 0.0f));
            this.x.setStateListAnimator(stateListAnimator);
        }
        if (D()) {
            J();
        }
    }

    /* access modifiers changed from: package-private */
    @Override // com.google.android.material.floatingactionbutton.e
    public boolean x() {
        return false;
    }
}
