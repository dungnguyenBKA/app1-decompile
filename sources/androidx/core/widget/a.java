package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import java.util.Objects;
import org.apache.http.HttpStatus;

public abstract class a implements View.OnTouchListener {
    private static final int r = ViewConfiguration.getTapTimeout();
    final C0012a b;
    private final Interpolator c = new AccelerateInterpolator();
    final View d;
    private Runnable e;
    private float[] f = {0.0f, 0.0f};
    private float[] g = {Float.MAX_VALUE, Float.MAX_VALUE};
    private int h;
    private int i;
    private float[] j = {0.0f, 0.0f};
    private float[] k = {0.0f, 0.0f};
    private float[] l = {Float.MAX_VALUE, Float.MAX_VALUE};
    private boolean m;
    boolean n;
    boolean o;
    boolean p;
    private boolean q;

    /* access modifiers changed from: private */
    /* renamed from: androidx.core.widget.a$a  reason: collision with other inner class name */
    public static class C0012a {
        private int a;
        private int b;
        private float c;
        private float d;
        private long e = Long.MIN_VALUE;
        private long f = 0;
        private int g = 0;
        private int h = 0;
        private long i = -1;
        private float j;
        private int k;

        C0012a() {
        }

        private float e(long j2) {
            long j3 = this.e;
            if (j2 < j3) {
                return 0.0f;
            }
            long j4 = this.i;
            if (j4 < 0 || j2 < j4) {
                return a.c(((float) (j2 - j3)) / ((float) this.a), 0.0f, 1.0f) * 0.5f;
            }
            float f2 = this.j;
            return (f2 * a.c(((float) (j2 - j4)) / ((float) this.k), 0.0f, 1.0f)) + (1.0f - f2);
        }

        public void a() {
            if (this.f != 0) {
                long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                float e2 = e(currentAnimationTimeMillis);
                this.f = currentAnimationTimeMillis;
                float f2 = ((float) (currentAnimationTimeMillis - this.f)) * ((e2 * 4.0f) + (-4.0f * e2 * e2));
                this.g = (int) (this.c * f2);
                this.h = (int) (f2 * this.d);
                return;
            }
            throw new RuntimeException("Cannot compute scroll delta before calling start()");
        }

        public int b() {
            return this.g;
        }

        public int c() {
            return this.h;
        }

        public int d() {
            float f2 = this.c;
            return (int) (f2 / Math.abs(f2));
        }

        public int f() {
            float f2 = this.d;
            return (int) (f2 / Math.abs(f2));
        }

        public boolean g() {
            return this.i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.i + ((long) this.k);
        }

        public void h() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            int i2 = (int) (currentAnimationTimeMillis - this.e);
            int i3 = this.b;
            if (i2 > i3) {
                i2 = i3;
            } else if (i2 < 0) {
                i2 = 0;
            }
            this.k = i2;
            this.j = e(currentAnimationTimeMillis);
            this.i = currentAnimationTimeMillis;
        }

        public void i(int i2) {
            this.b = i2;
        }

        public void j(int i2) {
            this.a = i2;
        }

        public void k(float f2, float f3) {
            this.c = f2;
            this.d = f3;
        }

