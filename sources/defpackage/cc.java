package defpackage;

import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

/* renamed from: cc  reason: default package */
public class cc {
    private static PointF a = new PointF();
    public static final /* synthetic */ int b = 0;

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float b(float f, float f2, float f3) {
        return Math.max(f2, Math.min(f3, f));
    }

    public static int c(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    static int d(float f, float f2) {
        int i = (int) f;
        int i2 = (int) f2;
        int i3 = i / i2;
        int i4 = i % i2;
        if (!((i ^ i2) >= 0) && i4 != 0) {
            i3--;
        }
        return i - (i2 * i3);
    }

    public static void e(s9 s9Var, Path path) {
        path.reset();
        PointF b2 = s9Var.b();
        path.moveTo(b2.x, b2.y);
        a.set(b2.x, b2.y);
        for (int i = 0; i < s9Var.a().size(); i++) {
            k8 k8Var = s9Var.a().get(i);
            PointF a2 = k8Var.a();
            PointF b3 = k8Var.b();
            PointF c = k8Var.c();
            if (!a2.equals(a) || !b3.equals(c)) {
                path.cubicTo(a2.x, a2.y, b3.x, b3.y, c.x, c.y);
            } else {
                path.lineTo(c.x, c.y);
            }
            a.set(c.x, c.y);
        }
        if (s9Var.d()) {
            path.close();
        }
    }

    public static float f(float f, float f2, float f3) {
        return ic.a(f2, f, f3, f);
    }

    public static void g(o8 o8Var, int i, List<o8> list, o8 o8Var2, j7 j7Var) {
        if (o8Var.c(j7Var.getName(), i)) {
            list.add(o8Var2.a(j7Var.getName()).h(j7Var));
        }
    }
}
