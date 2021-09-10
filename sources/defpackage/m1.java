package defpackage;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import defpackage.e2;

@SuppressLint({"NewApi"})
/* renamed from: m1  reason: default package */
public class m1 {
    private static final s1 a;
    private static final c0<String, Typeface> b = new c0<>(16);

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            a = new r1();
        } else if (i >= 28) {
            a = new q1();
        } else if (i >= 26) {
            a = new p1();
        } else if (i >= 24 && o1.k()) {
            a = new o1();
        } else if (i >= 21) {
            a = new n1();
        } else {
            a = new s1();
        }
    }

    public static Typeface a(Context context, Typeface typeface, int i) {
        Typeface typeface2;
        if (context != null) {
            if (Build.VERSION.SDK_INT < 21) {
                s1 s1Var = a;
                f1 g = s1Var.g(typeface);
                if (g == null) {
                    typeface2 = null;
                } else {
                    typeface2 = s1Var.a(context, g, context.getResources(), i);
                }
                if (typeface2 != null) {
                    return typeface2;
                }
            }
            return Typeface.create(typeface, i);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface b(Context context, CancellationSignal cancellationSignal, e2.f[] fVarArr, int i) {
        return a.b(context, null, fVarArr, i);
    }

    public static Typeface c(Context context, e1 e1Var, Resources resources, int i, int i2, j1 j1Var, Handler handler, boolean z) {
        Typeface typeface;
        if (e1Var instanceof h1) {
            h1 h1Var = (h1) e1Var;
            typeface = e2.c(context, h1Var.b(), j1Var, handler, !z ? j1Var == null : h1Var.a() == 0, z ? h1Var.c() : -1, i2);
        } else {
            typeface = a.a(context, (f1) e1Var, resources, i2);
            if (j1Var != null) {
                if (typeface != null) {
                    j1Var.b(typeface, handler);
                } else {
                    j1Var.a(-3, handler);
                }
            }
        }
        if (typeface != null) {
            b.put(e(resources, i, i2), typeface);
        }
        return typeface;
    }

    public static Typeface d(Context context, Resources resources, int i, String str, int i2) {
        Typeface d = a.d(context, resources, i, str, i2);
        if (d != null) {
            b.put(e(resources, i, i2), d);
        }
        return d;
    }

    private static String e(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }

    public static Typeface f(Resources resources, int i, int i2) {
        return b.get(e(resources, i, i2));
    }
}