        public void l() {
            long currentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.e = currentAnimationTimeMillis;
            this.i = -1;
            this.f = currentAnimationTimeMillis;
            this.j = 0.5f;
            this.g = 0;
            this.h = 0;
        }
    }

    /* access modifiers changed from: private */
    public class b implements Runnable {
        b() {
        }

        public void run() {
            a aVar = a.this;
            if (aVar.p) {
                if (aVar.n) {
                    aVar.n = false;
                    aVar.b.l();
                }
                C0012a aVar2 = a.this.b;
                if (aVar2.g() || !a.this.g()) {
                    a.this.p = false;
                    return;
                }
                a aVar3 = a.this;
                if (aVar3.o) {
                    aVar3.o = false;
                    Objects.requireNonNull(aVar3);
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0);
                    aVar3.d.onTouchEvent(obtain);
                    obtain.recycle();
                }
                aVar2.a();
                a.this.e(aVar2.b(), aVar2.c());
                View view = a.this.d;
                int i = c3.g;
                view.postOnAnimation(this);
            }
        }
    }

    public a(View view) {
        C0012a aVar = new C0012a();
        this.b = aVar;
        this.d = view;
        float f2 = Resources.getSystem().getDisplayMetrics().density;
        float[] fArr = this.l;
        float f3 = ((float) ((int) ((1575.0f * f2) + 0.5f))) / 1000.0f;
        fArr[0] = f3;
        fArr[1] = f3;
        float[] fArr2 = this.k;
        float f4 = ((float) ((int) ((f2 * 315.0f) + 0.5f))) / 1000.0f;
        fArr2[0] = f4;
        fArr2[1] = f4;
        this.h = 1;
        float[] fArr3 = this.g;
        fArr3[0] = Float.MAX_VALUE;
        fArr3[1] = Float.MAX_VALUE;
        float[] fArr4 = this.f;
        fArr4[0] = 0.2f;
        fArr4[1] = 0.2f;
        float[] fArr5 = this.j;
        fArr5[0] = 0.001f;
        fArr5[1] = 0.001f;
        this.i = r;
        aVar.j(HttpStatus.SC_INTERNAL_SERVER_ERROR);
        aVar.i(HttpStatus.SC_INTERNAL_SERVER_ERROR);
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x003e A[RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x003f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private float b(int r4, float r5, float r6, float r7) {
        /*
            r3 = this;
            float[] r0 = r3.f
            r0 = r0[r4]
            float[] r1 = r3.g
            r1 = r1[r4]
            float r0 = r0 * r6
            r2 = 0
            float r0 = c(r0, r2, r1)
            float r1 = r3.d(r5, r0)
            float r6 = r6 - r5
            float r5 = r3.d(r6, r0)
            float r5 = r5 - r1
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 >= 0) goto L_0x0026
            android.view.animation.Interpolator r6 = r3.c
            float r5 = -r5
            float r5 = r6.getInterpolation(r5)
            float r5 = -r5
            goto L_0x0030
        L_0x0026:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 <= 0) goto L_0x0039
            android.view.animation.Interpolator r6 = r3.c
            float r5 = r6.getInterpolation(r5)
        L_0x0030:
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r5 = c(r5, r6, r0)
            goto L_0x003a
        L_0x0039:
            r5 = 0
        L_0x003a:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 != 0) goto L_0x003f
            return r2
        L_0x003f:
            float[] r6 = r3.j
            r6 = r6[r4]
            float[] r0 = r3.k
            r0 = r0[r4]
            float[] r1 = r3.l
            r4 = r1[r4]
            float r6 = r6 * r7
            int r7 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r7 <= 0) goto L_0x0058
            float r5 = r5 * r6
            float r4 = c(r5, r0, r4)
            return r4
        L_0x0058:
            float r5 = -r5
            float r5 = r5 * r6
            float r4 = c(r5, r0, r4)
            float r4 = -r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.a.b(int, float, float, float):float");
    }

    static float c(float f2, float f3, float f4) {
        return f2 > f4 ? f4 : f2 < f3 ? f3 : f2;
    }

    private float d(float f2, float f3) {
        if (f3 == 0.0f) {
            return 0.0f;
        }
        int i2 = this.h;
        if (i2 == 0 || i2 == 1) {
            if (f2 < f3) {
                if (f2 >= 0.0f) {
                    return 1.0f - (f2 / f3);
                }
                return (!this.p || i2 != 1) ? 0.0f : 1.0f;
            }
        } else if (i2 == 2 && f2 < 0.0f) {
            return f2 / (-f3);
        }
    }

    public abstract boolean a(int i2);

    public abstract void e(int i2, int i3);

    public a f(boolean z) {
        if (this.q && !z) {
            if (this.n) {
                this.p = false;
            } else {
                this.b.h();
            }
        }
        this.q = z;
        return this;
    }

    /* access modifiers changed from: package-private */
    public boolean g() {
        C0012a aVar = this.b;
        int f2 = aVar.f();
        aVar.d();
        return f2 != 0 && a(f2);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0013, code lost:
        if (r0 != 3) goto L_0x0088;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
        // Method dump skipped, instructions count: 137
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
