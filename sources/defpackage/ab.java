package defpackage;

import android.graphics.PointF;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.airbnb.lottie.e;
import com.google.ads.ADRequestList;
import defpackage.ub;
import java.lang.ref.WeakReference;

/* renamed from: ab  reason: default package */
class ab {
    private static final Interpolator a = new LinearInterpolator();
    private static f0<WeakReference<Interpolator>> b;
    static ub.a c = ub.a.a("t", ADRequestList.SELF, "e", "o", "i", ADRequestList.ORDER_H, "to", "ti");

    ab() {
    }

    static <T> ec<T> a(ub ubVar, e eVar, float f, rb<T> rbVar, boolean z) {
        T t;
        WeakReference<Interpolator> f2;
        Interpolator interpolator;
        if (!z) {
            return new ec<>(rbVar.a(ubVar, f));
        }
        ubVar.L();
        Interpolator interpolator2 = null;
        int i = 1;
        PointF pointF = null;
        PointF pointF2 = null;
        T t2 = null;
        T t3 = null;
        PointF pointF3 = null;
        PointF pointF4 = null;
        boolean z2 = false;
        float f3 = 0.0f;
        while (ubVar.b0()) {
            switch (ubVar.q0(c)) {
                case 0:
                    f3 = (float) ubVar.j0();
                    break;
                case 1:
                    t3 = rbVar.a(ubVar, f);
                    continue;
                case 2:
                    t2 = rbVar.a(ubVar, f);
                    continue;
                case 3:
                    pointF = za.b(ubVar, f);
                    continue;
                case 4:
                    pointF2 = za.b(ubVar, f);
                    continue;
                case 5:
                    if (ubVar.k0() == i) {
                        z2 = true;
                        continue;
                    } else {
                        z2 = false;
                    }
                case 6:
                    pointF4 = za.b(ubVar, f);
                    continue;
                case 7:
                    pointF3 = za.b(ubVar, f);
                    continue;
                default:
                    ubVar.s0();
                    break;
            }
            i = 1;
        }
        ubVar.V();
        if (z2) {
            interpolator2 = a;
            t = t3;
        } else {
            if (pointF == null || pointF2 == null) {
                interpolator2 = a;
            } else {
                float f4 = -f;
                pointF.x = cc.b(pointF.x, f4, f);
                pointF.y = cc.b(pointF.y, -100.0f, 100.0f);
                pointF2.x = cc.b(pointF2.x, f4, f);
                float b2 = cc.b(pointF2.y, -100.0f, 100.0f);
                pointF2.y = b2;
                float f5 = pointF.x;
                float f6 = pointF.y;
                float f7 = pointF2.x;
                int i2 = dc.g;
                int i3 = f5 != 0.0f ? (int) (((float) 527) * f5) : 17;
                if (f6 != 0.0f) {
                    i3 = (int) (((float) (i3 * 31)) * f6);
                }
                if (f7 != 0.0f) {
                    i3 = (int) (((float) (i3 * 31)) * f7);
                }
                if (b2 != 0.0f) {
                    i3 = (int) (((float) (i3 * 31)) * b2);
                }
                synchronized (ab.class) {
                    if (b == null) {
                        b = new f0<>(10);
                    }
                    f2 = b.f(i3, null);
                }
                if (f2 != null) {
                    interpolator2 = f2.get();
                }
                if (f2 == null || interpolator2 == null) {
                    pointF.x /= f;
                    pointF.y /= f;
                    float f8 = pointF2.x / f;
                    pointF2.x = f8;
                    float f9 = pointF2.y / f;
                    pointF2.y = f9;
                    try {
                        interpolator = r3.a(pointF.x, pointF.y, f8, f9);
                    } catch (IllegalArgumentException e) {
                        if (e.getMessage().equals("The Path cannot loop back on itself.")) {
                            interpolator = r3.a(Math.min(pointF.x, 1.0f), pointF.y, Math.max(pointF2.x, 0.0f), pointF2.y);
                        } else {
                            interpolator = new LinearInterpolator();
                        }
                    }
                    interpolator2 = interpolator;
                    try {
                        WeakReference<Interpolator> weakReference = new WeakReference<>(interpolator2);
                        synchronized (ab.class) {
                            b.j(i3, weakReference);
                        }
                    } catch (ArrayIndexOutOfBoundsException unused) {
                    }
                }
            }
            t = t2;
        }
        ec<T> ecVar = new ec<>(eVar, t3, t, interpolator2, f3, null);
        ecVar.m = pointF4;
        ecVar.n = pointF3;
        return ecVar;
    }
}
