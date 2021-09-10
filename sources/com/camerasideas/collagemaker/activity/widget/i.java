package com.camerasideas.collagemaker.activity.widget;

import android.animation.ValueAnimator;
import com.camerasideas.collagemaker.activity.widget.DampLayout;
import org.apache.http.HttpStatus;

class i implements ValueAnimator.AnimatorUpdateListener {
    final /* synthetic */ DampLayout.b a;

    i(DampLayout.b bVar) {
        this.a = bVar;
    }

    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        DampLayout.this.scrollTo(0, (int) ((Float) this.a.getAnimatedValue()).floatValue());
        if (DampLayout.this.getScrollY() > 200 && !DampLayout.b.b(this.a).canScrollVertically(-1)) {
            DampLayout.this.scrollTo(0, HttpStatus.SC_OK);
        }
        if (DampLayout.this.getScrollY() < 200 && !DampLayout.b.b(this.a).canScrollVertically(1)) {
            DampLayout.this.scrollTo(0, HttpStatus.SC_OK);
        }
    }
}
