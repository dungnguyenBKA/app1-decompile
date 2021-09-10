package defpackage;

import android.view.Choreographer;
import com.airbnb.lottie.b;
import com.airbnb.lottie.e;

/* renamed from: ac  reason: default package */
public class ac extends wb implements Choreographer.FrameCallback {
    private float d = 1.0f;
    private boolean e = false;
    private long f = 0;
    private float g = 0.0f;
    private int h = 0;
    private float i = -2.14748365E9f;
    private float j = 2.14748365E9f;
    private e k;
    protected boolean l = false;

    private boolean l() {
        return this.d < 0.0f;
    }

    public void cancel() {
        a();
        q();
    }

    public void doFrame(long j2) {
        p();
        e eVar = this.k;
        if (eVar != null && this.l) {
            long j3 = this.f;
            long j4 = 0;
            if (j3 != 0) {
                j4 = j2 - j3;
            }
            float h2 = ((float) j4) / ((1.0E9f / eVar.h()) / Math.abs(this.d));
            float f2 = this.g;
            if (l()) {
                h2 = -h2;
            }
            float f3 = f2 + h2;
            this.g = f3;
            float j5 = j();
            float i2 = i();
            int i3 = cc.b;
            boolean z = !(f3 >= j5 && f3 <= i2);
            this.g = cc.b(this.g, j(), i());
            this.f = j2;
            e();
            if (z) {
                if (getRepeatCount() == -1 || this.h < getRepeatCount()) {
                    c();
                    this.h++;
                    if (getRepeatMode() == 2) {
                        this.e = !this.e;
                        this.d = -this.d;
                    } else {
                        this.g = l() ? i() : j();
                    }
                    this.f = j2;
                } else {
                    this.g = this.d < 0.0f ? j() : i();
                    q();
                    b(l());
                }
            }
            if (this.k != null) {
                float f4 = this.g;
                if (f4 < this.i || f4 > this.j) {
                    throw new IllegalStateException(String.format("Frame must be [%f,%f]. It is %f", Float.valueOf(this.i), Float.valueOf(this.j), Float.valueOf(this.g)));
                }
            }
            b.a("LottieValueAnimator#doFrame");
        }
    }

    public void f() {
        this.k = null;
        this.i = -2.14748365E9f;
        this.j = 2.14748365E9f;
    }

    public void g() {
        q();
        b(l());
    }

    public float getAnimatedFraction() {
        float j2;
        float i2;
        float j3;
        if (this.k == null) {
            return 0.0f;
        }
        if (l()) {
            j2 = i() - this.g;
            i2 = i();
            j3 = j();
        } else {
            j2 = this.g - j();
            i2 = i();
            j3 = j();
        }
        return j2 / (i2 - j3);
    }

    public Object getAnimatedValue() {
        return Float.valueOf(h());
    }

    public long getDuration() {
        e eVar = this.k;
        if (eVar == null) {
            return 0;
        }
        return (long) eVar.d();
    }

    public float h() {
        e eVar = this.k;
        if (eVar == null) {
            return 0.0f;
        }
        return (this.g - eVar.n()) / (this.k.f() - this.k.n());
    }

    public float i() {
        e eVar = this.k;
        if (eVar == null) {
            return 0.0f;
        }
        float f2 = this.j;
        return f2 == 2.14748365E9f ? eVar.f() : f2;
    }

    public boolean isRunning() {
        return this.l;
    }

    public float j() {
        e eVar = this.k;
        if (eVar == null) {
            return 0.0f;
        }
        float f2 = this.i;
        return f2 == -2.14748365E9f ? eVar.n() : f2;
    }

    public float k() {
        return this.d;
    }

    public void m() {
        q();
    }

    public void n() {
        this.l = true;
        d(l());
        t((float) ((int) (l() ? i() : j())));
        this.f = 0;
        this.h = 0;
        p();
    }

    /* access modifiers changed from: protected */
    public void p() {
        if (this.l) {
            Choreographer.getInstance().removeFrameCallback(this);
            Choreographer.getInstance().postFrameCallback(this);
        }
    }

    /* access modifiers changed from: protected */
    public void q() {
        Choreographer.getInstance().removeFrameCallback(this);
        this.l = false;
    }

    public void r() {
        this.l = true;
        p();
        this.f = 0;
        if (l() && this.g == j()) {
            this.g = i();
        } else if (!l() && this.g == i()) {
            this.g = j();
        }
    }

    public void s(e eVar) {
        boolean z = this.k == null;
        this.k = eVar;
        if (z) {
            u((float) ((int) Math.max(this.i, eVar.n())), (float) ((int) Math.min(this.j, eVar.f())));
        } else {
            u((float) ((int) eVar.n()), (float) ((int) eVar.f()));
        }
        float f2 = this.g;
        this.g = 0.0f;
        t((float) ((int) f2));
        e();
    }

    public void setRepeatMode(int i2) {
        super.setRepeatMode(i2);
        if (i2 != 2 && this.e) {
            this.e = false;
            this.d = -this.d;
        }
    }

    public void t(float f2) {
        if (this.g != f2) {
            this.g = cc.b(f2, j(), i());
            this.f = 0;
            e();
        }
    }

    public void u(float f2, float f3) {
        if (f2 <= f3) {
            e eVar = this.k;
            float n = eVar == null ? -3.4028235E38f : eVar.n();
            e eVar2 = this.k;
            float f4 = eVar2 == null ? Float.MAX_VALUE : eVar2.f();
            this.i = cc.b(f2, n, f4);
            this.j = cc.b(f3, n, f4);
            t((float) ((int) cc.b(this.g, f2, f3)));
            return;
        }
        throw new IllegalArgumentException(String.format("minFrame (%s) must be <= maxFrame (%s)", Float.valueOf(f2), Float.valueOf(f3)));
    }

    public void v(float f2) {
        this.d = f2;
    }
}
