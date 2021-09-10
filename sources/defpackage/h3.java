package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* renamed from: h3  reason: default package */
public final class h3 {
    private WeakReference<View> a;
    int b = -1;

    /* access modifiers changed from: package-private */
    /* renamed from: h3$a */
    public class a extends AnimatorListenerAdapter {
        final /* synthetic */ i3 a;
        final /* synthetic */ View b;

        a(h3 h3Var, i3 i3Var, View view) {
            this.a = i3Var;
            this.b = view;
        }

        public void onAnimationCancel(Animator animator) {
            this.a.a(this.b);
        }

        public void onAnimationEnd(Animator animator) {
            this.a.b(this.b);
        }

        public void onAnimationStart(Animator animator) {
            this.a.c(this.b);
        }
    }

    /* access modifiers changed from: package-private */
    /* renamed from: h3$b */
    public class b implements ValueAnimator.AnimatorUpdateListener {
        final /* synthetic */ k3 a;
        final /* synthetic */ View b;

        b(h3 h3Var, k3 k3Var, View view) {
            this.a = k3Var;
            this.b = view;
        }

        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.a.a(this.b);
        }
    }

    h3(View view) {
        this.a = new WeakReference<>(view);
    }

    private void g(View view, i3 i3Var) {
        if (i3Var != null) {
            view.animate().setListener(new a(this, i3Var, view));
        } else {
            view.animate().setListener(null);
        }
    }

    public h3 a(float f) {
        View view = this.a.get();
        if (view != null) {
            view.animate().alpha(f);
        }
        return this;
    }

    public void b() {
        View view = this.a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public long c() {
        View view = this.a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0;
    }

    public h3 d(long j) {
        View view = this.a.get();
        if (view != null) {
            view.animate().setDuration(j);
        }
        return this;
    }

    public h3 e(Interpolator interpolator) {
        View view = this.a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public h3 f(i3 i3Var) {
        View view = this.a.get();
        if (view != null) {
            g(view, i3Var);
        }
        return this;
    }

    public h3 h(long j) {
        View view = this.a.get();
        if (view != null) {
            view.animate().setStartDelay(j);
        }
        return this;
    }

    public h3 i(k3 k3Var) {
        View view = this.a.get();
        if (view != null) {
            b bVar = null;
            if (k3Var != null) {
                bVar = new b(this, k3Var, view);
            }
            view.animate().setUpdateListener(bVar);
        }
        return this;
    }

    public void j() {
        View view = this.a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public h3 k(float f) {
        View view = this.a.get();
        if (view != null) {
            view.animate().translationY(f);
        }
        return this;
    }
}
