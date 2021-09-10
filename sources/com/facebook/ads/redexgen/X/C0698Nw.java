package com.facebook.ads.redexgen.X;

/* renamed from: com.facebook.ads.redexgen.X.Nw  reason: case insensitive filesystem */
public final class C0698Nw {
    public static final int A00 = C0632Lh.A02.heightPixels;
    public static final int A01 = C0632Lh.A02.widthPixels;

    public static float A00(AnonymousClass19 r2) {
        int A012 = r2.A0E().A01();
        int height = r2.A0E().A00();
        if (height > 0) {
            return ((float) A012) / ((float) height);
        }
        return -1.0f;
    }

    public static int A01(double d) {
        return (int) (((double) (A01 - (AbstractC0699Nx.A08 * 2))) / d);
    }

    public static int A02(int ctaTextHeight) {
        return (A00 - ctaTextHeight) - ((C0632Lh.A01(16) + (C0688Nm.A0B * 2)) + (AbstractC0699Nx.A08 * 2));
    }

    public static boolean A03(double d) {
        return d < 0.9d;
    }

    public static boolean A04(double d, int i) {
        return A02(i) < A01(d);
    }

    public static boolean A05(int i, int i2, double d) {
        return i == 2 || A04(d, i2);
    }
}
