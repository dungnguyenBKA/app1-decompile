package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class Fade extends Visibility {

    /* access modifiers changed from: package-private */
    public class a extends s {
        final /* synthetic */ View a;

        a(Fade fade, View view) {
            this.a = view;
        }

        @Override // androidx.transition.Transition.d
        public void c(Transition transition) {
            b0.f(this.a, 1.0f);
            b0.a(this.a);
            transition.E(this);
        }
    }

    /* access modifiers changed from: private */
    public static class b extends AnimatorListenerAdapter {
        private final View a;
        private boolean b = false;

        b(View view) {
            this.a = view;
        }

        public void onAnimationEnd(Animator animator) {
            b0.f(this.a, 1.0f);
            if (this.b) {
                this.a.setLayerType(0, null);
            }
        }

        public void onAnimationStart(Animator animator) {
            View view = this.a;
            int i = c3.g;
            if (view.hasOverlappingRendering() && this.a.getLayerType() == 0) {
                this.b = true;
                this.a.setLayerType(2, null);
            }
        }
    }

    public Fade(int i) {
        X(i);
    }

    private Animator Y(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        b0.f(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, b0.b, f2);
        ofFloat.addListener(new b(view));
        a(new a(this, view));
        return ofFloat;
    }

    @Override // androidx.transition.Visibility
    public Animator T(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        Float f;
        float f2 = 0.0f;
        float floatValue = (wVar == null || (f = (Float) wVar.a.get("android:fade:transitionAlpha")) == null) ? 0.0f : f.floatValue();
        if (floatValue != 1.0f) {
            f2 = floatValue;
        }
        return Y(view, f2, 1.0f);
    }

    @Override // androidx.transition.Visibility
    public Animator V(ViewGroup viewGroup, View view, w wVar, w wVar2) {
        b0.c(view);
        Float f = (Float) wVar.a.get("android:fade:transitionAlpha");
        return Y(view, f != null ? f.floatValue() : 1.0f, 0.0f);
    }

    @Override // androidx.transition.Transition, androidx.transition.Visibility
    public void g(w wVar) {
        super.g(wVar);
        wVar.a.put("android:fade:transitionAlpha", Float.valueOf(b0.b(wVar.b)));
    }

    public Fade() {
    }

    @SuppressLint({"RestrictedApi"})
    public Fade(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, p.d);
        X(c1.i(obtainStyledAttributes, (XmlResourceParser) attributeSet, "fadingMode", 0, R()));
        obtainStyledAttributes.recycle();
    }
}
