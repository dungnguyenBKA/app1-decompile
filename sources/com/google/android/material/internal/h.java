package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.transition.Transition;
import androidx.transition.w;
import java.util.Map;

public class h extends Transition {

    class a implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ TextView a;

        a(h hVar, TextView textView) {
            this.a = textView;
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            this.a.setScaleX(floatValue);
            this.a.setScaleY(floatValue);
        }
    }

    private void Q(w wVar) {
        View view = wVar.b;
        if (view instanceof TextView) {
            wVar.a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    public void d(w wVar) {
        Q(wVar);
    }

    @Override // androidx.transition.Transition
    public void g(w wVar) {
        Q(wVar);
    }

    @Override // androidx.transition.Transition
    public Animator k(ViewGroup viewGroup, w wVar, w wVar2) {
        if (wVar == null || wVar2 == null || !(wVar.b instanceof TextView)) {
            return null;
        }
        View view = wVar2.b;
        if (!(view instanceof TextView)) {
            return null;
        }
        TextView textView = (TextView) view;
        Map<String, Object> map = wVar.a;
        Map<String, Object> map2 = wVar2.a;
        float f = 1.0f;
        float floatValue = map.get("android:textscale:scale") != null ? ((Float) map.get("android:textscale:scale")).floatValue() : 1.0f;
        if (map2.get("android:textscale:scale") != null) {
            f = ((Float) map2.get("android:textscale:scale")).floatValue();
        }
        if (floatValue == f) {
            return null;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(floatValue, f);
        ofFloat.addUpdateListener(new a(this, textView));
        return ofFloat;
    }
}
