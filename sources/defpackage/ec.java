package defpackage;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import com.airbnb.lottie.e;

/* renamed from: ec  reason: default package */
public class ec<T> {
    private final e a;
    public final T b;
    public T c;
    public final Interpolator d;
    public final float e;
    public Float f;
    private float g;
    private float h;
    private int i;
    private int j;
    private float k;
    private float l;
    public PointF m;
    public PointF n;

    public ec(e eVar, T t, T t2, Interpolator interpolator, float f2, Float f3) {
        this.g = -3987645.8f;
        this.h = -3987645.8f;
        this.i = 784923401;
        this.j = 784923401;
        this.k = Float.MIN_VALUE;
        this.l = Float.MIN_VALUE;
        this.m = null;
        this.n = null;
        this.a = eVar;
        this.b = t;
        this.c = t2;
        this.d = interpolator;
        this.e = f2;
        this.f = f3;
    }

    public boolean a(float f2) {
        return f2 >= e() && f2 < b();
    }

    public float b() {
        if (this.a == null) {
            return 1.0f;
        }
        if (this.l == Float.MIN_VALUE) {
            if (this.f == null) {
                this.l = 1.0f;
            } else {
                this.l = ((this.f.floatValue() - this.e) / this.a.e()) + e();
            }
        }
        return this.l;
    }

    public float c() {
        if (this.h == -3987645.8f) {
            this.h = this.c.floatValue();
        }
        return this.h;
    }

    public int d() {
        if (this.j == 784923401) {
            this.j = this.c.intValue();
        }
        return this.j;
    }

    public float e() {
        e eVar = this.a;
        if (eVar == null) {
            return 0.0f;
        }
        if (this.k == Float.MIN_VALUE) {
            this.k = (this.e - eVar.n()) / this.a.e();
        }
        return this.k;
    }

    public float f() {
        if (this.g == -3987645.8f) {
            this.g = this.b.floatValue();
        }
        return this.g;
    }

    public int g() {
        if (this.i == 784923401) {
            this.i = this.b.intValue();
        }
        return this.i;
    }

    public boolean h() {
        return this.d == null;
    }

    public String toString() {
        StringBuilder q = ic.q("Keyframe{startValue=");
        q.append((Object) this.b);
        q.append(", endValue=");
        q.append((Object) this.c);
        q.append(", startFrame=");
        q.append(this.e);
        q.append(", endFrame=");
        q.append(this.f);
        q.append(", interpolator=");
        q.append(this.d);
        q.append('}');
        return q.toString();
    }

    public ec(T t) {
        this.g = -3987645.8f;
        this.h = -3987645.8f;
        this.i = 784923401;
        this.j = 784923401;
        this.k = Float.MIN_VALUE;
        this.l = Float.MIN_VALUE;
        this.m = null;
        this.n = null;
        this.a = null;
        this.b = t;
        this.c = t;
        this.d = null;
        this.e = Float.MIN_VALUE;
        this.f = Float.valueOf(Float.MAX_VALUE);
    }
}
