package defpackage;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;

/* renamed from: qx  reason: default package */
public class qx {
    private long a = 0;
    private long b = 300;
    private TimeInterpolator c = null;
    private int d = 0;
    private int e = 1;

    public qx(long j, long j2) {
        this.a = j;
        this.b = j2;
    }

    static qx b(ValueAnimator valueAnimator) {
        long startDelay = valueAnimator.getStartDelay();
        long duration = valueAnimator.getDuration();
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            interpolator = jx.b;
        } else if (interpolator instanceof AccelerateInterpolator) {
            interpolator = jx.c;
        } else if (interpolator instanceof DecelerateInterpolator) {
            interpolator = jx.d;
        }
        qx qxVar = new qx(startDelay, duration, interpolator);
        qxVar.d = valueAnimator.getRepeatCount();
        qxVar.e = valueAnimator.getRepeatMode();
        return qxVar;
    }

    public void a(Animator animator) {
        animator.setStartDelay(this.a);
        animator.setDuration(this.b);
        animator.setInterpolator(e());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.d);
            valueAnimator.setRepeatMode(this.e);
        }
    }

    public long c() {
        return this.a;
    }

    public long d() {
        return this.b;
    }

    public TimeInterpolator e() {
        TimeInterpolator timeInterpolator = this.c;
        return timeInterpolator != null ? timeInterpolator : jx.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qx)) {
            return false;
        }
        qx qxVar = (qx) obj;
        if (this.a == qxVar.a && this.b == qxVar.b && this.d == qxVar.d && this.e == qxVar.e) {
            return e().getClass().equals(qxVar.e().getClass());
        }
        return false;
    }

    public int hashCode() {
        long j = this.a;
        long j2 = this.b;
        return ((((e().getClass().hashCode() + (((((int) (j ^ (j >>> 32))) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31)) * 31) + this.d) * 31) + this.e;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('\n');
        sb.append(qx.class.getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" delay: ");
        sb.append(this.a);
        sb.append(" duration: ");
        sb.append(this.b);
        sb.append(" interpolator: ");
        sb.append(e().getClass());
        sb.append(" repeatCount: ");
        sb.append(this.d);
        sb.append(" repeatMode: ");
        return ic.k(sb, this.e, "}\n");
    }

    public qx(long j, long j2, TimeInterpolator timeInterpolator) {
        this.a = j;
        this.b = j2;
        this.c = timeInterpolator;
    }
}
