package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.util.TypedValue;

/* access modifiers changed from: package-private */
public class d0 {
    private static final ThreadLocal<TypedValue> a = new ThreadLocal<>();
    static final int[] b = {-16842910};
    static final int[] c = {16842908};
    static final int[] d = {16842919};
    static final int[] e = {16842912};
    static final int[] f = new int[0];
    private static final int[] g = new int[1];

    public static int a(Context context, int i) {
        ColorStateList c2 = c(context, i);
        if (c2 != null && c2.isStateful()) {
            return c2.getColorForState(b, c2.getDefaultColor());
        }
        ThreadLocal<TypedValue> threadLocal = a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        context.getTheme().resolveAttribute(16842803, typedValue, true);
        float f2 = typedValue.getFloat();
        int b2 = b(context, i);
        return k1.d(b2, Math.round(((float) Color.alpha(b2)) * f2));
    }

    public static int b(Context context, int i) {
        int[] iArr = g;
        iArr[0] = i;
        i0 t = i0.t(context, null, iArr);
        try {
            return t.b(0, 0);
        } finally {
            t.v();
        }
    }

    public static ColorStateList c(Context context, int i) {
        int[] iArr = g;
        iArr[0] = i;
        i0 t = i0.t(context, null, iArr);
        try {
            return t.c(0);
        } finally {
            t.v();
        }
    }
}
