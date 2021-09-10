package defpackage;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.os.Build;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* renamed from: wb  reason: default package */
public abstract class wb extends ValueAnimator {
    private final Set<ValueAnimator.AnimatorUpdateListener> b = new CopyOnWriteArraySet();
    private final Set<Animator.AnimatorListener> c = new CopyOnWriteArraySet();

    /* access modifiers changed from: package-private */
    public void a() {
        for (Animator.AnimatorListener animatorListener : this.c) {
            animatorListener.onAnimationCancel(this);
        }
    }

    public void addListener(Animator.AnimatorListener animatorListener) {
        this.c.add(animatorListener);
    }

    public void addUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.b.add(animatorUpdateListener);
    }

    /* access modifiers changed from: package-private */
    public void b(boolean z) {
        for (Animator.AnimatorListener animatorListener : this.c) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationEnd(this, z);
            } else {
                animatorListener.onAnimationEnd(this);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void c() {
        for (Animator.AnimatorListener animatorListener : this.c) {
            animatorListener.onAnimationRepeat(this);
        }
    }

    /* access modifiers changed from: package-private */
    public void d(boolean z) {
        for (Animator.AnimatorListener animatorListener : this.c) {
            if (Build.VERSION.SDK_INT >= 26) {
                animatorListener.onAnimationStart(this, z);
            } else {
                animatorListener.onAnimationStart(this);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void e() {
        for (ValueAnimator.AnimatorUpdateListener animatorUpdateListener : this.b) {
            animatorUpdateListener.onAnimationUpdate(this);
        }
    }

    public long getStartDelay() {
        throw new UnsupportedOperationException("LottieAnimator does not support getStartDelay.");
    }

    public void removeAllListeners() {
        this.c.clear();
    }

    public void removeAllUpdateListeners() {
        this.b.clear();
    }

    public void removeListener(Animator.AnimatorListener animatorListener) {
        this.c.remove(animatorListener);
    }

    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.b.remove(animatorUpdateListener);
    }

    public void setInterpolator(TimeInterpolator timeInterpolator) {
        throw new UnsupportedOperationException("LottieAnimator does not support setInterpolator.");
    }

    public void setStartDelay(long j) {
        throw new UnsupportedOperationException("LottieAnimator does not support setStartDelay.");
    }

    @Override // android.animation.ValueAnimator, android.animation.ValueAnimator
    public ValueAnimator setDuration(long j) {
        throw new UnsupportedOperationException("LottieAnimator does not support setDuration.");
    }
}
