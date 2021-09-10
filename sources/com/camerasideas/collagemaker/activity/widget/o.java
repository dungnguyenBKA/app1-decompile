package com.camerasideas.collagemaker.activity.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.TargetApi;
import android.view.animation.Interpolator;
import com.camerasideas.collagemaker.activity.widget.CustomTabLayout;
import com.camerasideas.collagemaker.activity.widget.n;
import com.vungle.warren.error.VungleException;
import java.util.Objects;

@TargetApi(VungleException.NO_AUTO_CACHED_PLACEMENT)
class o extends n.f {
    private final ValueAnimator a = new ValueAnimator();

    class a implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ n.f.b a;

        a(o oVar, n.f.b bVar) {
            this.a = bVar;
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            n.a aVar = (n.a) this.a;
            aVar.a.a(n.this);
        }
    }

    class b extends AnimatorListenerAdapter {
        final /* synthetic */ n.f.a a;

        b(o oVar, n.f.a aVar) {
            this.a = aVar;
        }

        public void onAnimationCancel(Animator animator) {
            Objects.requireNonNull((n.d) ((n.b) this.a).a);
        }

        public void onAnimationEnd(Animator animator) {
            CustomTabLayout.c.a aVar = (CustomTabLayout.c.a) ((n.b) this.a).a;
            CustomTabLayout.c cVar = CustomTabLayout.c.this;
            cVar.e = aVar.a;
            cVar.f = 0.0f;
        }

        public void onAnimationStart(Animator animator) {
            Objects.requireNonNull((n.d) ((n.b) this.a).a);
        }
    }

    o() {
    }

    @Override // com.camerasideas.collagemaker.activity.widget.n.f
    public void a(n.f.a aVar) {
        this.a.addListener(new b(this, aVar));
    }

    @Override // com.camerasideas.collagemaker.activity.widget.n.f
    public void b(n.f.b bVar) {
        this.a.addUpdateListener(new a(this, bVar));
    }

    @Override // com.camerasideas.collagemaker.activity.widget.n.f
    public void c() {
        this.a.cancel();
    }

    @Override // com.camerasideas.collagemaker.activity.widget.n.f
    public float d() {
        return this.a.getAnimatedFraction();
    }

    @Override // com.camerasideas.collagemaker.activity.widget.n.f
    public int e() {
        return ((Integer) this.a.getAnimatedValue()).intValue();
    }

    @Override // com.camerasideas.collagemaker.activity.widget.n.f
    public long f() {
        return this.a.getDuration();
    }

    @Override // com.camerasideas.collagemaker.activity.widget.n.f
    public boolean g() {
        return this.a.isRunning();
    }

    @Override // com.camerasideas.collagemaker.activity.widget.n.f
    public void h(long j) {
        this.a.setDuration(j);
    }

    @Override // com.camerasideas.collagemaker.activity.widget.n.f
    public void i(float f, float f2) {
        this.a.setFloatValues(f, f2);
    }

    @Override // com.camerasideas.collagemaker.activity.widget.n.f
    public void j(int i, int i2) {
        this.a.setIntValues(i, i2);
    }

    @Override // com.camerasideas.collagemaker.activity.widget.n.f
    public void k(Interpolator interpolator) {
        this.a.setInterpolator(interpolator);
    }

    @Override // com.camerasideas.collagemaker.activity.widget.n.f
    public void l() {
        this.a.start();
    }
}
