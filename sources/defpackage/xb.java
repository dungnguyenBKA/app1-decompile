package defpackage;

/* renamed from: xb  reason: default package */
public class xb {
    private static float a(float f) {
        return f <= 0.04045f ? f / 12.92f : (float) Math.pow((double) ((f + 0.055f) / 1.055f), 2.4000000953674316d);
    }

    private static float b(float f) {
        return f <= 0.0031308f ? f * 12.92f : (float) ((Math.pow((double) f, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    public static int c(float f, int i, int i2) {
        if (i == i2) {
            return i;
        }
        float f2 = ((float) ((i >> 24) & 255)) / 255.0f;
        float a = a(((float) ((i >> 16) & 255)) / 255.0f);
        float a2 = a(((float) ((i >> 8) & 255)) / 255.0f);
        float a3 = a(((float) (i & 255)) / 255.0f);
        float a4 = a(((float) ((i2 >> 16) & 255)) / 255.0f);
        float a5 = a(((float) ((i2 >> 8) & 255)) / 255.0f);
        float a6 = a(((float) (i2 & 255)) / 255.0f);
        float a7 = ic.a(((float) ((i2 >> 24) & 255)) / 255.0f, f2, f, f2);
        float a8 = ic.a(a4, a, f, a);
        float a9 = ic.a(a5, a2, f, a2);
        float a10 = ic.a(a6, a3, f, a3);
        int round = Math.round(b(a8) * 255.0f) << 16;
        return Math.round(b(a10) * 255.0f) | round | (Math.round(a7 * 255.0f) << 24) | (Math.round(b(a9) * 255.0f) << 8);
    }
}
