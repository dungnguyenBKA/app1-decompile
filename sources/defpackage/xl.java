package defpackage;

import android.os.Build;

/* renamed from: xl  reason: default package */
public class xl {
    public static final boolean a;
    public static final boolean b;
    public static final boolean c;
    public static final boolean d;
    public static final boolean e = true;
    public static final boolean f = true;
    public static final boolean g = true;
    public static final boolean h = true;
    public static final boolean i = true;
    public static final boolean j = true;
    public static final boolean k = true;

    static {
        int i2 = Build.VERSION.SDK_INT;
        boolean z = false;
        boolean z2 = i2 >= 25;
        a = z2;
        boolean z3 = z2 || i2 >= 24;
        b = z3;
        boolean z4 = z3 || i2 >= 23;
        c = z4;
        if (z4 || i2 >= 21) {
            z = true;
        }
        d = z;
    }
}
