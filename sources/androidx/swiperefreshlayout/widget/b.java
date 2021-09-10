package androidx.swiperefreshlayout.widget;

import android.animation.ValueAnimator;
import androidx.swiperefreshlayout.widget.d;

/* access modifiers changed from: package-private */
public class b implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ d.a a;
    final /* synthetic */ d b;

    b(d dVar, d.a aVar) {
        this.b = dVar;
        this.a = aVar;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.b.h(floatValue, this.a);
        this.b.a(floatValue, this.a, false);
        this.b.invalidateSelf();
    }
}
