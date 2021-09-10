package com.google.android.material.transformation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.View;
import android.view.ViewAnimationUtils;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.List;
import java.util.Objects;

public abstract class FabTransformationBehavior extends ExpandableTransformationBehavior {
    private final Rect c;
    private final RectF d;
    private final RectF e;
    private final int[] f;
    private float g;
    private float h;

    class a extends AnimatorListenerAdapter {
        final /* synthetic */ boolean a;
        final /* synthetic */ View b;
        final /* synthetic */ View c;

        a(FabTransformationBehavior fabTransformationBehavior, boolean z, View view, View view2) {
            this.a = z;
            this.b = view;
            this.c = view2;
        }

        public void onAnimationEnd(Animator animator) {
            if (!this.a) {
                this.b.setVisibility(4);
                this.c.setAlpha(1.0f);
                this.c.setVisibility(0);
            }
        }

        public void onAnimationStart(Animator animator) {
            if (this.a) {
                this.b.setVisibility(0);
                this.c.setAlpha(0.0f);
                this.c.setVisibility(4);
            }
        }
    }

    /* access modifiers changed from: protected */
    public static class b {
        public px a;
        public rx b;

        protected b() {
        }
    }

    public FabTransformationBehavior() {
        this.c = new Rect();
        this.d = new RectF();
        this.e = new RectF();
        this.f = new int[2];
    }

    private Pair<qx, qx> G(float f2, float f3, boolean z, b bVar) {
        qx qxVar;
        qx qxVar2;
        if (f2 == 0.0f || f3 == 0.0f) {
            qxVar2 = bVar.a.f("translationXLinear");
            qxVar = bVar.a.f("translationYLinear");
        } else if ((!z || f3 >= 0.0f) && (z || f3 <= 0.0f)) {
            qxVar2 = bVar.a.f("translationXCurveDownwards");
            qxVar = bVar.a.f("translationYCurveDownwards");
        } else {
            qxVar2 = bVar.a.f("translationXCurveUpwards");
            qxVar = bVar.a.f("translationYCurveUpwards");
        }
        return new Pair<>(qxVar2, qxVar);
    }

    private float H(View view, View view2, rx rxVar) {
        RectF rectF = this.d;
        RectF rectF2 = this.e;
        K(view, rectF);
        rectF.offset(this.g, this.h);
        K(view2, rectF2);
        Objects.requireNonNull(rxVar);
        return (rectF2.centerX() - rectF.centerX()) + 0.0f;
    }

    private float I(View view, View view2, rx rxVar) {
        RectF rectF = this.d;
        RectF rectF2 = this.e;
        K(view, rectF);
        rectF.offset(this.g, this.h);
        K(view2, rectF2);
        Objects.requireNonNull(rxVar);
        return (rectF2.centerY() - rectF.centerY()) + 0.0f;
    }

    private float J(b bVar, qx qxVar, float f2, float f3) {
        long c2 = qxVar.c();
        long d2 = qxVar.d();
        qx f4 = bVar.a.f("expansion");
        long c3 = f4.c();
        float interpolation = qxVar.e().getInterpolation(((float) (((f4.d() + c3) + 17) - c2)) / ((float) d2));
        TimeInterpolator timeInterpolator = jx.a;
        return ic.a(f3, f2, interpolation, f2);
    }

    private void K(View view, RectF rectF) {
        rectF.set(0.0f, 0.0f, (float) view.getWidth(), (float) view.getHeight());
        int[] iArr = this.f;
        view.getLocationInWindow(iArr);
        rectF.offsetTo((float) iArr[0], (float) iArr[1]);
        rectF.offset((float) ((int) (-view.getTranslationX())), (float) ((int) (-view.getTranslationY())));
    }

    private void L(View view, long j, int i, int i2, float f2, List<Animator> list) {
        if (Build.VERSION.SDK_INT >= 21 && j > 0) {
            Animator createCircularReveal = ViewAnimationUtils.createCircularReveal(view, i, i2, f2, f2);
            createCircularReveal.setStartDelay(0);
            createCircularReveal.setDuration(j);
            list.add(createCircularReveal);
        }
    }

    private ViewGroup N(View view) {
        if (view instanceof ViewGroup) {
            return (ViewGroup) view;
        }
        return null;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:39:0x0197  */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x019b  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x02bf  */
    /* JADX WARNING: Removed duplicated region for block: B:57:0x02c2  */
    /* JADX WARNING: Removed duplicated region for block: B:77:0x032d  */
    /* JADX WARNING: Removed duplicated region for block: B:78:0x0334  */
    /* JADX WARNING: Removed duplicated region for block: B:85:0x0353  */
    /* JADX WARNING: Removed duplicated region for block: B:93:0x03a3 A[LOOP:0: B:92:0x03a1->B:93:0x03a3, LOOP_END] */
    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.animation.AnimatorSet F(android.view.View r28, android.view.View r29, boolean r30, boolean r31) {
        /*
        // Method dump skipped, instructions count: 944
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.transformation.FabTransformationBehavior.F(android.view.View, android.view.View, boolean, boolean):android.animation.AnimatorSet");
    }

    /* access modifiers changed from: protected */
    public abstract b M(Context context, boolean z);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        if (view.getVisibility() == 8) {
            throw new IllegalStateException("This behavior cannot be attached to a GONE view. Set the view to INVISIBLE instead.");
        } else if (!(view2 instanceof FloatingActionButton)) {
            return false;
        } else {
            int s = ((FloatingActionButton) view2).s();
            if (s == 0 || s == view.getId()) {
                return true;
            }
            return false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public void f(CoordinatorLayout.e eVar) {
        if (eVar.h == 0) {
            eVar.h = 80;
        }
    }

    public FabTransformationBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.c = new Rect();
        this.d = new RectF();
        this.e = new RectF();
        this.f = new int[2];
    }
}
