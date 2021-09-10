package defpackage;

import android.graphics.Color;

/* renamed from: k1  reason: default package */
public final class k1 {
    private static final ThreadLocal<double[]> a = new ThreadLocal<>();

    public static double a(int i) {
        double d;
        double d2;
        double d3;
        ThreadLocal<double[]> threadLocal = a;
        double[] dArr = threadLocal.get();
        if (dArr == null) {
            dArr = new double[3];
            threadLocal.set(dArr);
        }
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        if (dArr.length == 3) {
            double d4 = (double) red;
            Double.isNaN(d4);
            Double.isNaN(d4);
            Double.isNaN(d4);
            double d5 = d4 / 255.0d;
            if (d5 < 0.04045d) {
                d = d5 / 12.92d;
            } else {
                d = Math.pow((d5 + 0.055d) / 1.055d, 2.4d);
            }
            double d6 = (double) green;
            Double.isNaN(d6);
            Double.isNaN(d6);
            Double.isNaN(d6);
            double d7 = d6 / 255.0d;
            if (d7 < 0.04045d) {
                d2 = d7 / 12.92d;
            } else {
                d2 = Math.pow((d7 + 0.055d) / 1.055d, 2.4d);
            }
            double d8 = (double) blue;
            Double.isNaN(d8);
            Double.isNaN(d8);
            Double.isNaN(d8);
            double d9 = d8 / 255.0d;
            if (d9 < 0.04045d) {
                d3 = d9 / 12.92d;
            } else {
                d3 = Math.pow((d9 + 0.055d) / 1.055d, 2.4d);
            }
            dArr[0] = ((0.1805d * d3) + (0.3576d * d2) + (0.4124d * d)) * 100.0d;
            dArr[1] = ((0.0722d * d3) + (0.7152d * d2) + (0.2126d * d)) * 100.0d;
            double d10 = d3 * 0.9505d;
            dArr[2] = (d10 + (d2 * 0.1192d) + (d * 0.0193d)) * 100.0d;
            return dArr[1] / 100.0d;
        }
        throw new IllegalArgumentException("outXyz must have a length of 3.");
    }

    public static int b(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int i3 = 255 - (((255 - alpha2) * (255 - alpha)) / 255);
        return Color.argb(i3, c(Color.red(i), alpha2, Color.red(i2), alpha, i3), c(Color.green(i), alpha2, Color.green(i2), alpha, i3), c(Color.blue(i), alpha2, Color.blue(i2), alpha, i3));
    }

    private static int c(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((255 - i2) * (i3 * i4)) + ((i * 255) * i2)) / (i5 * 255);
    }

    public static int d(int i, int i2) {
        if (i2 >= 0 && i2 <= 255) {
            return (i & 16777215) | (i2 << 24);
        }
        throw new IllegalArgumentException("alpha must be between 0 and 255.");
    }
}
