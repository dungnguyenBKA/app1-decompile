package defpackage;

import android.content.Context;
import android.os.Handler;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import defpackage.xo;

/* renamed from: cp  reason: default package */
public class cp {
    private final Context a;
    private final a b;
    private float c;
    private float d;
    private boolean e;
    private boolean f;
    private float g;
    private float h;
    private float i;
    private float j;
    private float k;
    private long l;
    private boolean m;
    private int n;
    private int o;
    private final Handler p;
    private float q;
    private float r;
    private int s = 0;
    private GestureDetector t;
    private boolean u;

    /* renamed from: cp$a */
    public interface a {
    }

    public cp(Context context, a aVar) {
        this.a = context;
        this.b = aVar;
        this.n = ViewConfiguration.get(context).getScaledTouchSlop() * 2;
        this.o = 2;
        this.p = null;
        int i2 = context.getApplicationInfo().targetSdkVersion;
        if (i2 > 18) {
            this.e = true;
            if (this.t == null) {
                this.t = new GestureDetector(context, new bp(this), null);
            }
        }
        if (i2 > 22) {
            this.f = true;
        }
    }

    private boolean e() {
        return this.s != 0;
    }

    public float d() {
        if (e()) {
            boolean z = this.u;
            boolean z2 = (z && this.g < this.h) || (!z && this.g > this.h);
            float abs = Math.abs(1.0f - (this.g / this.h)) * 0.5f;
            if (this.h <= ((float) this.n)) {
                return 1.0f;
            }
            return z2 ? 1.0f + abs : 1.0f - abs;
        }
        float f2 = this.h;
        if (f2 > 0.0f) {
            return this.g / f2;
        }
        return 1.0f;
    }

    public boolean f(MotionEvent motionEvent) {
        float f2;
        float f3;
        float f4;
        this.l = motionEvent.getEventTime();
        int actionMasked = motionEvent.getActionMasked();
        if (this.e) {
            this.t.onTouchEvent(motionEvent);
        }
        int pointerCount = motionEvent.getPointerCount();
        boolean z = (motionEvent.getButtonState() & 32) != 0;
        boolean z2 = this.s == 2 && !z;
        boolean z3 = actionMasked == 1 || actionMasked == 3 || z2;
        float f5 = 0.0f;
        if (actionMasked == 0 || z3) {
            if (this.m) {
                xo.this.i.d();
                this.m = false;
                this.i = 0.0f;
                this.s = 0;
            } else if (e() && z3) {
                this.m = false;
                this.i = 0.0f;
                this.s = 0;
            }
            if (z3) {
                return true;
            }
        }
        if (!this.m && this.f && !e() && !z3 && z) {
            this.q = motionEvent.getX();
            this.r = motionEvent.getY();
            this.s = 2;
            this.i = 0.0f;
        }
        boolean z4 = actionMasked == 0 || actionMasked == 6 || actionMasked == 5 || z2;
        boolean z5 = actionMasked == 6;
        int actionIndex = z5 ? motionEvent.getActionIndex() : -1;
        int i2 = z5 ? pointerCount - 1 : pointerCount;
        if (e()) {
            f3 = this.q;
            f2 = this.r;
            if (motionEvent.getY() < f2) {
                this.u = true;
            } else {
                this.u = false;
            }
        } else {
            float f6 = 0.0f;
            float f7 = 0.0f;
            for (int i3 = 0; i3 < pointerCount; i3++) {
                if (actionIndex != i3) {
                    f6 += motionEvent.getX(i3);
                    f7 += motionEvent.getY(i3);
                }
            }
            float f8 = (float) i2;
            float f9 = f6 / f8;
            f2 = f7 / f8;
            f3 = f9;
        }
        float f10 = 0.0f;
        for (int i4 = 0; i4 < pointerCount; i4++) {
            if (actionIndex != i4) {
                float abs = Math.abs(motionEvent.getX(i4) - f3) + f5;
                f10 = Math.abs(motionEvent.getY(i4) - f2) + f10;
                f5 = abs;
            }
        }
        float f11 = (float) i2;
        float f12 = (f5 / f11) * 2.0f;
        float f13 = (f10 / f11) * 2.0f;
        if (e()) {
            f4 = f13;
        } else {
            f4 = (float) Math.hypot((double) f12, (double) f13);
        }
        boolean z6 = this.m;
        this.c = f3;
        this.d = f2;
        if (!e() && this.m && (f4 < ((float) this.o) || z4)) {
            xo.this.i.d();
            this.m = false;
            this.i = f4;
        }
        if (z4) {
            this.j = f12;
            this.k = f13;
            this.g = f4;
            this.h = f4;
            this.i = f4;
        }
        int i5 = e() ? this.n : this.o;
        if (!this.m && f4 >= ((float) i5) && (z6 || Math.abs(f4 - this.i) > ((float) this.n))) {
            this.j = f12;
            this.k = f13;
            this.g = f4;
            this.h = f4;
            xo.this.i.e();
            this.m = true;
        }
        if (actionMasked == 2) {
            this.j = f12;
            this.k = f13;
            this.g = f4;
            if (this.m) {
                xo.a aVar = (xo.a) this.b;
                if (xo.this.p.getPointerCount() != 1) {
                    xo xoVar = xo.this;
                    xoVar.i.c(xoVar.p, d(), this.c, this.d);
                }
            }
            this.h = this.g;
        }
        return true;
    }
}
