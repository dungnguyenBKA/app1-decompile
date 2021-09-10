package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

public class ChangeScroll extends Transition {
    private static final String[] z = {"android:changeScroll:x", "android:changeScroll:y"};

    public ChangeScroll() {
    }

    private void Q(w wVar) {
        wVar.a.put("android:changeScroll:x", Integer.valueOf(wVar.b.getScrollX()));
        wVar.a.put("android:changeScroll:y", Integer.valueOf(wVar.b.getScrollY()));
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
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2 = null;
        if (wVar == null || wVar2 == null) {
            return null;
        }
        View view = wVar2.b;
        int intValue = ((Integer) wVar.a.get("android:changeScroll:x")).intValue();
        int intValue2 = ((Integer) wVar2.a.get("android:changeScroll:x")).intValue();
        int intValue3 = ((Integer) wVar.a.get("android:changeScroll:y")).intValue();
        int intValue4 = ((Integer) wVar2.a.get("android:changeScroll:y")).intValue();
        if (intValue != intValue2) {
            view.setScrollX(intValue);
            objectAnimator = ObjectAnimator.ofInt(view, "scrollX", intValue, intValue2);
        } else {
            objectAnimator = null;
        }
        if (intValue3 != intValue4) {
            view.setScrollY(intValue3);
            objectAnimator2 = ObjectAnimator.ofInt(view, "scrollY", intValue3, intValue4);
        }
        return v.b(objectAnimator, objectAnimator2);
    }

    @Override // androidx.transition.Transition
    public String[] x() {
        return z;
    }

    public ChangeScroll(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
