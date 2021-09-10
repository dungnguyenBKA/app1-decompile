package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class ChangeClipBounds extends Transition {
    private static final String[] z = {"android:clipBounds:clip"};

    class a extends AnimatorListenerAdapter {
        final /* synthetic */ View a;

        a(ChangeClipBounds changeClipBounds, View view) {
            this.a = view;
        }

        public void onAnimationEnd(Animator animator) {
            View view = this.a;
            int i = c3.g;
            view.setClipBounds(null);
        }
    }

    public ChangeClipBounds() {
    }

    private void Q(w wVar) {
        View view = wVar.b;
        if (view.getVisibility() != 8) {
            int i = c3.g;
            Rect clipBounds = view.getClipBounds();
            wVar.a.put("android:clipBounds:clip", clipBounds);
            if (clipBounds == null) {
                wVar.a.put("android:clipBounds:bounds", new Rect(0, 0, view.getWidth(), view.getHeight()));
            }
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
        ObjectAnimator objectAnimator = null;
        if (wVar != null && wVar2 != null && wVar.a.containsKey("android:clipBounds:clip") && wVar2.a.containsKey("android:clipBounds:clip")) {
            Rect rect = (Rect) wVar.a.get("android:clipBounds:clip");
            Rect rect2 = (Rect) wVar2.a.get("android:clipBounds:clip");
            boolean z2 = rect2 == null;
            if (rect == null && rect2 == null) {
                return null;
            }
            if (rect == null) {
                rect = (Rect) wVar.a.get("android:clipBounds:bounds");
            } else if (rect2 == null) {
                rect2 = (Rect) wVar2.a.get("android:clipBounds:bounds");
            }
            if (rect.equals(rect2)) {
                return null;
            }
            View view = wVar2.b;
            int i = c3.g;
            view.setClipBounds(rect);
            objectAnimator = ObjectAnimator.ofObject(wVar2.b, b0.c, new m(new Rect()), rect, rect2);
            if (z2) {
                objectAnimator.addListener(new a(this, wVar2.b));
            }
        }
        return objectAnimator;
    }

    @Override // androidx.transition.Transition
    public String[] x() {
        return z;
    }

    public ChangeClipBounds(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
