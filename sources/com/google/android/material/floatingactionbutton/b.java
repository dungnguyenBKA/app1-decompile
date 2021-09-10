package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/* access modifiers changed from: package-private */
public abstract class b implements i {
    private final Context a;
    private final ExtendedFloatingActionButton b;
    private final ArrayList<Animator.AnimatorListener> c = new ArrayList<>();
    private final a d;
    private px e;
    private px f;

    b(ExtendedFloatingActionButton extendedFloatingActionButton, a aVar) {
        this.b = extendedFloatingActionButton;
        this.a = extendedFloatingActionButton.getContext();
        this.d = aVar;
    }

    @Override // com.google.android.material.floatingactionbutton.i
    public void a() {
        this.d.a();
    }

    @Override // com.google.android.material.floatingactionbutton.i
    public void e() {
        this.d.a();
    }

    @Override // com.google.android.material.floatingactionbutton.i
    public AnimatorSet f() {
        return h(i());
    }

    /* access modifiers changed from: package-private */
    public AnimatorSet h(px pxVar) {
        ArrayList arrayList = new ArrayList();
        if (pxVar.h("opacity")) {
            arrayList.add(pxVar.d("opacity", this.b, View.ALPHA));
        }
        if (pxVar.h("scale")) {
            arrayList.add(pxVar.d("scale", this.b, View.SCALE_Y));
            arrayList.add(pxVar.d("scale", this.b, View.SCALE_X));
        }
        if (pxVar.h("width")) {
            arrayList.add(pxVar.d("width", this.b, ExtendedFloatingActionButton.A));
        }
        if (pxVar.h("height")) {
            arrayList.add(pxVar.d("height", this.b, ExtendedFloatingActionButton.B));
        }
        AnimatorSet animatorSet = new AnimatorSet();
        androidx.core.app.b.p0(animatorSet, arrayList);
        return animatorSet;
    }

    public final px i() {
        px pxVar = this.f;
        if (pxVar != null) {
            return pxVar;
        }
        if (this.e == null) {
            this.e = px.b(this.a, b());
        }
        px pxVar2 = this.e;
        Objects.requireNonNull(pxVar2);
        return pxVar2;
    }

    public final List<Animator.AnimatorListener> j() {
        return this.c;
    }

    public final void k(px pxVar) {
        this.f = pxVar;
    }

    @Override // com.google.android.material.floatingactionbutton.i
    public void onAnimationStart(Animator animator) {
        this.d.b(animator);
    }
}
